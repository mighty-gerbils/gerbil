(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g44677_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g44680_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g44681_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g44682_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g44683_|
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
      (lambda _%$args39926%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args39926%_)))
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
      (lambda _%$args39922%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args39922%_)))
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
      (lambda (_%stx39919%_)
        (if (gx#identifier? _%stx39919%_)
            (let ((__tmp44640 (gx#syntax-local-value _%stx39919%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp44640))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx39916%_)
        (if (gx#identifier? _%stx39916%_)
            (let ((__tmp44641 (gx#syntax-local-value _%stx39916%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp44641))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx39541%_)
        (let* ((_%__stx4416944170%_ _%stx39541%_)
               (_%g3954739610%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4416944170%_))))
          (let ((_%__kont4417244173%_
                 (lambda (_%L39893%_ _%L39895%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%L39895%_)
                    _%stx39541%_)))
                (_%__kont4417444175%_
                 (lambda (_%L39782%_ _%L39784%_ _%L39785%_)
                   (let* ((_%g3980739815%_
                           (lambda (_%g3980839811%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g3980839811%_)))
                          (_%g3980639842%_
                           (lambda (_%g3980839819%_)
                             ((lambda (_%L39822%_)
                                (cons _%L39822%_
                                      (foldr (lambda (_%g3983339836%_
                                                      _%g3983439839%_)
                                               (cons _%g3983339836%_
                                                     _%g3983439839%_))
                                             (cons _%L39782%_ '())
                                             _%L39784%_)))
                              _%g3980839819%_))))
                     (_%g3980639842%_
                      (gx#stx-identifier _%L39785%_ _%L39785%_ '"-set!")))))
                (_%__kont4417844179%_
                 (lambda (_%L39692%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%L39692%_)
                    _%stx39541%_)))
                (_%__kont4418044181%_
                 (lambda (_%L39647%_ _%L39649%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%L39649%_ (cons _%L39647%_ '()))))))
            (let* ((_%__match4426844269%_
                    (lambda (_%e3959639617%_
                             _%hd3959739621%_
                             _%tl3959839624%_
                             _%e3959939627%_
                             _%hd3960039631%_
                             _%tl3960139634%_
                             _%e3960239637%_
                             _%hd3960339641%_
                             _%tl3960439644%_)
                      (let ((_%L39647%_ _%hd3960339641%_)
                            (_%L39649%_ _%hd3960039631%_))
                        (if (gx#identifier? _%L39649%_)
                            (_%__kont4418044181%_ _%L39647%_ _%L39649%_)
                            (let () (declare (not safe)) (_%g3954739610%_))))))
                   (_%__match4424844249%_
                    (lambda (_%e3958839672%_
                             _%hd3958939676%_
                             _%tl3959039679%_
                             _%e3959139682%_
                             _%hd3959239686%_
                             _%tl3959339689%_)
                      (let ((_%L39692%_ _%hd3959239686%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%L39692%_)
                            (_%__kont4417844179%_ _%L39692%_)
                            (if (gx#stx-pair? _%tl3959339689%_)
                                (let ((_%e3960239637%_
                                       (gx#syntax-e _%tl3959339689%_)))
                                  (let ((_%tl3960439644%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3960239637%_)))
                                        (_%hd3960339641%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3960239637%_))))
                                    (if (gx#stx-null? _%tl3960439644%_)
                                        (_%__match4426844269%_
                                         _%e3958839672%_
                                         _%hd3958939676%_
                                         _%tl3959039679%_
                                         _%e3959139682%_
                                         _%hd3959239686%_
                                         _%tl3959339689%_
                                         _%e3960239637%_
                                         _%hd3960339641%_
                                         _%tl3960439644%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3954739610%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3954739610%_)))))))
                   (_%__match4423644237%_
                    (lambda (_%e3956639712%_
                             _%hd3956739716%_
                             _%tl3956839719%_
                             _%e3956939722%_
                             _%hd3957039726%_
                             _%tl3957139729%_
                             _%e3957239732%_
                             _%hd3957339736%_
                             _%tl3957439739%_
                             _%__splice4417644177%_
                             _%target3957539742%_
                             _%tl3957739745%_)
                      (letrec ((_%loop3957839748%_
                                (lambda (_%hd3957639752%_ _%arg3958239755%_)
                                  (if (gx#stx-pair? _%hd3957639752%_)
                                      (let ((_%e3957939758%_
                                             (gx#syntax-e _%hd3957639752%_)))
                                        (let ((_%lp-tl3958139765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3957939758%_)))
                                              (_%lp-hd3958039762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3957939758%_))))
                                          (_%loop3957839748%_
                                           _%lp-tl3958139765%_
                                           (cons _%lp-hd3958039762%_
                                                 _%arg3958239755%_))))
                                      (let ((_%arg3958339768%_
                                             (reverse _%arg3958239755%_)))
                                        (if (gx#stx-pair? _%tl3957139729%_)
                                            (let ((_%e3958439772%_
                                                   (gx#syntax-e
                                                    _%tl3957139729%_)))
                                              (let ((_%tl3958639779%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3958439772%_)))
                                                    (_%hd3958539776%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3958439772%_))))
                                                (if (gx#stx-null?
                                                     _%tl3958639779%_)
                                                    (let ((_%L39782%_
                                                           _%hd3958539776%_)
                                                          (_%L39784%_
                                                           _%arg3958339768%_)
                                                          (_%L39785%_
                                                           _%hd3957339736%_))
                                                      (if (gx#identifier?
                                                           _%L39785%_)
                                                          (_%__kont4417444175%_
                                                           _%L39782%_
                                                           _%L39784%_
                                                           _%L39785%_)
                                                          (_%__match4424844249%_
                                                           _%e3956639712%_
                                                           _%hd3956739716%_
                                                           _%tl3956839719%_
                                                           _%e3956939722%_
                                                           _%hd3957039726%_
                                                           _%tl3957139729%_)))
                                                    (_%__match4424844249%_
                                                     _%e3956639712%_
                                                     _%hd3956739716%_
                                                     _%tl3956839719%_
                                                     _%e3956939722%_
                                                     _%hd3957039726%_
                                                     _%tl3957139729%_))))
                                            (_%__match4424844249%_
                                             _%e3956639712%_
                                             _%hd3956739716%_
                                             _%tl3956839719%_
                                             _%e3956939722%_
                                             _%hd3957039726%_
                                             _%tl3957139729%_)))))))
                        (_%loop3957839748%_ _%target3957539742%_ '())))))
              (if (gx#stx-pair? _%__stx4416944170%_)
                  (let ((_%e3955139853%_ (gx#syntax-e _%__stx4416944170%_)))
                    (let ((_%tl3955339860%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3955139853%_)))
                          (_%hd3955239857%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3955139853%_))))
                      (if (gx#stx-pair? _%tl3955339860%_)
                          (let ((_%e3955439863%_
                                 (gx#syntax-e _%tl3955339860%_)))
                            (let ((_%tl3955639870%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3955439863%_)))
                                  (_%hd3955539867%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3955439863%_))))
                              (if (gx#stx-pair? _%hd3955539867%_)
                                  (let ((_%e3955739873%_
                                         (gx#syntax-e _%hd3955539867%_)))
                                    (let ((_%tl3955939880%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3955739873%_)))
                                          (_%hd3955839877%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3955739873%_))))
                                      (if (gx#stx-pair? _%tl3955639870%_)
                                          (let ((_%e3956039883%_
                                                 (gx#syntax-e
                                                  _%tl3955639870%_)))
                                            (let ((_%tl3956239890%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3956039883%_)))
                                                  (_%hd3956139887%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3956039883%_))))
                                              (if (gx#stx-null?
                                                   _%tl3956239890%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%L39893%_
                                                             _%hd3956139887%_)
                                                            (_%L39895%_
                                                             _%hd3955839877%_))
                                                        (_%__kont4417244173%_
                                                         _%L39893%_
                                                         _%L39895%_))
                                                      (if (gx#stx-pair/null?
                                                           _%tl3955939880%_)
                                                          (let ((_%__splice4417644177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3955939880%_ '0)))
                    (let ((_%tl3957739745%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4417644177%_ '1)))
                          (_%target3957539742%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4417644177%_ '0))))
                      (if (gx#stx-null? _%tl3957739745%_)
                          (_%__match4423644237%_
                           _%e3955139853%_
                           _%hd3955239857%_
                           _%tl3955339860%_
                           _%e3955439863%_
                           _%hd3955539867%_
                           _%tl3955639870%_
                           _%e3955739873%_
                           _%hd3955839877%_
                           _%tl3955939880%_
                           _%__splice4417644177%_
                           _%target3957539742%_
                           _%tl3957739745%_)
                          (_%__match4424844249%_
                           _%e3955139853%_
                           _%hd3955239857%_
                           _%tl3955339860%_
                           _%e3955439863%_
                           _%hd3955539867%_
                           _%tl3955639870%_))))
                  (_%__match4424844249%_
                   _%e3955139853%_
                   _%hd3955239857%_
                   _%tl3955339860%_
                   _%e3955439863%_
                   _%hd3955539867%_
                   _%tl3955639870%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl3955939880%_)
                                                      (let ((_%__splice4417644177%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3955939880%_
                                                              '0)))
                                                        (let ((_%tl3957739745%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4417644177%_ '1)))
                      (_%target3957539742%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4417644177%_ '0))))
                  (if (gx#stx-null? _%tl3957739745%_)
                      (_%__match4423644237%_
                       _%e3955139853%_
                       _%hd3955239857%_
                       _%tl3955339860%_
                       _%e3955439863%_
                       _%hd3955539867%_
                       _%tl3955639870%_
                       _%e3955739873%_
                       _%hd3955839877%_
                       _%tl3955939880%_
                       _%__splice4417644177%_
                       _%target3957539742%_
                       _%tl3957739745%_)
                      (_%__match4424844249%_
                       _%e3955139853%_
                       _%hd3955239857%_
                       _%tl3955339860%_
                       _%e3955439863%_
                       _%hd3955539867%_
                       _%tl3955639870%_))))
              (_%__match4424844249%_
               _%e3955139853%_
               _%hd3955239857%_
               _%tl3955339860%_
               _%e3955439863%_
               _%hd3955539867%_
               _%tl3955639870%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl3955939880%_)
                                              (let ((_%__splice4417644177%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl3955939880%_
                                                      '0)))
                                                (let ((_%tl3957739745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4417644177%_
                                                          '1)))
                                                      (_%target3957539742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4417644177%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl3957739745%_)
                                                      (_%__match4423644237%_
                                                       _%e3955139853%_
                                                       _%hd3955239857%_
                                                       _%tl3955339860%_
                                                       _%e3955439863%_
                                                       _%hd3955539867%_
                                                       _%tl3955639870%_
                                                       _%e3955739873%_
                                                       _%hd3955839877%_
                                                       _%tl3955939880%_
                                                       _%__splice4417644177%_
                                                       _%target3957539742%_
                                                       _%tl3957739745%_)
                                                      (_%__match4424844249%_
                                                       _%e3955139853%_
                                                       _%hd3955239857%_
                                                       _%tl3955339860%_
                                                       _%e3955439863%_
                                                       _%hd3955539867%_
                                                       _%tl3955639870%_))))
                                              (_%__match4424844249%_
                                               _%e3955139853%_
                                               _%hd3955239857%_
                                               _%tl3955339860%_
                                               _%e3955439863%_
                                               _%hd3955539867%_
                                               _%tl3955639870%_)))))
                                  (_%__match4424844249%_
                                   _%e3955139853%_
                                   _%hd3955239857%_
                                   _%tl3955339860%_
                                   _%e3955439863%_
                                   _%hd3955539867%_
                                   _%tl3955639870%_))))
                          (let () (declare (not safe)) (_%g3954739610%_)))))
                  (let () (declare (not safe)) (_%g3954739610%_))))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx39931%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx39931%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx39934%_)
        (let* ((_%g3993739961%_
                (lambda (_%g3993839957%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g3993839957%_)))
               (_%g3993640139%_
                (lambda (_%g3993839965%_)
                  (if (gx#stx-pair? _%g3993839965%_)
                      (let ((_%e3994139968%_ (gx#syntax-e _%g3993839965%_)))
                        (let ((_%hd3994239972%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e3994139968%_)))
                              (_%tl3994339975%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e3994139968%_))))
                          (if (gx#stx-pair/null? _%tl3994339975%_)
                              (if (let ((__tmp44642
                                         (gx#stx-length _%tl3994339975%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp44642 '1))
                                  (let ((_g44643_
                                         (gx#syntax-split-splice
                                          _%tl3994339975%_
                                          '1)))
                                    (begin
                                      (let ((_g44644_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g44643_)
                                                   (##values-length _g44643_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g44644_ 2)))
                                            (error "Context expects 2 values"
                                                   _g44644_)))
                                      (let ((_%target3994439978%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g44643_ 0)))
                                            (_%tl3994639981%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g44643_ 1))))
                                        (if (gx#stx-pair? _%tl3994639981%_)
                                            (let ((_%e3995339984%_
                                                   (gx#syntax-e
                                                    _%tl3994639981%_)))
                                              (let ((_%hd3995439988%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3995339984%_)))
                                                    (_%tl3995539991%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3995339984%_))))
                                                (if (gx#stx-null?
                                                     _%tl3995539991%_)
                                                    (letrec ((_%loop3994739994%_
                                                              (lambda (_%hd3994539998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tgt3995140001%_)
                        (if (gx#stx-pair? _%hd3994539998%_)
                            (let ((_%e3994840004%_
                                   (gx#syntax-e _%hd3994539998%_)))
                              (let ((_%lp-hd3994940008%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e3994840004%_)))
                                    (_%lp-tl3995040011%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e3994840004%_))))
                                (_%loop3994739994%_
                                 _%lp-tl3995040011%_
                                 (cons _%lp-hd3994940008%_
                                       _%tgt3995140001%_))))
                            (let ((_%tgt3995240014%_
                                   (reverse _%tgt3995140001%_)))
                              ((lambda (_%L40018%_ _%L40020%_)
                                 (let* ((_%g4003840055%_
                                         (lambda (_%g4003940051%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g4003940051%_)))
                                        (_%g4003740127%_
                                         (lambda (_%g4003940059%_)
                                           (if (gx#stx-pair/null?
                                                _%g4003940059%_)
                                               (let ((_g44645_
                                                      (gx#syntax-split-splice
                                                       _%g4003940059%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g44646_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g44645_)
                        (##values-length _g44645_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g44646_ 2)))
                 (error "Context expects 2 values" _g44646_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target4004140062%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g44645_
                                                             0)))
                                                         (_%tl4004340065%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g44645_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl4004340065%_)
                                                         (letrec ((_%loop4004440068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd4004240072%_ _%$e4004840075%_)
                             (if (gx#stx-pair? _%hd4004240072%_)
                                 (let ((_%e4004540078%_
                                        (gx#syntax-e _%hd4004240072%_)))
                                   (let ((_%lp-hd4004640082%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4004540078%_)))
                                         (_%lp-tl4004740085%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4004540078%_))))
                                     (_%loop4004440068%_
                                      _%lp-tl4004740085%_
                                      (cons _%lp-hd4004640082%_
                                            _%$e4004840075%_))))
                                 (let ((_%$e4004940088%_
                                        (reverse _%$e4004840075%_)))
                                   ((lambda (_%L40092%_)
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g4010740113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4010840116%_)
                               (cons _%g4010740113%_ _%g4010840116%_))
                             '()
                             _%L40092%_)
                      (cons _%L40018%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L40092%_
                                                     _%L40020%_)
                                                    (foldr (lambda (_%g4010940119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4011040122%_
                            _%g4011140124%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g4011040122%_
                                       (cons _%g4010940119%_ '())))
                           _%g4011140124%_))
                   '()
                   _%L40092%_
                   _%L40020%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$e4004940088%_))))))
                   (_%loop4004440068%_ _%target4004140062%_ '()))
                 (_%g4003840055%_ _%g4003940059%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4003840055%_
                                                _%g4003940059%_)))))
                                   (_%g4003740127%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g4013040133%_
                                                     _%g4013140136%_)
                                              (cons _%g4013040133%_
                                                    _%g4013140136%_))
                                            '()
                                            _%L40020%_)))))
                               _%hd3995439988%_
                               _%tgt3995240014%_))))))
              (_%loop3994739994%_ _%target3994439978%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g3993739961%_
                                                     _%g3993839965%_))))
                                            (_%g3993739961%_
                                             _%g3993839965%_)))))
                                  (_%g3993739961%_ _%g3993839965%_))
                              (_%g3993739961%_ _%g3993839965%_))))
                      (_%g3993739961%_ _%g3993839965%_)))))
          (_%g3993640139%_ _%stx39934%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx40145%_)
        (let* ((_%__stx4427144272%_ _%$stx40145%_)
               (_%g4015140239%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4427144272%_))))
          (let ((_%__kont4427444275%_
                 (lambda (_%L40587%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4060340606%_ _%g4060440609%_)
                                        (cons _%g4060340606%_ _%g4060440609%_))
                                      '()
                                      _%L40587%_)))))
                (_%__kont4427844279%_
                 (lambda (_%L40495%_ _%L40497%_ _%L40498%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%g4052140524%_
                                                           _%g4052240527%_)
                                                    (cons _%g4052140524%_
                                                          _%g4052240527%_))
                                                  '()
                                                  _%L40495%_)))
                               (cons _%L40498%_ (cons _%L40497%_ '()))))))
                (_%__kont4428244283%_
                 (lambda (_%L40356%_
                          _%L40358%_
                          _%L40359%_
                          _%L40360%_
                          _%L40361%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%L40361%_
                                                       (cons (foldr (lambda (_%g4039140396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4039240399%_)
                              (cons _%g4039140396%_ _%g4039240399%_))
                            '()
                            _%L40358%_)
                     (foldr (lambda (_%g4039340402%_ _%g4039440405%_)
                              (cons _%g4039340402%_ _%g4039440405%_))
                            '()
                            _%L40356%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L40360%_ (cons _%L40359%_ '())))))))
            (let* ((_%__match4439244393%_
                    (lambda (_%e4020140246%_
                             _%hd4020240250%_
                             _%tl4020340253%_
                             _%e4020440256%_
                             _%hd4020540260%_
                             _%tl4020640263%_
                             _%e4020740266%_
                             _%hd4020840270%_
                             _%tl4020940273%_
                             _%e4021040276%_
                             _%hd4021140280%_
                             _%tl4021240283%_
                             _%e4021340286%_
                             _%hd4021440290%_
                             _%tl4021540293%_
                             _%__splice4428444285%_
                             _%target4021640296%_
                             _%tl4021840299%_)
                      (letrec ((_%loop4021940302%_
                                (lambda (_%hd4021740306%_ _%rest4022340309%_)
                                  (if (gx#stx-pair? _%hd4021740306%_)
                                      (let ((_%e4022040312%_
                                             (gx#syntax-e _%hd4021740306%_)))
                                        (let ((_%lp-tl4022240319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4022040312%_)))
                                              (_%lp-hd4022140316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4022040312%_))))
                                          (_%loop4021940302%_
                                           _%lp-tl4022240319%_
                                           (cons _%lp-hd4022140316%_
                                                 _%rest4022340309%_))))
                                      (let ((_%rest4022440322%_
                                             (reverse _%rest4022340309%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl4020640263%_)
                                            (let ((_%__splice4428644287%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4020640263%_
                                                    '0)))
                                              (let ((_%tl4022740329%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4428644287%_
                                                        '1)))
                                                    (_%target4022540326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4428644287%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4022740329%_)
                                                    (letrec ((_%loop4022840332%_
                                                              (lambda (_%hd4022640336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body4023240339%_)
                        (if (gx#stx-pair? _%hd4022640336%_)
                            (let ((_%e4022940342%_
                                   (gx#syntax-e _%hd4022640336%_)))
                              (let ((_%lp-tl4023140349%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4022940342%_)))
                                    (_%lp-hd4023040346%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4022940342%_))))
                                (_%loop4022840332%_
                                 _%lp-tl4023140349%_
                                 (cons _%lp-hd4023040346%_
                                       _%body4023240339%_))))
                            (let ((_%body4023340352%_
                                   (reverse _%body4023240339%_)))
                              (_%__kont4428244283%_
                               _%body4023340352%_
                               _%rest4022440322%_
                               _%hd4021440290%_
                               _%hd4021140280%_
                               _%hd4020240250%_))))))
              (_%loop4022840332%_ _%target4022540326%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4015140239%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4015140239%_))))))))
                        (_%loop4021940302%_ _%target4021640296%_ '()))))
                   (_%__match4435244353%_
                    (lambda (_%e4017240415%_
                             _%hd4017340419%_
                             _%tl4017440422%_
                             _%e4017540425%_
                             _%hd4017640429%_
                             _%tl4017740432%_
                             _%e4017840435%_
                             _%hd4017940439%_
                             _%tl4018040442%_
                             _%e4018140445%_
                             _%hd4018240449%_
                             _%tl4018340452%_
                             _%e4018440455%_
                             _%hd4018540459%_
                             _%tl4018640462%_
                             _%__splice4428044281%_
                             _%target4018740465%_
                             _%tl4018940468%_)
                      (letrec ((_%loop4019040471%_
                                (lambda (_%hd4018840475%_ _%body4019440478%_)
                                  (if (gx#stx-pair? _%hd4018840475%_)
                                      (let ((_%e4019140481%_
                                             (gx#syntax-e _%hd4018840475%_)))
                                        (let ((_%lp-tl4019340488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4019140481%_)))
                                              (_%lp-hd4019240485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4019140481%_))))
                                          (_%loop4019040471%_
                                           _%lp-tl4019340488%_
                                           (cons _%lp-hd4019240485%_
                                                 _%body4019440478%_))))
                                      (let ((_%body4019540491%_
                                             (reverse _%body4019440478%_)))
                                        (_%__kont4427844279%_
                                         _%body4019540491%_
                                         _%hd4018540459%_
                                         _%hd4018240449%_))))))
                        (_%loop4019040471%_ _%target4018740465%_ '()))))
                   (_%__match4431044311%_
                    (lambda (_%e4015440537%_
                             _%hd4015540541%_
                             _%tl4015640544%_
                             _%e4015740547%_
                             _%hd4015840551%_
                             _%tl4015940554%_
                             _%__splice4427644277%_
                             _%target4016040557%_
                             _%tl4016240560%_)
                      (letrec ((_%loop4016340563%_
                                (lambda (_%hd4016140567%_ _%body4016740570%_)
                                  (if (gx#stx-pair? _%hd4016140567%_)
                                      (let ((_%e4016440573%_
                                             (gx#syntax-e _%hd4016140567%_)))
                                        (let ((_%lp-tl4016640580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4016440573%_)))
                                              (_%lp-hd4016540577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4016440573%_))))
                                          (_%loop4016340563%_
                                           _%lp-tl4016640580%_
                                           (cons _%lp-hd4016540577%_
                                                 _%body4016740570%_))))
                                      (let ((_%body4016840583%_
                                             (reverse _%body4016740570%_)))
                                        (_%__kont4427444275%_
                                         _%body4016840583%_))))))
                        (_%loop4016340563%_ _%target4016040557%_ '())))))
              (if (gx#stx-pair? _%__stx4427144272%_)
                  (let ((_%e4015440537%_ (gx#syntax-e _%__stx4427144272%_)))
                    (let ((_%tl4015640544%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4015440537%_)))
                          (_%hd4015540541%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4015440537%_))))
                      (if (gx#stx-pair? _%tl4015640544%_)
                          (let ((_%e4015740547%_
                                 (gx#syntax-e _%tl4015640544%_)))
                            (let ((_%tl4015940554%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4015740547%_)))
                                  (_%hd4015840551%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4015740547%_))))
                              (if (gx#stx-null? _%hd4015840551%_)
                                  (if (gx#stx-pair/null? _%tl4015940554%_)
                                      (let ((_%__splice4427644277%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4015940554%_
                                              '0)))
                                        (let ((_%tl4016240560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4427644277%_
                                                  '1)))
                                              (_%target4016040557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4427644277%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4016240560%_)
                                              (_%__match4431044311%_
                                               _%e4015440537%_
                                               _%hd4015540541%_
                                               _%tl4015640544%_
                                               _%e4015740547%_
                                               _%hd4015840551%_
                                               _%tl4015940554%_
                                               _%__splice4427644277%_
                                               _%target4016040557%_
                                               _%tl4016240560%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4015140239%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4015140239%_)))
                                  (if (gx#stx-pair? _%hd4015840551%_)
                                      (let ((_%e4017840435%_
                                             (gx#syntax-e _%hd4015840551%_)))
                                        (let ((_%tl4018040442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4017840435%_)))
                                              (_%hd4017940439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4017840435%_))))
                                          (if (gx#stx-pair? _%hd4017940439%_)
                                              (let ((_%e4018140445%_
                                                     (gx#syntax-e
                                                      _%hd4017940439%_)))
                                                (let ((_%tl4018340452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4018140445%_)))
                                                      (_%hd4018240449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4018140445%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4018340452%_)
                                                      (let ((_%e4018440455%_
                                                             (gx#syntax-e
                                                              _%tl4018340452%_)))
                                                        (let ((_%tl4018640462%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4018440455%_)))
                      (_%hd4018540459%_
                       (let () (declare (not safe)) (##car _%e4018440455%_))))
                  (if (gx#stx-null? _%tl4018640462%_)
                      (if (gx#stx-null? _%tl4018040442%_)
                          (if (gx#stx-pair/null? _%tl4015940554%_)
                              (let ((_%__splice4428044281%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4015940554%_
                                      '0)))
                                (let ((_%tl4018940468%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4428044281%_
                                          '1)))
                                      (_%target4018740465%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4428044281%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4018940468%_)
                                      (_%__match4435244353%_
                                       _%e4015440537%_
                                       _%hd4015540541%_
                                       _%tl4015640544%_
                                       _%e4015740547%_
                                       _%hd4015840551%_
                                       _%tl4015940554%_
                                       _%e4017840435%_
                                       _%hd4017940439%_
                                       _%tl4018040442%_
                                       _%e4018140445%_
                                       _%hd4018240449%_
                                       _%tl4018340452%_
                                       _%e4018440455%_
                                       _%hd4018540459%_
                                       _%tl4018640462%_
                                       _%__splice4428044281%_
                                       _%target4018740465%_
                                       _%tl4018940468%_)
                                      (if (gx#stx-pair/null? _%tl4018040442%_)
                                          (let ((_%__splice4428444285%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4018040442%_
                                                  '0)))
                                            (let ((_%tl4021840299%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4428444285%_
                                                      '1)))
                                                  (_%target4021640296%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4428444285%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4021840299%_)
                                                  (_%__match4439244393%_
                                                   _%e4015440537%_
                                                   _%hd4015540541%_
                                                   _%tl4015640544%_
                                                   _%e4015740547%_
                                                   _%hd4015840551%_
                                                   _%tl4015940554%_
                                                   _%e4017840435%_
                                                   _%hd4017940439%_
                                                   _%tl4018040442%_
                                                   _%e4018140445%_
                                                   _%hd4018240449%_
                                                   _%tl4018340452%_
                                                   _%e4018440455%_
                                                   _%hd4018540459%_
                                                   _%tl4018640462%_
                                                   _%__splice4428444285%_
                                                   _%target4021640296%_
                                                   _%tl4021840299%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4015140239%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4015140239%_))))))
                              (if (gx#stx-pair/null? _%tl4018040442%_)
                                  (let ((_%__splice4428444285%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4018040442%_
                                          '0)))
                                    (let ((_%tl4021840299%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4428444285%_
                                              '1)))
                                          (_%target4021640296%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4428444285%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4021840299%_)
                                          (_%__match4439244393%_
                                           _%e4015440537%_
                                           _%hd4015540541%_
                                           _%tl4015640544%_
                                           _%e4015740547%_
                                           _%hd4015840551%_
                                           _%tl4015940554%_
                                           _%e4017840435%_
                                           _%hd4017940439%_
                                           _%tl4018040442%_
                                           _%e4018140445%_
                                           _%hd4018240449%_
                                           _%tl4018340452%_
                                           _%e4018440455%_
                                           _%hd4018540459%_
                                           _%tl4018640462%_
                                           _%__splice4428444285%_
                                           _%target4021640296%_
                                           _%tl4021840299%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4015140239%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4015140239%_))))
                          (if (gx#stx-pair/null? _%tl4018040442%_)
                              (let ((_%__splice4428444285%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4018040442%_
                                      '0)))
                                (let ((_%tl4021840299%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4428444285%_
                                          '1)))
                                      (_%target4021640296%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4428444285%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4021840299%_)
                                      (_%__match4439244393%_
                                       _%e4015440537%_
                                       _%hd4015540541%_
                                       _%tl4015640544%_
                                       _%e4015740547%_
                                       _%hd4015840551%_
                                       _%tl4015940554%_
                                       _%e4017840435%_
                                       _%hd4017940439%_
                                       _%tl4018040442%_
                                       _%e4018140445%_
                                       _%hd4018240449%_
                                       _%tl4018340452%_
                                       _%e4018440455%_
                                       _%hd4018540459%_
                                       _%tl4018640462%_
                                       _%__splice4428444285%_
                                       _%target4021640296%_
                                       _%tl4021840299%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4015140239%_)))))
                              (let () (declare (not safe)) (_%g4015140239%_))))
                      (let () (declare (not safe)) (_%g4015140239%_)))))
              (let () (declare (not safe)) (_%g4015140239%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4015140239%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4015140239%_))))))
                          (let () (declare (not safe)) (_%g4015140239%_)))))
                  (let () (declare (not safe)) (_%g4015140239%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx40620%_)
        (let* ((_%g4062440648%_
                (lambda (_%g4062540644%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4062540644%_)))
               (_%g4062340733%_
                (lambda (_%g4062540652%_)
                  (if (gx#stx-pair? _%g4062540652%_)
                      (let ((_%e4062840655%_ (gx#syntax-e _%g4062540652%_)))
                        (let ((_%hd4062940659%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4062840655%_)))
                              (_%tl4063040662%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4062840655%_))))
                          (if (gx#stx-pair? _%tl4063040662%_)
                              (let ((_%e4063140665%_
                                     (gx#syntax-e _%tl4063040662%_)))
                                (let ((_%hd4063240669%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4063140665%_)))
                                      (_%tl4063340672%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4063140665%_))))
                                  (if (gx#stx-pair/null? _%tl4063340672%_)
                                      (let ((_g44647_
                                             (gx#syntax-split-splice
                                              _%tl4063340672%_
                                              '0)))
                                        (begin
                                          (let ((_g44648_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44647_)
                                                       (##values-length
                                                        _g44647_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44648_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44648_)))
                                          (let ((_%target4063440675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44647_ 0)))
                                                (_%tl4063640678%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44647_ 1))))
                                            (if (gx#stx-null? _%tl4063640678%_)
                                                (letrec ((_%loop4063740681%_
                                                          (lambda (_%hd4063540685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4064140688%_)
                    (if (gx#stx-pair? _%hd4063540685%_)
                        (let ((_%e4063840691%_ (gx#syntax-e _%hd4063540685%_)))
                          (let ((_%lp-hd4063940695%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4063840691%_)))
                                (_%lp-tl4064040698%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4063840691%_))))
                            (_%loop4063740681%_
                             _%lp-tl4064040698%_
                             (cons _%lp-hd4063940695%_ _%body4064140688%_))))
                        (let ((_%body4064240701%_
                               (reverse _%body4064140688%_)))
                          ((lambda (_%L40705%_ _%L40707%_)
                             (if (gx#identifier? _%L40707%_)
                                 (cons (gx#datum->syntax '#f 'call/cc)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%L40707%_ '())
                                                         (foldr (lambda (_%g4072440727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4072540730%_)
                          (cons _%g4072440727%_ _%g4072540730%_))
                        '()
                        _%L40705%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (_%g4062440648%_ _%g4062540652%_)))
                           _%body4064240701%_
                           _%hd4063240669%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4063740681%_
                                                   _%target4063440675%_
                                                   '()))
                                                (_%g4062440648%_
                                                 _%g4062540652%_)))))
                                      (_%g4062440648%_ _%g4062540652%_))))
                              (_%g4062440648%_ _%g4062540652%_))))
                      (_%g4062440648%_ _%g4062540652%_)))))
          (_%g4062340733%_ _%$stx40620%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx40738%_)
        (let* ((_%g4074240770%_
                (lambda (_%g4074340766%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4074340766%_)))
               (_%g4074140869%_
                (lambda (_%g4074340774%_)
                  (if (gx#stx-pair? _%g4074340774%_)
                      (let ((_%e4074740777%_ (gx#syntax-e _%g4074340774%_)))
                        (let ((_%hd4074840781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4074740777%_)))
                              (_%tl4074940784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4074740777%_))))
                          (if (gx#stx-pair? _%tl4074940784%_)
                              (let ((_%e4075040787%_
                                     (gx#syntax-e _%tl4074940784%_)))
                                (let ((_%hd4075140791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4075040787%_)))
                                      (_%tl4075240794%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4075040787%_))))
                                  (if (gx#stx-pair? _%tl4075240794%_)
                                      (let ((_%e4075340797%_
                                             (gx#syntax-e _%tl4075240794%_)))
                                        (let ((_%hd4075440801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4075340797%_)))
                                              (_%tl4075540804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4075340797%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4075540804%_)
                                              (let ((_g44649_
                                                     (gx#syntax-split-splice
                                                      _%tl4075540804%_
                                                      '0)))
                                                (begin
                                                  (let ((_g44650_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g44649_)
                                                               (##values-length
                                                                _g44649_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g44650_ 2)))
                (error "Context expects 2 values" _g44650_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4075640807%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44649_
                                                            0)))
                                                        (_%tl4075840810%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44649_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4075840810%_)
                                                        (letrec ((_%loop4075940813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4075740817%_ _%rest4076340820%_)
                            (if (gx#stx-pair? _%hd4075740817%_)
                                (let ((_%e4076040823%_
                                       (gx#syntax-e _%hd4075740817%_)))
                                  (let ((_%lp-hd4076140827%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4076040823%_)))
                                        (_%lp-tl4076240830%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4076040823%_))))
                                    (_%loop4075940813%_
                                     _%lp-tl4076240830%_
                                     (cons _%lp-hd4076140827%_
                                           _%rest4076340820%_))))
                                (let ((_%rest4076440833%_
                                       (reverse _%rest4076340820%_)))
                                  ((lambda (_%L40837%_ _%L40839%_ _%L40840%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'with-unwind-protect)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons '()
                                                             (cons _%L40840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L40839%_
                                 (foldr (lambda (_%g4086040863%_
                                                 _%g4086140866%_)
                                          (cons _%g4086040863%_
                                                _%g4086140866%_))
                                        '()
                                        _%L40837%_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest4076440833%_
                                   _%hd4075440801%_
                                   _%hd4075140791%_))))))
                  (_%loop4075940813%_ _%target4075640807%_ '()))
                (_%g4074240770%_ _%g4074340774%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4074240770%_
                                               _%g4074340774%_))))
                                      (_%g4074240770%_ _%g4074340774%_))))
                              (_%g4074240770%_ _%g4074340774%_))))
                      (_%g4074240770%_ _%g4074340774%_)))))
          (_%g4074140869%_ _%$stx40738%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx40874%_)
        (let* ((_%g4087840949%_
                (lambda (_%g4087940945%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4087940945%_)))
               (_%g4087741238%_
                (lambda (_%g4087940953%_)
                  (if (gx#stx-pair? _%g4087940953%_)
                      (let ((_%e4088640956%_ (gx#syntax-e _%g4087940953%_)))
                        (let ((_%hd4088740960%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4088640956%_)))
                              (_%tl4088840963%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4088640956%_))))
                          (if (gx#stx-pair? _%tl4088840963%_)
                              (let ((_%e4088940966%_
                                     (gx#syntax-e _%tl4088840963%_)))
                                (let ((_%hd4089040970%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4088940966%_)))
                                      (_%tl4089140973%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4088940966%_))))
                                  (if (gx#stx-pair/null? _%hd4089040970%_)
                                      (let ((_g44651_
                                             (gx#syntax-split-splice
                                              _%hd4089040970%_
                                              '0)))
                                        (begin
                                          (let ((_g44652_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44651_)
                                                       (##values-length
                                                        _g44651_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44652_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44652_)))
                                          (let ((_%target4089240976%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44651_ 0)))
                                                (_%tl4089440979%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44651_ 1))))
                                            (if (gx#stx-null? _%tl4089440979%_)
                                                (letrec ((_%loop4089540982%_
                                                          (lambda (_%hd4089340986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4089940989%_
                           _%init4090040991%_
                           _%var4090140993%_)
                    (if (gx#stx-pair? _%hd4089340986%_)
                        (let ((_%e4089640996%_ (gx#syntax-e _%hd4089340986%_)))
                          (let ((_%lp-hd4089741000%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4089640996%_)))
                                (_%lp-tl4089841003%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4089640996%_))))
                            (if (gx#stx-pair? _%lp-hd4089741000%_)
                                (let ((_%e4090541006%_
                                       (gx#syntax-e _%lp-hd4089741000%_)))
                                  (let ((_%hd4090641010%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4090541006%_)))
                                        (_%tl4090741013%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4090541006%_))))
                                    (if (gx#stx-pair? _%tl4090741013%_)
                                        (let ((_%e4090841016%_
                                               (gx#syntax-e _%tl4090741013%_)))
                                          (let ((_%hd4090941020%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4090841016%_)))
                                                (_%tl4091041023%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4090841016%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4091041023%_)
                                                (let ((_g44653_
                                                       (gx#syntax-split-splice
                                                        _%tl4091041023%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g44654_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g44653_)
                         (##values-length _g44653_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g44654_ 2)))
                  (error "Context expects 2 values" _g44654_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4091141026%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g44653_
                                                              0)))
                                                          (_%tl4091341029%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g44653_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4091341029%_)
                                                          (letrec ((_%loop4091441032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4091241036%_ _%step4091841039%_)
                              (if (gx#stx-pair? _%hd4091241036%_)
                                  (let ((_%e4091541042%_
                                         (gx#syntax-e _%hd4091241036%_)))
                                    (let ((_%lp-hd4091641046%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4091541042%_)))
                                          (_%lp-tl4091741049%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4091541042%_))))
                                      (_%loop4091441032%_
                                       _%lp-tl4091741049%_
                                       (cons _%lp-hd4091641046%_
                                             _%step4091841039%_))))
                                  (let ((_%step4091941052%_
                                         (reverse _%step4091841039%_)))
                                    (_%loop4089540982%_
                                     _%lp-tl4089841003%_
                                     (cons _%step4091941052%_
                                           _%step4089940989%_)
                                     (cons _%hd4090941020%_ _%init4090040991%_)
                                     (cons _%hd4090641010%_
                                           _%var4090140993%_)))))))
                    (_%loop4091441032%_ _%target4091141026%_ '()))
                  (_%g4087840949%_ _%g4087940953%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4087840949%_
                                                 _%g4087940953%_))))
                                        (_%g4087840949%_ _%g4087940953%_))))
                                (_%g4087840949%_ _%g4087940953%_))))
                        (let ((_%step4090241056%_ (reverse _%step4089940989%_))
                              (_%init4090341059%_ (reverse _%init4090040991%_))
                              (_%var4090441061%_ (reverse _%var4090140993%_)))
                          (if (gx#stx-pair? _%tl4089140973%_)
                              (let ((_%e4092041064%_
                                     (gx#syntax-e _%tl4089140973%_)))
                                (let ((_%hd4092141068%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4092041064%_)))
                                      (_%tl4092241071%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4092041064%_))))
                                  (if (gx#stx-pair? _%hd4092141068%_)
                                      (let ((_%e4092341074%_
                                             (gx#syntax-e _%hd4092141068%_)))
                                        (let ((_%hd4092441078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4092341074%_)))
                                              (_%tl4092541081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4092341074%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4092541081%_)
                                              (let ((_g44655_
                                                     (gx#syntax-split-splice
                                                      _%tl4092541081%_
                                                      '0)))
                                                (begin
                                                  (let ((_g44656_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g44655_)
                                                               (##values-length
                                                                _g44655_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g44656_ 2)))
                (error "Context expects 2 values" _g44656_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4092641084%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44655_
                                                            0)))
                                                        (_%tl4092841087%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44655_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4092841087%_)
                                                        (letrec ((_%loop4092941090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4092741094%_ _%fini4093341097%_)
                            (if (gx#stx-pair? _%hd4092741094%_)
                                (let ((_%e4093041100%_
                                       (gx#syntax-e _%hd4092741094%_)))
                                  (let ((_%lp-hd4093141104%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4093041100%_)))
                                        (_%lp-tl4093241107%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4093041100%_))))
                                    (_%loop4092941090%_
                                     _%lp-tl4093241107%_
                                     (cons _%lp-hd4093141104%_
                                           _%fini4093341097%_))))
                                (let ((_%fini4093441110%_
                                       (reverse _%fini4093341097%_)))
                                  (if (gx#stx-pair/null? _%tl4092241071%_)
                                      (let ((_g44657_
                                             (gx#syntax-split-splice
                                              _%tl4092241071%_
                                              '0)))
                                        (begin
                                          (let ((_g44658_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44657_)
                                                       (##values-length
                                                        _g44657_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44658_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44658_)))
                                          (let ((_%target4093541114%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44657_ 0)))
                                                (_%tl4093741117%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44657_ 1))))
                                            (if (gx#stx-null? _%tl4093741117%_)
                                                (letrec ((_%loop4093841120%_
                                                          (lambda (_%hd4093641124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4094241127%_)
                    (if (gx#stx-pair? _%hd4093641124%_)
                        (let ((_%e4093941130%_ (gx#syntax-e _%hd4093641124%_)))
                          (let ((_%lp-hd4094041134%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4093941130%_)))
                                (_%lp-tl4094141137%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4093941130%_))))
                            (_%loop4093841120%_
                             _%lp-tl4094141137%_
                             (cons _%lp-hd4094041134%_ _%body4094241127%_))))
                        (let ((_%body4094341140%_
                               (reverse _%body4094241127%_)))
                          ((lambda (_%L41144%_
                                    _%L41146%_
                                    _%L41147%_
                                    _%L41148%_
                                    _%L41149%_
                                    _%L41150%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4118341186%_
                                                  _%g4118441189%_)
                                           (cons _%g4118341186%_
                                                 _%g4118441189%_))
                                         '()
                                         _%L41150%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L41149%_
                                                      _%L41150%_)
                                                     (foldr (lambda (_%g4119141204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4119241207%_
                             _%g4119341209%_)
                      (cons (cons _%g4119241207%_ (cons _%g4119141204%_ '()))
                            _%g4119341209%_))
                    '()
                    _%L41149%_
                    _%L41150%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%L41147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g4119441212%_
                                                               _%g4119541215%_)
                                                        (cons _%g4119441212%_
                                                              _%g4119541215%_))
                                                      '()
                                                      _%L41146%_)))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4119641218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4119741221%_)
                      (cons _%g4119641218%_ _%g4119741221%_))
                    (cons (cons (gx#datum->syntax '#f '$loop)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _%L41148%_
                                   _%L41150%_)
                                  (foldr (lambda (_%g4119841224%_
                                                  _%g4119941227%_
                                                  _%g4120041229%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons _%g4119941227%_
                                                             (foldr (lambda (_%g4120141232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4120241235%_)
                              (cons _%g4120141232%_ _%g4120241235%_))
                            '()
                            _%g4119841224%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g4120041229%_))
                                         '()
                                         _%L41148%_
                                         _%L41150%_)))
                          '())
                    _%L41144%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4087840949%_ _%g4087940953%_)))
                           _%body4094341140%_
                           _%fini4093441110%_
                           _%hd4092441078%_
                           _%step4090241056%_
                           _%init4090341059%_
                           _%var4090441061%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4093841120%_
                                                   _%target4093541114%_
                                                   '()))
                                                (_%g4087840949%_
                                                 _%g4087940953%_)))))
                                      (_%g4087840949%_ _%g4087940953%_)))))))
                  (_%loop4092941090%_ _%target4092641084%_ '()))
                (_%g4087840949%_ _%g4087940953%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4087840949%_
                                               _%g4087940953%_))))
                                      (_%g4087840949%_ _%g4087940953%_))))
                              (_%g4087840949%_ _%g4087940953%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4089540982%_
                                                   _%target4089240976%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4087840949%_
                                                 _%g4087940953%_)))))
                                      (_%g4087840949%_ _%g4087940953%_))))
                              (_%g4087840949%_ _%g4087940953%_))))
                      (_%g4087840949%_ _%g4087940953%_)))))
          (_%g4087741238%_ _%$stx40874%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx41246%_)
        (let* ((_%g4125041321%_
                (lambda (_%g4125141317%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4125141317%_)))
               (_%g4124941610%_
                (lambda (_%g4125141325%_)
                  (if (gx#stx-pair? _%g4125141325%_)
                      (let ((_%e4125841328%_ (gx#syntax-e _%g4125141325%_)))
                        (let ((_%hd4125941332%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4125841328%_)))
                              (_%tl4126041335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4125841328%_))))
                          (if (gx#stx-pair? _%tl4126041335%_)
                              (let ((_%e4126141338%_
                                     (gx#syntax-e _%tl4126041335%_)))
                                (let ((_%hd4126241342%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4126141338%_)))
                                      (_%tl4126341345%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4126141338%_))))
                                  (if (gx#stx-pair/null? _%hd4126241342%_)
                                      (let ((_g44659_
                                             (gx#syntax-split-splice
                                              _%hd4126241342%_
                                              '0)))
                                        (begin
                                          (let ((_g44660_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44659_)
                                                       (##values-length
                                                        _g44659_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44660_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44660_)))
                                          (let ((_%target4126441348%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44659_ 0)))
                                                (_%tl4126641351%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44659_ 1))))
                                            (if (gx#stx-null? _%tl4126641351%_)
                                                (letrec ((_%loop4126741354%_
                                                          (lambda (_%hd4126541358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4127141361%_
                           _%init4127241363%_
                           _%var4127341365%_)
                    (if (gx#stx-pair? _%hd4126541358%_)
                        (let ((_%e4126841368%_ (gx#syntax-e _%hd4126541358%_)))
                          (let ((_%lp-hd4126941372%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4126841368%_)))
                                (_%lp-tl4127041375%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4126841368%_))))
                            (if (gx#stx-pair? _%lp-hd4126941372%_)
                                (let ((_%e4127741378%_
                                       (gx#syntax-e _%lp-hd4126941372%_)))
                                  (let ((_%hd4127841382%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4127741378%_)))
                                        (_%tl4127941385%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4127741378%_))))
                                    (if (gx#stx-pair? _%tl4127941385%_)
                                        (let ((_%e4128041388%_
                                               (gx#syntax-e _%tl4127941385%_)))
                                          (let ((_%hd4128141392%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4128041388%_)))
                                                (_%tl4128241395%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4128041388%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4128241395%_)
                                                (let ((_g44661_
                                                       (gx#syntax-split-splice
                                                        _%tl4128241395%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g44662_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g44661_)
                         (##values-length _g44661_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g44662_ 2)))
                  (error "Context expects 2 values" _g44662_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4128341398%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g44661_
                                                              0)))
                                                          (_%tl4128541401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g44661_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4128541401%_)
                                                          (letrec ((_%loop4128641404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4128441408%_ _%step4129041411%_)
                              (if (gx#stx-pair? _%hd4128441408%_)
                                  (let ((_%e4128741414%_
                                         (gx#syntax-e _%hd4128441408%_)))
                                    (let ((_%lp-hd4128841418%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4128741414%_)))
                                          (_%lp-tl4128941421%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4128741414%_))))
                                      (_%loop4128641404%_
                                       _%lp-tl4128941421%_
                                       (cons _%lp-hd4128841418%_
                                             _%step4129041411%_))))
                                  (let ((_%step4129141424%_
                                         (reverse _%step4129041411%_)))
                                    (_%loop4126741354%_
                                     _%lp-tl4127041375%_
                                     (cons _%step4129141424%_
                                           _%step4127141361%_)
                                     (cons _%hd4128141392%_ _%init4127241363%_)
                                     (cons _%hd4127841382%_
                                           _%var4127341365%_)))))))
                    (_%loop4128641404%_ _%target4128341398%_ '()))
                  (_%g4125041321%_ _%g4125141325%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4125041321%_
                                                 _%g4125141325%_))))
                                        (_%g4125041321%_ _%g4125141325%_))))
                                (_%g4125041321%_ _%g4125141325%_))))
                        (let ((_%step4127441428%_ (reverse _%step4127141361%_))
                              (_%init4127541431%_ (reverse _%init4127241363%_))
                              (_%var4127641433%_ (reverse _%var4127341365%_)))
                          (if (gx#stx-pair? _%tl4126341345%_)
                              (let ((_%e4129241436%_
                                     (gx#syntax-e _%tl4126341345%_)))
                                (let ((_%hd4129341440%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4129241436%_)))
                                      (_%tl4129441443%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4129241436%_))))
                                  (if (gx#stx-pair? _%hd4129341440%_)
                                      (let ((_%e4129541446%_
                                             (gx#syntax-e _%hd4129341440%_)))
                                        (let ((_%hd4129641450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4129541446%_)))
                                              (_%tl4129741453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4129541446%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4129741453%_)
                                              (let ((_g44663_
                                                     (gx#syntax-split-splice
                                                      _%tl4129741453%_
                                                      '0)))
                                                (begin
                                                  (let ((_g44664_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g44663_)
                                                               (##values-length
                                                                _g44663_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g44664_ 2)))
                (error "Context expects 2 values" _g44664_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4129841456%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44663_
                                                            0)))
                                                        (_%tl4130041459%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44663_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4130041459%_)
                                                        (letrec ((_%loop4130141462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4129941466%_ _%fini4130541469%_)
                            (if (gx#stx-pair? _%hd4129941466%_)
                                (let ((_%e4130241472%_
                                       (gx#syntax-e _%hd4129941466%_)))
                                  (let ((_%lp-hd4130341476%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4130241472%_)))
                                        (_%lp-tl4130441479%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4130241472%_))))
                                    (_%loop4130141462%_
                                     _%lp-tl4130441479%_
                                     (cons _%lp-hd4130341476%_
                                           _%fini4130541469%_))))
                                (let ((_%fini4130641482%_
                                       (reverse _%fini4130541469%_)))
                                  (if (gx#stx-pair/null? _%tl4129441443%_)
                                      (let ((_g44665_
                                             (gx#syntax-split-splice
                                              _%tl4129441443%_
                                              '0)))
                                        (begin
                                          (let ((_g44666_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44665_)
                                                       (##values-length
                                                        _g44665_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44666_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44666_)))
                                          (let ((_%target4130741486%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44665_ 0)))
                                                (_%tl4130941489%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44665_ 1))))
                                            (if (gx#stx-null? _%tl4130941489%_)
                                                (letrec ((_%loop4131041492%_
                                                          (lambda (_%hd4130841496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4131441499%_)
                    (if (gx#stx-pair? _%hd4130841496%_)
                        (let ((_%e4131141502%_ (gx#syntax-e _%hd4130841496%_)))
                          (let ((_%lp-hd4131241506%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4131141502%_)))
                                (_%lp-tl4131341509%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4131141502%_))))
                            (_%loop4131041492%_
                             _%lp-tl4131341509%_
                             (cons _%lp-hd4131241506%_ _%body4131441499%_))))
                        (let ((_%body4131541512%_
                               (reverse _%body4131441499%_)))
                          ((lambda (_%L41516%_
                                    _%L41518%_
                                    _%L41519%_
                                    _%L41520%_
                                    _%L41521%_
                                    _%L41522%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4155541558%_
                                                  _%g4155641561%_)
                                           (cons _%g4155541558%_
                                                 _%g4155641561%_))
                                         '()
                                         _%L41522%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L41521%_
                                                      _%L41522%_)
                                                     (foldr (lambda (_%g4156341576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4156441579%_
                             _%g4156541581%_)
                      (cons (cons _%g4156441579%_ (cons _%g4156341576%_ '()))
                            _%g4156541581%_))
                    '()
                    _%L41521%_
                    _%L41522%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%g4156641584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4156741587%_)
                    (cons _%g4156641584%_ _%g4156741587%_))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons _%L41519%_
                                    (cons (cons (gx#datum->syntax '#f '$loop)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L41520%_
                                                   _%L41522%_)
                                                  (foldr (lambda (_%g4156841590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4156941593%_
                          _%g4157041595%_)
                   (cons (cons (gx#datum->syntax '#f 'begin)
                               (cons _%g4156941593%_
                                     (foldr (lambda (_%g4157141598%_
                                                     _%g4157241601%_)
                                              (cons _%g4157141598%_
                                                    _%g4157241601%_))
                                            '()
                                            _%g4156841590%_)))
                         _%g4157041595%_))
                 '()
                 _%L41520%_
                 _%L41522%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons '#!void
                                                            (foldr (lambda (_%g4157341604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4157441607%_)
                             (cons _%g4157341604%_ _%g4157441607%_))
                           '()
                           _%L41518%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())
                  _%L41516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4125041321%_ _%g4125141325%_)))
                           _%body4131541512%_
                           _%fini4130641482%_
                           _%hd4129641450%_
                           _%step4127441428%_
                           _%init4127541431%_
                           _%var4127641433%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4131041492%_
                                                   _%target4130741486%_
                                                   '()))
                                                (_%g4125041321%_
                                                 _%g4125141325%_)))))
                                      (_%g4125041321%_ _%g4125141325%_)))))))
                  (_%loop4130141462%_ _%target4129841456%_ '()))
                (_%g4125041321%_ _%g4125141325%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4125041321%_
                                               _%g4125141325%_))))
                                      (_%g4125041321%_ _%g4125141325%_))))
                              (_%g4125041321%_ _%g4125141325%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4126741354%_
                                                   _%target4126441348%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4125041321%_
                                                 _%g4125141325%_)))))
                                      (_%g4125041321%_ _%g4125141325%_))))
                              (_%g4125041321%_ _%g4125141325%_))))
                      (_%g4125041321%_ _%g4125141325%_)))))
          (_%g4124941610%_ _%$stx41246%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx41618%_)
        (let* ((_%g4162241646%_
                (lambda (_%g4162341642%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4162341642%_)))
               (_%g4162141731%_
                (lambda (_%g4162341650%_)
                  (if (gx#stx-pair? _%g4162341650%_)
                      (let ((_%e4162641653%_ (gx#syntax-e _%g4162341650%_)))
                        (let ((_%hd4162741657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4162641653%_)))
                              (_%tl4162841660%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4162641653%_))))
                          (if (gx#stx-pair? _%tl4162841660%_)
                              (let ((_%e4162941663%_
                                     (gx#syntax-e _%tl4162841660%_)))
                                (let ((_%hd4163041667%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4162941663%_)))
                                      (_%tl4163141670%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4162941663%_))))
                                  (if (gx#stx-pair/null? _%tl4163141670%_)
                                      (let ((_g44667_
                                             (gx#syntax-split-splice
                                              _%tl4163141670%_
                                              '0)))
                                        (begin
                                          (let ((_g44668_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44667_)
                                                       (##values-length
                                                        _g44667_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44668_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44668_)))
                                          (let ((_%target4163241673%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44667_ 0)))
                                                (_%tl4163441676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44667_ 1))))
                                            (if (gx#stx-null? _%tl4163441676%_)
                                                (letrec ((_%loop4163541679%_
                                                          (lambda (_%hd4163341683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4163941686%_)
                    (if (gx#stx-pair? _%hd4163341683%_)
                        (let ((_%e4163641689%_ (gx#syntax-e _%hd4163341683%_)))
                          (let ((_%lp-hd4163741693%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4163641689%_)))
                                (_%lp-tl4163841696%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4163641689%_))))
                            (_%loop4163541679%_
                             _%lp-tl4163841696%_
                             (cons _%lp-hd4163741693%_ _%body4163941686%_))))
                        (let ((_%body4164041699%_
                               (reverse _%body4163941686%_)))
                          ((lambda (_%L41703%_ _%L41705%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'when)
                                                           (cons _%L41705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4172241725%_ _%g4172341728%_)
                                  (cons _%g4172241725%_ _%g4172341728%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%L41703%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4164041699%_
                           _%hd4163041667%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4163541679%_
                                                   _%target4163241673%_
                                                   '()))
                                                (_%g4162241646%_
                                                 _%g4162341650%_)))))
                                      (_%g4162241646%_ _%g4162341650%_))))
                              (_%g4162241646%_ _%g4162341650%_))))
                      (_%g4162241646%_ _%g4162341650%_)))))
          (_%g4162141731%_ _%$stx41618%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx41736%_)
        (let* ((_%g4174041764%_
                (lambda (_%g4174141760%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4174141760%_)))
               (_%g4173941849%_
                (lambda (_%g4174141768%_)
                  (if (gx#stx-pair? _%g4174141768%_)
                      (let ((_%e4174441771%_ (gx#syntax-e _%g4174141768%_)))
                        (let ((_%hd4174541775%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4174441771%_)))
                              (_%tl4174641778%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4174441771%_))))
                          (if (gx#stx-pair? _%tl4174641778%_)
                              (let ((_%e4174741781%_
                                     (gx#syntax-e _%tl4174641778%_)))
                                (let ((_%hd4174841785%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4174741781%_)))
                                      (_%tl4174941788%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4174741781%_))))
                                  (if (gx#stx-pair/null? _%tl4174941788%_)
                                      (let ((_g44669_
                                             (gx#syntax-split-splice
                                              _%tl4174941788%_
                                              '0)))
                                        (begin
                                          (let ((_g44670_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44669_)
                                                       (##values-length
                                                        _g44669_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44670_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44670_)))
                                          (let ((_%target4175041791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44669_ 0)))
                                                (_%tl4175241794%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44669_ 1))))
                                            (if (gx#stx-null? _%tl4175241794%_)
                                                (letrec ((_%loop4175341797%_
                                                          (lambda (_%hd4175141801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4175741804%_)
                    (if (gx#stx-pair? _%hd4175141801%_)
                        (let ((_%e4175441807%_ (gx#syntax-e _%hd4175141801%_)))
                          (let ((_%lp-hd4175541811%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4175441807%_)))
                                (_%lp-tl4175641814%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4175441807%_))))
                            (_%loop4175341797%_
                             _%lp-tl4175641814%_
                             (cons _%lp-hd4175541811%_ _%body4175741804%_))))
                        (let ((_%body4175841817%_
                               (reverse _%body4175741804%_)))
                          ((lambda (_%L41821%_ _%L41823%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'unless)
                                                           (cons _%L41823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4184041843%_ _%g4184141846%_)
                                  (cons _%g4184041843%_ _%g4184141846%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%L41821%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4175841817%_
                           _%hd4174841785%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4175341797%_
                                                   _%target4175041791%_
                                                   '()))
                                                (_%g4174041764%_
                                                 _%g4174141768%_)))))
                                      (_%g4174041764%_ _%g4174141768%_))))
                              (_%g4174041764%_ _%g4174141768%_))))
                      (_%g4174041764%_ _%g4174141768%_)))))
          (_%g4173941849%_ _%$stx41736%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx41854%_)
        (let ((_%g4185741864%_
               (lambda (_%g4185841860%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4185841860%_))))
          (_%g4185741864%_ _%$stx41854%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx41868%_)
        (let ((_%g4187141878%_
               (lambda (_%g4187241874%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4187241874%_))))
          (_%g4187141878%_ _%$stx41868%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx41882%_)
        (letrec ((_%generate-thunk41885%_
                  (lambda (_%body43224%_)
                    (if (null? _%body43224%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx41882%_)
                        (let* ((_%g4322743244%_
                                (lambda (_%g4322843240%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g4322843240%_)))
                               (_%g4322643305%_
                                (lambda (_%g4322843248%_)
                                  (if (gx#stx-pair/null? _%g4322843248%_)
                                      (let ((_g44671_
                                             (gx#syntax-split-splice
                                              _%g4322843248%_
                                              '0)))
                                        (begin
                                          (let ((_g44672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44671_)
                                                       (##values-length
                                                        _g44671_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44672_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44672_)))
                                          (let ((_%target4323043251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44671_ 0)))
                                                (_%tl4323243254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44671_ 1))))
                                            (if (gx#stx-null? _%tl4323243254%_)
                                                (letrec ((_%loop4323343257%_
                                                          (lambda (_%hd4323143261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e4323743264%_)
                    (if (gx#stx-pair? _%hd4323143261%_)
                        (let ((_%e4323443267%_ (gx#syntax-e _%hd4323143261%_)))
                          (let ((_%lp-hd4323543271%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4323443267%_)))
                                (_%lp-tl4323643274%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4323443267%_))))
                            (_%loop4323343257%_
                             _%lp-tl4323643274%_
                             (cons _%lp-hd4323543271%_ _%e4323743264%_))))
                        (let ((_%e4323843277%_ (reverse _%e4323743264%_)))
                          ((lambda (_%L43281%_)
                             (cons (gx#datum->syntax '#f 'lambda)
                                   (cons '()
                                         (foldr (lambda (_%g4329643299%_
                                                         _%g4329743302%_)
                                                  (cons _%g4329643299%_
                                                        _%g4329743302%_))
                                                '()
                                                _%L43281%_))))
                           _%e4323843277%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4323343257%_
                                                   _%target4323043251%_
                                                   '()))
                                                (_%g4322743244%_
                                                 _%g4322843248%_)))))
                                      (_%g4322743244%_ _%g4322843248%_)))))
                          (_%g4322643305%_ (reverse _%body43224%_))))))
                 (_%generate-fini41887%_
                  (lambda (_%thunk43105%_ _%fini43107%_)
                    (let* ((_%g4310943133%_
                            (lambda (_%g4311043129%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4311043129%_)))
                           (_%g4310843220%_
                            (lambda (_%g4311043137%_)
                              (if (gx#stx-pair? _%g4311043137%_)
                                  (let ((_%e4311343140%_
                                         (gx#syntax-e _%g4311043137%_)))
                                    (let ((_%hd4311443144%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4311343140%_)))
                                          (_%tl4311543147%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4311343140%_))))
                                      (if (gx#stx-pair? _%tl4311543147%_)
                                          (let ((_%e4311643150%_
                                                 (gx#syntax-e
                                                  _%tl4311543147%_)))
                                            (let ((_%hd4311743154%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4311643150%_)))
                                                  (_%tl4311843157%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4311643150%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4311743154%_)
                                                  (let ((_g44673_
                                                         (gx#syntax-split-splice
                                                          _%hd4311743154%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g44674_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g44673_)
                           (##values-length _g44673_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g44674_ 2)))
                    (error "Context expects 2 values" _g44674_)))
              (let ((_%target4311943160%_
                     (let () (declare (not safe)) (##values-ref _g44673_ 0)))
                    (_%tl4312143163%_
                     (let () (declare (not safe)) (##values-ref _g44673_ 1))))
                (if (gx#stx-null? _%tl4312143163%_)
                    (letrec ((_%loop4312243166%_
                              (lambda (_%hd4312043170%_ _%e4312643173%_)
                                (if (gx#stx-pair? _%hd4312043170%_)
                                    (let ((_%e4312343176%_
                                           (gx#syntax-e _%hd4312043170%_)))
                                      (let ((_%lp-hd4312443180%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4312343176%_)))
                                            (_%lp-tl4312543183%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4312343176%_))))
                                        (_%loop4312243166%_
                                         _%lp-tl4312543183%_
                                         (cons _%lp-hd4312443180%_
                                               _%e4312643173%_))))
                                    (let ((_%e4312743186%_
                                           (reverse _%e4312643173%_)))
                                      (if (gx#stx-null? _%tl4311843157%_)
                                          ((lambda (_%L43190%_ _%L43192%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'with-unwind-protect)
                                                   (cons _%L43192%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '()
                                   (foldr (lambda (_%g4321143214%_
                                                   _%g4321243217%_)
                                            (cons _%g4321143214%_
                                                  _%g4321243217%_))
                                          '()
                                          _%L43190%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%e4312743186%_
                                           _%hd4311443144%_)
                                          (_%g4310943133%_
                                           _%g4311043137%_)))))))
                      (_%loop4312243166%_ _%target4311943160%_ '()))
                    (_%g4310943133%_ _%g4311043137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4310943133%_
                                                   _%g4311043137%_))))
                                          (_%g4310943133%_ _%g4311043137%_))))
                                  (_%g4310943133%_ _%g4311043137%_)))))
                      (_%g4310843220%_ (list _%thunk43105%_ _%fini43107%_)))))
                 (_%generate-catch41888%_
                  (lambda (_%handlers42512%_ _%thunk42514%_)
                    (let* ((_%g4251642524%_
                            (lambda (_%g4251742520%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4251742520%_)))
                           (_%g4251543101%_
                            (lambda (_%g4251742528%_)
                              ((lambda (_%L42531%_)
                                 (let _%lp42543%_ ((_%rest42546%_
                                                    _%handlers42512%_)
                                                   (_%clauses42548%_ '()))
                                   (let* ((_%rest4254942557%_ _%rest42546%_)
                                          (_%else4255142690%_
                                           (lambda ()
                                             (let* ((_%g4256942593%_
                                                     (lambda (_%g4257042589%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4257042589%_)))
                                                    (_%g4256842686%_
                                                     (lambda (_%g4257042597%_)
                                                       (if (gx#stx-pair?
                                                            _%g4257042597%_)
                                                           (let ((_%e4257342600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g4257042597%_)))
                     (let ((_%hd4257442604%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4257342600%_)))
                           (_%tl4257542607%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4257342600%_))))
                       (if (gx#stx-pair/null? _%hd4257442604%_)
                           (let ((_g44675_
                                  (gx#syntax-split-splice
                                   _%hd4257442604%_
                                   '0)))
                             (begin
                               (let ((_g44676_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g44675_)
                                            (##values-length _g44675_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g44676_ 2)))
                                     (error "Context expects 2 values"
                                            _g44676_)))
                               (let ((_%target4257642610%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g44675_ 0)))
                                     (_%tl4257842613%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g44675_ 1))))
                                 (if (gx#stx-null? _%tl4257842613%_)
                                     (letrec ((_%loop4257942616%_
                                               (lambda (_%hd4257742620%_
                                                        _%clause4258342623%_)
                                                 (if (gx#stx-pair?
                                                      _%hd4257742620%_)
                                                     (let ((_%e4258042626%_
                                                            (gx#syntax-e
                                                             _%hd4257742620%_)))
                                                       (let ((_%lp-hd4258142630%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e4258042626%_)))
                     (_%lp-tl4258242633%_
                      (let () (declare (not safe)) (##cdr _%e4258042626%_))))
                 (_%loop4257942616%_
                  _%lp-tl4258242633%_
                  (cons _%lp-hd4258142630%_ _%clause4258342623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause4258442636%_
                                                            (reverse _%clause4258342623%_)))
                                                       (if (gx#stx-pair?
                                                            _%tl4257542607%_)
                                                           (let ((_%e4258542640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4257542607%_)))
                     (let ((_%hd4258642644%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4258542640%_)))
                           (_%tl4258742647%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4258542640%_))))
                       (if (gx#stx-null? _%tl4258742647%_)
                           ((lambda (_%L42650%_ _%L42652%_)
                              (cons (gx#datum->syntax '#f 'with-catch)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%L42531%_ '())
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cond)
                          (foldr (lambda (_%g4267742680%_ _%g4267842683%_)
                                   (cons _%g4267742680%_ _%g4267842683%_))
                                 (cons (cons (gx#datum->syntax '#f 'else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise)
                                                         (cons _%L42531%_ '()))
                                                   '()))
                                       '())
                                 _%L42652%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%L42650%_ '()))))
                            _%hd4258642644%_
                            _%clause4258442636%_)
                           (_%g4256942593%_ _%g4257042597%_))))
                   (_%g4256942593%_ _%g4257042597%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop4257942616%_
                                        _%target4257642610%_
                                        '()))
                                     (_%g4256942593%_ _%g4257042597%_)))))
                           (_%g4256942593%_ _%g4257042597%_))))
                   (_%g4256942593%_ _%g4257042597%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4256842686%_
                                                (list _%clauses42548%_
                                                      _%thunk42514%_)))))
                                          (_%K4255343085%_
                                           (lambda (_%rest42694%_ _%hd42696%_)
                                             (let* ((_%__stx4439544396%_
                                                     _%hd42696%_)
                                                    (_%g4270142771%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx4439544396%_))))
                                               (let ((_%__kont4439844399%_
                                                      (lambda (_%L43064%_
                                                               _%L43066%_)
                                                        (_%lp42543%_
                                                         _%rest42694%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%L43066%_ '()))
                                   (cons _%L42531%_ '()))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons _%L43064%_ '())))
                       _%clauses42548%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4440044401%_
                                                      (lambda (_%L42996%_
                                                               _%L42998%_
                                                               _%L42999%_)
                                                        (_%lp42543%_
                                                         _%rest42694%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%L42999%_ '()))
                                   (cons _%L42531%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%L42998%_
                                                           (cons _%L42531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4301843021%_
                                                               _%g4301943024%_)
                                                        (cons _%g4301843021%_
                                                              _%g4301943024%_))
                                                      '()
                                                      _%L42996%_)))
                                   '()))
                       _%clauses42548%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4440444405%_
                                                      (lambda (_%L42902%_
                                                               _%L42904%_)
                                                        (_%lp42543%_
                                                         _%rest42694%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%L42904%_
                                                           (cons _%L42531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4292042923%_
                                                               _%g4292142926%_)
                                                        (cons _%g4292042923%_
                                                              _%g4292142926%_))
                                                      '()
                                                      _%L42902%_)))
                                   '()))
                       _%clauses42548%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4440844409%_
                                                      (lambda (_%L42818%_
                                                               _%L42820%_)
                                                        (_%lp42543%_
                                                         _%rest42694%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (foldr (lambda (_%g4283642839%_
                                                         _%g4283742842%_)
                                                  (cons _%g4283642839%_
                                                        _%g4283742842%_))
                                                '()
                                                _%L42818%_))
                                   '()))
                       _%clauses42548%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__match4450044501%_
                                                         (lambda (_%e4275442778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd4275542782%_
                          _%tl4275642785%_
                          _%__splice4441044411%_
                          _%target4275742788%_
                          _%tl4275942791%_)
                   (letrec ((_%loop4276042794%_
                             (lambda (_%hd4275842798%_ _%body4276442801%_)
                               (if (gx#stx-pair? _%hd4275842798%_)
                                   (let ((_%e4276142804%_
                                          (gx#syntax-e _%hd4275842798%_)))
                                     (let ((_%lp-tl4276342811%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4276142804%_)))
                                           (_%lp-hd4276242808%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4276142804%_))))
                                       (_%loop4276042794%_
                                        _%lp-tl4276342811%_
                                        (cons _%lp-hd4276242808%_
                                              _%body4276442801%_))))
                                   (let ((_%body4276542814%_
                                          (reverse _%body4276442801%_)))
                                     (let ((_%L42818%_ _%body4276542814%_)
                                           (_%L42820%_ _%hd4275542782%_))
                                       (if (gx#underscore? _%L42820%_)
                                           (_%__kont4440844409%_
                                            _%L42818%_
                                            _%L42820%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g4270142771%_)))))))))
                     (_%loop4276042794%_ _%target4275742788%_ '()))))
                (_%__match4448644487%_
                 (lambda (_%e4273742852%_
                          _%hd4273842856%_
                          _%tl4273942859%_
                          _%e4274042862%_
                          _%hd4274142866%_
                          _%tl4274242869%_
                          _%__splice4440644407%_
                          _%target4274342872%_
                          _%tl4274542875%_)
                   (letrec ((_%loop4274642878%_
                             (lambda (_%hd4274442882%_ _%body4275042885%_)
                               (if (gx#stx-pair? _%hd4274442882%_)
                                   (let ((_%e4274742888%_
                                          (gx#syntax-e _%hd4274442882%_)))
                                     (let ((_%lp-tl4274942895%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4274742888%_)))
                                           (_%lp-hd4274842892%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4274742888%_))))
                                       (_%loop4274642878%_
                                        _%lp-tl4274942895%_
                                        (cons _%lp-hd4274842892%_
                                              _%body4275042885%_))))
                                   (let ((_%body4275142898%_
                                          (reverse _%body4275042885%_)))
                                     (let ((_%L42902%_ _%body4275142898%_)
                                           (_%L42904%_ _%hd4274142866%_))
                                       (if (gx#identifier? _%L42904%_)
                                           (_%__kont4440444405%_
                                            _%L42902%_
                                            _%L42904%_)
                                           (_%__match4450044501%_
                                            _%e4273742852%_
                                            _%hd4273842856%_
                                            _%tl4273942859%_
                                            _%__splice4440644407%_
                                            _%target4274342872%_
                                            _%tl4274542875%_))))))))
                     (_%loop4274642878%_ _%target4274342872%_ '()))))
                (_%__match4446444465%_
                 (lambda (_%e4271742936%_
                          _%hd4271842940%_
                          _%tl4271942943%_
                          _%e4272042946%_
                          _%hd4272142950%_
                          _%tl4272242953%_
                          _%e4272342956%_
                          _%hd4272442960%_
                          _%tl4272542963%_
                          _%__splice4440244403%_
                          _%target4272642966%_
                          _%tl4272842969%_)
                   (letrec ((_%loop4272942972%_
                             (lambda (_%hd4272742976%_ _%body4273342979%_)
                               (if (gx#stx-pair? _%hd4272742976%_)
                                   (let ((_%e4273042982%_
                                          (gx#syntax-e _%hd4272742976%_)))
                                     (let ((_%lp-tl4273242989%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4273042982%_)))
                                           (_%lp-hd4273142986%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4273042982%_))))
                                       (_%loop4272942972%_
                                        _%lp-tl4273242989%_
                                        (cons _%lp-hd4273142986%_
                                              _%body4273342979%_))))
                                   (let ((_%body4273442992%_
                                          (reverse _%body4273342979%_)))
                                     (let ((_%L42996%_ _%body4273442992%_)
                                           (_%L42998%_ _%hd4272442960%_)
                                           (_%L42999%_ _%hd4272142950%_))
                                       (if (gx#identifier? _%L42998%_)
                                           (_%__kont4440044401%_
                                            _%L42996%_
                                            _%L42998%_
                                            _%L42999%_)
                                           (_%__match4450044501%_
                                            _%e4271742936%_
                                            _%hd4271842940%_
                                            _%tl4271942943%_
                                            _%__splice4440244403%_
                                            _%target4272642966%_
                                            _%tl4272842969%_))))))))
                     (_%loop4272942972%_ _%target4272642966%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx4439544396%_)
                                                       (let ((_%e4270543034%_
                                                              (gx#syntax-e
                                                               _%__stx4439544396%_)))
                                                         (let ((_%tl4270743041%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4270543034%_)))
                       (_%hd4270643038%_
                        (let () (declare (not safe)) (##car _%e4270543034%_))))
                   (if (gx#stx-pair? _%tl4270743041%_)
                       (let ((_%e4270843044%_ (gx#syntax-e _%tl4270743041%_)))
                         (let ((_%tl4271043051%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4270843044%_)))
                               (_%hd4270943048%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4270843044%_))))
                           (if (gx#identifier? _%hd4270943048%_)
                               (if (gx#free-identifier=?
                                    |gerbil/core/more-sugar[1]#_g44677_|
                                    _%hd4270943048%_)
                                   (if (gx#stx-pair? _%tl4271043051%_)
                                       (let ((_%e4271143054%_
                                              (gx#syntax-e _%tl4271043051%_)))
                                         (let ((_%tl4271343061%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4271143054%_)))
                                               (_%hd4271243058%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4271143054%_))))
                                           (if (gx#stx-null? _%tl4271343061%_)
                                               (_%__kont4439844399%_
                                                _%hd4271243058%_
                                                _%hd4270643038%_)
                                               (if (gx#stx-pair?
                                                    _%hd4270643038%_)
                                                   (let ((_%e4272042946%_
                                                          (gx#syntax-e
                                                           _%hd4270643038%_)))
                                                     (let ((_%tl4272242953%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4272042946%_)))
                                                           (_%hd4272142950%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4272042946%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl4272242953%_)
                                                           (let ((_%e4272342956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4272242953%_)))
                     (let ((_%tl4272542963%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4272342956%_)))
                           (_%hd4272442960%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4272342956%_))))
                       (if (gx#stx-null? _%tl4272542963%_)
                           (if (gx#stx-pair/null? _%tl4270743041%_)
                               (let ((_%__splice4440244403%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4270743041%_
                                       '0)))
                                 (let ((_%tl4272842969%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4440244403%_
                                           '1)))
                                       (_%target4272642966%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4440244403%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4272842969%_)
                                       (_%__match4446444465%_
                                        _%e4270543034%_
                                        _%hd4270643038%_
                                        _%tl4270743041%_
                                        _%e4272042946%_
                                        _%hd4272142950%_
                                        _%tl4272242953%_
                                        _%e4272342956%_
                                        _%hd4272442960%_
                                        _%tl4272542963%_
                                        _%__splice4440244403%_
                                        _%target4272642966%_
                                        _%tl4272842969%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4270142771%_)))))
                               (let () (declare (not safe)) (_%g4270142771%_)))
                           (if (gx#stx-pair/null? _%tl4270743041%_)
                               (let ((_%__splice4441044411%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4270743041%_
                                       '0)))
                                 (let ((_%tl4275942791%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4441044411%_
                                           '1)))
                                       (_%target4275742788%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4441044411%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4275942791%_)
                                       (_%__match4450044501%_
                                        _%e4270543034%_
                                        _%hd4270643038%_
                                        _%tl4270743041%_
                                        _%__splice4441044411%_
                                        _%target4275742788%_
                                        _%tl4275942791%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4270142771%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4270142771%_))))))
                   (if (gx#stx-null? _%tl4272242953%_)
                       (if (gx#stx-pair/null? _%tl4270743041%_)
                           (let ((_%__splice4440644407%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4270743041%_
                                   '0)))
                             (let ((_%tl4274542875%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4440644407%_
                                       '1)))
                                   (_%target4274342872%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4440644407%_
                                       '0))))
                               (if (gx#stx-null? _%tl4274542875%_)
                                   (_%__match4448644487%_
                                    _%e4270543034%_
                                    _%hd4270643038%_
                                    _%tl4270743041%_
                                    _%e4272042946%_
                                    _%hd4272142950%_
                                    _%tl4272242953%_
                                    _%__splice4440644407%_
                                    _%target4274342872%_
                                    _%tl4274542875%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4270142771%_)))))
                           (let () (declare (not safe)) (_%g4270142771%_)))
                       (if (gx#stx-pair/null? _%tl4270743041%_)
                           (let ((_%__splice4441044411%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4270743041%_
                                   '0)))
                             (let ((_%tl4275942791%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4441044411%_
                                       '1)))
                                   (_%target4275742788%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4441044411%_
                                       '0))))
                               (if (gx#stx-null? _%tl4275942791%_)
                                   (_%__match4450044501%_
                                    _%e4270543034%_
                                    _%hd4270643038%_
                                    _%tl4270743041%_
                                    _%__splice4441044411%_
                                    _%target4275742788%_
                                    _%tl4275942791%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4270142771%_)))))
                           (let () (declare (not safe)) (_%g4270142771%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4270743041%_)
                                                       (let ((_%__splice4441044411%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4270743041%_
                                                               '0)))
                                                         (let ((_%tl4275942791%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4441044411%_ '1)))
                       (_%target4275742788%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4441044411%_ '0))))
                   (if (gx#stx-null? _%tl4275942791%_)
                       (_%__match4450044501%_
                        _%e4270543034%_
                        _%hd4270643038%_
                        _%tl4270743041%_
                        _%__splice4441044411%_
                        _%target4275742788%_
                        _%tl4275942791%_)
                       (let () (declare (not safe)) (_%g4270142771%_)))))
               (let () (declare (not safe)) (_%g4270142771%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? _%hd4270643038%_)
                                           (let ((_%e4272042946%_
                                                  (gx#syntax-e
                                                   _%hd4270643038%_)))
                                             (let ((_%tl4272242953%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4272042946%_)))
                                                   (_%hd4272142950%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4272042946%_))))
                                               (if (gx#stx-pair?
                                                    _%tl4272242953%_)
                                                   (let ((_%e4272342956%_
                                                          (gx#syntax-e
                                                           _%tl4272242953%_)))
                                                     (let ((_%tl4272542963%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4272342956%_)))
                                                           (_%hd4272442960%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4272342956%_))))
                                                       (if (gx#stx-null?
                                                            _%tl4272542963%_)
                                                           (if (gx#stx-pair/null?
                                                                _%tl4270743041%_)
                                                               (let ((_%__splice4440244403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-split-splice->vector
                               _%tl4270743041%_
                               '0)))
                         (let ((_%tl4272842969%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4440244403%_ '1)))
                               (_%target4272642966%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4440244403%_ '0))))
                           (if (gx#stx-null? _%tl4272842969%_)
                               (_%__match4446444465%_
                                _%e4270543034%_
                                _%hd4270643038%_
                                _%tl4270743041%_
                                _%e4272042946%_
                                _%hd4272142950%_
                                _%tl4272242953%_
                                _%e4272342956%_
                                _%hd4272442960%_
                                _%tl4272542963%_
                                _%__splice4440244403%_
                                _%target4272642966%_
                                _%tl4272842969%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4270142771%_)))))
                       (let () (declare (not safe)) (_%g4270142771%_)))
                   (if (gx#stx-pair/null? _%tl4270743041%_)
                       (let ((_%__splice4441044411%_
                              (gx#syntax-split-splice->vector
                               _%tl4270743041%_
                               '0)))
                         (let ((_%tl4275942791%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4441044411%_ '1)))
                               (_%target4275742788%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4441044411%_ '0))))
                           (if (gx#stx-null? _%tl4275942791%_)
                               (_%__match4450044501%_
                                _%e4270543034%_
                                _%hd4270643038%_
                                _%tl4270743041%_
                                _%__splice4441044411%_
                                _%target4275742788%_
                                _%tl4275942791%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4270142771%_)))))
                       (let () (declare (not safe)) (_%g4270142771%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-null?
                                                        _%tl4272242953%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4270743041%_)
                                                           (let ((_%__splice4440644407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4270743041%_
                           '0)))
                     (let ((_%tl4274542875%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4440644407%_ '1)))
                           (_%target4274342872%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4440644407%_ '0))))
                       (if (gx#stx-null? _%tl4274542875%_)
                           (_%__match4448644487%_
                            _%e4270543034%_
                            _%hd4270643038%_
                            _%tl4270743041%_
                            _%e4272042946%_
                            _%hd4272142950%_
                            _%tl4272242953%_
                            _%__splice4440644407%_
                            _%target4274342872%_
                            _%tl4274542875%_)
                           (let () (declare (not safe)) (_%g4270142771%_)))))
                   (let () (declare (not safe)) (_%g4270142771%_)))
               (if (gx#stx-pair/null? _%tl4270743041%_)
                   (let ((_%__splice4441044411%_
                          (gx#syntax-split-splice->vector
                           _%tl4270743041%_
                           '0)))
                     (let ((_%tl4275942791%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4441044411%_ '1)))
                           (_%target4275742788%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4441044411%_ '0))))
                       (if (gx#stx-null? _%tl4275942791%_)
                           (_%__match4450044501%_
                            _%e4270543034%_
                            _%hd4270643038%_
                            _%tl4270743041%_
                            _%__splice4441044411%_
                            _%target4275742788%_
                            _%tl4275942791%_)
                           (let () (declare (not safe)) (_%g4270142771%_)))))
                   (let () (declare (not safe)) (_%g4270142771%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _%tl4270743041%_)
                                               (let ((_%__splice4441044411%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4270743041%_
                                                       '0)))
                                                 (let ((_%tl4275942791%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4441044411%_
                                                           '1)))
                                                       (_%target4275742788%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4441044411%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4275942791%_)
                                                       (_%__match4450044501%_
                                                        _%e4270543034%_
                                                        _%hd4270643038%_
                                                        _%tl4270743041%_
                                                        _%__splice4441044411%_
                                                        _%target4275742788%_
                                                        _%tl4275942791%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4270142771%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4270142771%_)))))
                                   (if (gx#stx-pair? _%hd4270643038%_)
                                       (let ((_%e4272042946%_
                                              (gx#syntax-e _%hd4270643038%_)))
                                         (let ((_%tl4272242953%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4272042946%_)))
                                               (_%hd4272142950%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4272042946%_))))
                                           (if (gx#stx-pair? _%tl4272242953%_)
                                               (let ((_%e4272342956%_
                                                      (gx#syntax-e
                                                       _%tl4272242953%_)))
                                                 (let ((_%tl4272542963%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4272342956%_)))
                                                       (_%hd4272442960%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4272342956%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4272542963%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4270743041%_)
                                                           (let ((_%__splice4440244403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4270743041%_
                           '0)))
                     (let ((_%tl4272842969%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4440244403%_ '1)))
                           (_%target4272642966%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4440244403%_ '0))))
                       (if (gx#stx-null? _%tl4272842969%_)
                           (_%__match4446444465%_
                            _%e4270543034%_
                            _%hd4270643038%_
                            _%tl4270743041%_
                            _%e4272042946%_
                            _%hd4272142950%_
                            _%tl4272242953%_
                            _%e4272342956%_
                            _%hd4272442960%_
                            _%tl4272542963%_
                            _%__splice4440244403%_
                            _%target4272642966%_
                            _%tl4272842969%_)
                           (let () (declare (not safe)) (_%g4270142771%_)))))
                   (let () (declare (not safe)) (_%g4270142771%_)))
               (if (gx#stx-pair/null? _%tl4270743041%_)
                   (let ((_%__splice4441044411%_
                          (gx#syntax-split-splice->vector
                           _%tl4270743041%_
                           '0)))
                     (let ((_%tl4275942791%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4441044411%_ '1)))
                           (_%target4275742788%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4441044411%_ '0))))
                       (if (gx#stx-null? _%tl4275942791%_)
                           (_%__match4450044501%_
                            _%e4270543034%_
                            _%hd4270643038%_
                            _%tl4270743041%_
                            _%__splice4441044411%_
                            _%target4275742788%_
                            _%tl4275942791%_)
                           (let () (declare (not safe)) (_%g4270142771%_)))))
                   (let () (declare (not safe)) (_%g4270142771%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%tl4272242953%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4270743041%_)
                                                       (let ((_%__splice4440644407%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4270743041%_
                                                               '0)))
                                                         (let ((_%tl4274542875%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4440644407%_ '1)))
                       (_%target4274342872%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4440644407%_ '0))))
                   (if (gx#stx-null? _%tl4274542875%_)
                       (_%__match4448644487%_
                        _%e4270543034%_
                        _%hd4270643038%_
                        _%tl4270743041%_
                        _%e4272042946%_
                        _%hd4272142950%_
                        _%tl4272242953%_
                        _%__splice4440644407%_
                        _%target4274342872%_
                        _%tl4274542875%_)
                       (let () (declare (not safe)) (_%g4270142771%_)))))
               (let () (declare (not safe)) (_%g4270142771%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4270743041%_)
                                                       (let ((_%__splice4441044411%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4270743041%_
                                                               '0)))
                                                         (let ((_%tl4275942791%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4441044411%_ '1)))
                       (_%target4275742788%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4441044411%_ '0))))
                   (if (gx#stx-null? _%tl4275942791%_)
                       (_%__match4450044501%_
                        _%e4270543034%_
                        _%hd4270643038%_
                        _%tl4270743041%_
                        _%__splice4441044411%_
                        _%target4275742788%_
                        _%tl4275942791%_)
                       (let () (declare (not safe)) (_%g4270142771%_)))))
               (let () (declare (not safe)) (_%g4270142771%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair/null? _%tl4270743041%_)
                                           (let ((_%__splice4441044411%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4270743041%_
                                                   '0)))
                                             (let ((_%tl4275942791%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4441044411%_
                                                       '1)))
                                                   (_%target4275742788%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4441044411%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4275942791%_)
                                                   (_%__match4450044501%_
                                                    _%e4270543034%_
                                                    _%hd4270643038%_
                                                    _%tl4270743041%_
                                                    _%__splice4441044411%_
                                                    _%target4275742788%_
                                                    _%tl4275942791%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4270142771%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4270142771%_)))))
                               (if (gx#stx-pair? _%hd4270643038%_)
                                   (let ((_%e4272042946%_
                                          (gx#syntax-e _%hd4270643038%_)))
                                     (let ((_%tl4272242953%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4272042946%_)))
                                           (_%hd4272142950%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4272042946%_))))
                                       (if (gx#stx-pair? _%tl4272242953%_)
                                           (let ((_%e4272342956%_
                                                  (gx#syntax-e
                                                   _%tl4272242953%_)))
                                             (let ((_%tl4272542963%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4272342956%_)))
                                                   (_%hd4272442960%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4272342956%_))))
                                               (if (gx#stx-null?
                                                    _%tl4272542963%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4270743041%_)
                                                       (let ((_%__splice4440244403%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4270743041%_
                                                               '0)))
                                                         (let ((_%tl4272842969%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4440244403%_ '1)))
                       (_%target4272642966%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4440244403%_ '0))))
                   (if (gx#stx-null? _%tl4272842969%_)
                       (_%__match4446444465%_
                        _%e4270543034%_
                        _%hd4270643038%_
                        _%tl4270743041%_
                        _%e4272042946%_
                        _%hd4272142950%_
                        _%tl4272242953%_
                        _%e4272342956%_
                        _%hd4272442960%_
                        _%tl4272542963%_
                        _%__splice4440244403%_
                        _%target4272642966%_
                        _%tl4272842969%_)
                       (let () (declare (not safe)) (_%g4270142771%_)))))
               (let () (declare (not safe)) (_%g4270142771%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4270743041%_)
                                                       (let ((_%__splice4441044411%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4270743041%_
                                                               '0)))
                                                         (let ((_%tl4275942791%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4441044411%_ '1)))
                       (_%target4275742788%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4441044411%_ '0))))
                   (if (gx#stx-null? _%tl4275942791%_)
                       (_%__match4450044501%_
                        _%e4270543034%_
                        _%hd4270643038%_
                        _%tl4270743041%_
                        _%__splice4441044411%_
                        _%target4275742788%_
                        _%tl4275942791%_)
                       (let () (declare (not safe)) (_%g4270142771%_)))))
               (let () (declare (not safe)) (_%g4270142771%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-null? _%tl4272242953%_)
                                               (if (gx#stx-pair/null?
                                                    _%tl4270743041%_)
                                                   (let ((_%__splice4440644407%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4270743041%_
                                                           '0)))
                                                     (let ((_%tl4274542875%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4440644407%_
                                                               '1)))
                                                           (_%target4274342872%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4440644407%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4274542875%_)
                                                           (_%__match4448644487%_
                                                            _%e4270543034%_
                                                            _%hd4270643038%_
                                                            _%tl4270743041%_
                                                            _%e4272042946%_
                                                            _%hd4272142950%_
                                                            _%tl4272242953%_
                                                            _%__splice4440644407%_
                                                            _%target4274342872%_
                                                            _%tl4274542875%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4270142771%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4270142771%_)))
                                               (if (gx#stx-pair/null?
                                                    _%tl4270743041%_)
                                                   (let ((_%__splice4441044411%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4270743041%_
                                                           '0)))
                                                     (let ((_%tl4275942791%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4441044411%_
                                                               '1)))
                                                           (_%target4275742788%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4441044411%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4275942791%_)
                                                           (_%__match4450044501%_
                                                            _%e4270543034%_
                                                            _%hd4270643038%_
                                                            _%tl4270743041%_
                                                            _%__splice4441044411%_
                                                            _%target4275742788%_
                                                            _%tl4275942791%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4270142771%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4270142771%_)))))))
                                   (if (gx#stx-pair/null? _%tl4270743041%_)
                                       (let ((_%__splice4441044411%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4270743041%_
                                               '0)))
                                         (let ((_%tl4275942791%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4441044411%_
                                                   '1)))
                                               (_%target4275742788%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4441044411%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4275942791%_)
                                               (_%__match4450044501%_
                                                _%e4270543034%_
                                                _%hd4270643038%_
                                                _%tl4270743041%_
                                                _%__splice4441044411%_
                                                _%target4275742788%_
                                                _%tl4275942791%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4270142771%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4270142771%_)))))))
                       (if (gx#stx-pair? _%hd4270643038%_)
                           (let ((_%e4272042946%_
                                  (gx#syntax-e _%hd4270643038%_)))
                             (let ((_%tl4272242953%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4272042946%_)))
                                   (_%hd4272142950%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4272042946%_))))
                               (if (gx#stx-pair? _%tl4272242953%_)
                                   (let ((_%e4272342956%_
                                          (gx#syntax-e _%tl4272242953%_)))
                                     (let ((_%tl4272542963%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4272342956%_)))
                                           (_%hd4272442960%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4272342956%_))))
                                       (if (gx#stx-null? _%tl4272542963%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4270743041%_)
                                               (let ((_%__splice4440244403%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4270743041%_
                                                       '0)))
                                                 (let ((_%tl4272842969%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4440244403%_
                                                           '1)))
                                                       (_%target4272642966%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4440244403%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4272842969%_)
                                                       (_%__match4446444465%_
                                                        _%e4270543034%_
                                                        _%hd4270643038%_
                                                        _%tl4270743041%_
                                                        _%e4272042946%_
                                                        _%hd4272142950%_
                                                        _%tl4272242953%_
                                                        _%e4272342956%_
                                                        _%hd4272442960%_
                                                        _%tl4272542963%_
                                                        _%__splice4440244403%_
                                                        _%target4272642966%_
                                                        _%tl4272842969%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4270142771%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4270142771%_)))
                                           (if (gx#stx-pair/null?
                                                _%tl4270743041%_)
                                               (let ((_%__splice4441044411%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4270743041%_
                                                       '0)))
                                                 (let ((_%tl4275942791%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4441044411%_
                                                           '1)))
                                                       (_%target4275742788%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4441044411%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4275942791%_)
                                                       (_%__match4450044501%_
                                                        _%e4270543034%_
                                                        _%hd4270643038%_
                                                        _%tl4270743041%_
                                                        _%__splice4441044411%_
                                                        _%target4275742788%_
                                                        _%tl4275942791%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4270142771%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4270142771%_))))))
                                   (if (gx#stx-null? _%tl4272242953%_)
                                       (if (gx#stx-pair/null? _%tl4270743041%_)
                                           (let ((_%__splice4440644407%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4270743041%_
                                                   '0)))
                                             (let ((_%tl4274542875%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4440644407%_
                                                       '1)))
                                                   (_%target4274342872%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4440644407%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4274542875%_)
                                                   (_%__match4448644487%_
                                                    _%e4270543034%_
                                                    _%hd4270643038%_
                                                    _%tl4270743041%_
                                                    _%e4272042946%_
                                                    _%hd4272142950%_
                                                    _%tl4272242953%_
                                                    _%__splice4440644407%_
                                                    _%target4274342872%_
                                                    _%tl4274542875%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4270142771%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4270142771%_)))
                                       (if (gx#stx-pair/null? _%tl4270743041%_)
                                           (let ((_%__splice4441044411%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4270743041%_
                                                   '0)))
                                             (let ((_%tl4275942791%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4441044411%_
                                                       '1)))
                                                   (_%target4275742788%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4441044411%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4275942791%_)
                                                   (_%__match4450044501%_
                                                    _%e4270543034%_
                                                    _%hd4270643038%_
                                                    _%tl4270743041%_
                                                    _%__splice4441044411%_
                                                    _%target4275742788%_
                                                    _%tl4275942791%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4270142771%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4270142771%_)))))))
                           (if (gx#stx-pair/null? _%tl4270743041%_)
                               (let ((_%__splice4441044411%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4270743041%_
                                       '0)))
                                 (let ((_%tl4275942791%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4441044411%_
                                           '1)))
                                       (_%target4275742788%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4441044411%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4275942791%_)
                                       (_%__match4450044501%_
                                        _%e4270543034%_
                                        _%hd4270643038%_
                                        _%tl4270743041%_
                                        _%__splice4441044411%_
                                        _%target4275742788%_
                                        _%tl4275942791%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4270142771%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4270142771%_)))))))
               (let () (declare (not safe)) (_%g4270142771%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (pair? _%rest4254942557%_)
                                         (let ((_%hd4255443089%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%rest4254942557%_)))
                                               (_%tl4255543092%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest4254942557%_))))
                                           (let* ((_%hd43095%_
                                                   _%hd4255443089%_)
                                                  (_%rest43098%_
                                                   _%tl4255543092%_))
                                             (_%K4255343085%_
                                              _%rest43098%_
                                              _%hd43095%_)))
                                         (_%else4255142690%_)))))
                               _%g4251742528%_))))
                      (_%g4251543101%_ (gx#genident))))))
          (let* ((_%g4189041910%_
                  (lambda (_%g4189141906%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g4189141906%_)))
                 (_%g4188942508%_
                  (lambda (_%g4189141914%_)
                    (if (gx#stx-pair? _%g4189141914%_)
                        (let ((_%e4189341917%_ (gx#syntax-e _%g4189141914%_)))
                          (let ((_%hd4189441921%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4189341917%_)))
                                (_%tl4189541924%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4189341917%_))))
                            (if (gx#stx-pair/null? _%tl4189541924%_)
                                (let ((_g44678_
                                       (gx#syntax-split-splice
                                        _%tl4189541924%_
                                        '0)))
                                  (begin
                                    (let ((_g44679_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g44678_)
                                                 (##values-length _g44678_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g44679_ 2)))
                                          (error "Context expects 2 values"
                                                 _g44679_)))
                                    (let ((_%target4189641927%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g44678_ 0)))
                                          (_%tl4189841930%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g44678_ 1))))
                                      (if (gx#stx-null? _%tl4189841930%_)
                                          (letrec ((_%loop4189941933%_
                                                    (lambda (_%hd4189741937%_
                                                             _%e4190341940%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4189741937%_)
                                                          (let ((_%e4190041943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4189741937%_)))
                    (let ((_%lp-hd4190141947%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4190041943%_)))
                          (_%lp-tl4190241950%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4190041943%_))))
                      (_%loop4189941933%_
                       _%lp-tl4190241950%_
                       (cons _%lp-hd4190141947%_ _%e4190341940%_))))
                  (let ((_%e4190441953%_ (reverse _%e4190341940%_)))
                    ((lambda (_%L41957%_)
                       (let _%lp41974%_ ((_%rest41977%_
                                          (foldr (lambda (_%g4249942502%_
                                                          _%g4250042505%_)
                                                   (cons _%g4249942502%_
                                                         _%g4250042505%_))
                                                 '()
                                                 _%L41957%_))
                                         (_%body41979%_ '()))
                         (let* ((_%__stx4462144622%_ _%rest41977%_)
                                (_%g4198241994%_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%__stx4462144622%_))))
                           (let ((_%__kont4462444625%_
                                  (lambda (_%L42022%_ _%L42024%_)
                                    (let* ((_%__stx4456944570%_ _%L42024%_)
                                           (_%g4204142074%_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%__stx4456944570%_))))
                                      (let ((_%__kont4457244573%_
                                             (lambda (_%L42469%_)
                                               (if (gx#stx-null? _%L42022%_)
                                                   (_%generate-fini41887%_
                                                    (_%generate-thunk41885%_
                                                     _%body41979%_)
                                                    (foldr (lambda (_%g4248342486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4248442489%_)
                     (cons _%g4248342486%_ _%g4248442489%_))
                   '()
                   _%L42469%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced finally clause"
                                                    _%stx41882%_))))
                                            (_%__kont4457644577%_
                                             (lambda (_%L42132%_)
                                               (let _%lp42149%_ ((_%rest42152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L42022%_)
                         (_%handlers42154%_
                          (cons (foldr (lambda (_%g4241342416%_
                                                _%g4241442419%_)
                                         (cons _%g4241342416%_
                                               _%g4241442419%_))
                                       '()
                                       _%L42132%_)
                                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx4450344504%_
                                                         _%rest42152%_)
                                                        (_%g4215842198%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx4450344504%_))))
                                                   (let ((_%__kont4450644507%_
                                                          (lambda (_%L42383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L42385%_)
                    (_%lp42149%_
                     _%L42383%_
                     (cons (foldr (lambda (_%g4240142404%_ _%g4240242407%_)
                                    (cons _%g4240142404%_ _%g4240242407%_))
                                  '()
                                  _%L42385%_)
                           _%handlers42154%_))))
                 (_%__kont4451044511%_
                  (lambda (_%L42266%_)
                    (let* ((_%g4228742295%_
                            (lambda (_%g4228842291%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4228842291%_)))
                           (_%g4228642322%_
                            (lambda (_%g4228842299%_)
                              ((lambda (_%L42302%_)
                                 (_%generate-fini41887%_
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '() (cons _%L42302%_ '())))
                                  (foldr (lambda (_%g4231342316%_
                                                  _%g4231442319%_)
                                           (cons _%g4231342316%_
                                                 _%g4231442319%_))
                                         '()
                                         _%L42266%_)))
                               _%g4228842299%_))))
                      (_%g4228642322%_
                       (_%generate-catch41888%_
                        _%handlers42154%_
                        (_%generate-thunk41885%_ _%body41979%_))))))
                 (_%__kont4451444515%_
                  (lambda ()
                    (_%generate-catch41888%_
                     _%handlers42154%_
                     (_%generate-thunk41885%_ _%body41979%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%g4215742209%_
                                                             (lambda ()
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%__stx4450344504%_)
                           (_%__kont4451444515%_)
                           (let () (declare (not safe)) (_%g4215842198%_)))))
                    (_%__match4456444565%_
                     (lambda (_%e4217842216%_
                              _%hd4217942220%_
                              _%tl4218042223%_
                              _%e4218142226%_
                              _%hd4218242230%_
                              _%tl4218342233%_
                              _%__splice4451244513%_
                              _%target4218442236%_
                              _%tl4218642239%_)
                       (letrec ((_%loop4218742242%_
                                 (lambda (_%hd4218542246%_ _%fini4219142249%_)
                                   (if (gx#stx-pair? _%hd4218542246%_)
                                       (let ((_%e4218842252%_
                                              (gx#syntax-e _%hd4218542246%_)))
                                         (let ((_%lp-tl4219042259%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4218842252%_)))
                                               (_%lp-hd4218942256%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4218842252%_))))
                                           (_%loop4218742242%_
                                            _%lp-tl4219042259%_
                                            (cons _%lp-hd4218942256%_
                                                  _%fini4219142249%_))))
                                       (let ((_%fini4219242262%_
                                              (reverse _%fini4219142249%_)))
                                         (if (gx#stx-null? _%tl4218042223%_)
                                             (_%__kont4451044511%_
                                              _%fini4219242262%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4215842198%_))))))))
                         (_%loop4218742242%_ _%target4218442236%_ '()))))
                    (_%__match4454044541%_
                     (lambda (_%e4216242333%_
                              _%hd4216342337%_
                              _%tl4216442340%_
                              _%e4216542343%_
                              _%hd4216642347%_
                              _%tl4216742350%_
                              _%__splice4450844509%_
                              _%target4216842353%_
                              _%tl4217042356%_)
                       (letrec ((_%loop4217142359%_
                                 (lambda (_%hd4216942363%_
                                          _%handler4217542366%_)
                                   (if (gx#stx-pair? _%hd4216942363%_)
                                       (let ((_%e4217242369%_
                                              (gx#syntax-e _%hd4216942363%_)))
                                         (let ((_%lp-tl4217442376%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4217242369%_)))
                                               (_%lp-hd4217342373%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4217242369%_))))
                                           (_%loop4217142359%_
                                            _%lp-tl4217442376%_
                                            (cons _%lp-hd4217342373%_
                                                  _%handler4217542366%_))))
                                       (let ((_%handler4217642379%_
                                              (reverse _%handler4217542366%_)))
                                         (_%__kont4450644507%_
                                          _%tl4216442340%_
                                          _%handler4217642379%_))))))
                         (_%loop4217142359%_ _%target4216842353%_ '())))))
               (if (gx#stx-pair? _%__stx4450344504%_)
                   (let ((_%e4216242333%_ (gx#syntax-e _%__stx4450344504%_)))
                     (let ((_%tl4216442340%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4216242333%_)))
                           (_%hd4216342337%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4216242333%_))))
                       (if (gx#stx-pair? _%hd4216342337%_)
                           (let ((_%e4216542343%_
                                  (gx#syntax-e _%hd4216342337%_)))
                             (let ((_%tl4216742350%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4216542343%_)))
                                   (_%hd4216642347%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4216542343%_))))
                               (if (gx#identifier? _%hd4216642347%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/more-sugar[1]#_g44680_|
                                        _%hd4216642347%_)
                                       (if (gx#stx-pair/null? _%tl4216742350%_)
                                           (let ((_%__splice4450844509%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4216742350%_
                                                   '0)))
                                             (let ((_%tl4217042356%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4450844509%_
                                                       '1)))
                                                   (_%target4216842353%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4450844509%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4217042356%_)
                                                   (_%__match4454044541%_
                                                    _%e4216242333%_
                                                    _%hd4216342337%_
                                                    _%tl4216442340%_
                                                    _%e4216542343%_
                                                    _%hd4216642347%_
                                                    _%tl4216742350%_
                                                    _%__splice4450844509%_
                                                    _%target4216842353%_
                                                    _%tl4217042356%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4215842198%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4215842198%_)))
                                       (if (gx#free-identifier=?
                                            |gerbil/core/more-sugar[1]#_g44681_|
                                            _%hd4216642347%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4216742350%_)
                                               (let ((_%__splice4451244513%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4216742350%_
                                                       '0)))
                                                 (let ((_%tl4218642239%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4451244513%_
                                                           '1)))
                                                       (_%target4218442236%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4451244513%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4218642239%_)
                                                       (_%__match4456444565%_
                                                        _%e4216242333%_
                                                        _%hd4216342337%_
                                                        _%tl4216442340%_
                                                        _%e4216542343%_
                                                        _%hd4216642347%_
                                                        _%tl4216742350%_
                                                        _%__splice4451244513%_
                                                        _%target4218442236%_
                                                        _%tl4218642239%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4215842198%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4215842198%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4215842198%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4215842198%_)))))
                           (let () (declare (not safe)) (_%g4215842198%_)))))
                   (let () (declare (not safe)) (_%g4215742209%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont4458044581%_
                                             (lambda ()
                                               (_%lp41974%_
                                                _%L42022%_
                                                (cons _%L42024%_
                                                      _%body41979%_)))))
                                        (let* ((_%__match4461844619%_
                                                (lambda (_%e4205742092%_
                                                         _%hd4205842096%_
                                                         _%tl4205942099%_
                                                         _%__splice4457844579%_
                                                         _%target4206042102%_
                                                         _%tl4206242105%_)
                                                  (letrec ((_%loop4206342108%_
                                                            (lambda (_%hd4206142112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%handler4206742115%_)
                      (if (gx#stx-pair? _%hd4206142112%_)
                          (let ((_%e4206442118%_
                                 (gx#syntax-e _%hd4206142112%_)))
                            (let ((_%lp-tl4206642125%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4206442118%_)))
                                  (_%lp-hd4206542122%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4206442118%_))))
                              (_%loop4206342108%_
                               _%lp-tl4206642125%_
                               (cons _%lp-hd4206542122%_
                                     _%handler4206742115%_))))
                          (let ((_%handler4206842128%_
                                 (reverse _%handler4206742115%_)))
                            (_%__kont4457644577%_ _%handler4206842128%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4206342108%_
                                                     _%target4206042102%_
                                                     '()))))
                                               (_%__match4460044601%_
                                                (lambda (_%e4204442429%_
                                                         _%hd4204542433%_
                                                         _%tl4204642436%_
                                                         _%__splice4457444575%_
                                                         _%target4204742439%_
                                                         _%tl4204942442%_)
                                                  (letrec ((_%loop4205042445%_
                                                            (lambda (_%hd4204842449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%fini4205442452%_)
                      (if (gx#stx-pair? _%hd4204842449%_)
                          (let ((_%e4205142455%_
                                 (gx#syntax-e _%hd4204842449%_)))
                            (let ((_%lp-tl4205342462%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4205142455%_)))
                                  (_%lp-hd4205242459%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4205142455%_))))
                              (_%loop4205042445%_
                               _%lp-tl4205342462%_
                               (cons _%lp-hd4205242459%_ _%fini4205442452%_))))
                          (let ((_%fini4205542465%_
                                 (reverse _%fini4205442452%_)))
                            (_%__kont4457244573%_ _%fini4205542465%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4205042445%_
                                                     _%target4204742439%_
                                                     '())))))
                                          (if (gx#stx-pair?
                                               _%__stx4456944570%_)
                                              (let ((_%e4204442429%_
                                                     (gx#syntax-e
                                                      _%__stx4456944570%_)))
                                                (let ((_%tl4204642436%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4204442429%_)))
                                                      (_%hd4204542433%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4204442429%_))))
                                                  (if (gx#identifier?
                                                       _%hd4204542433%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/more-sugar[1]#_g44682_|
                                                           _%hd4204542433%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4204642436%_)
                                                              (let ((_%__splice4457444575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4204642436%_
                              '0)))
                        (let ((_%tl4204942442%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4457444575%_ '1)))
                              (_%target4204742439%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4457444575%_ '0))))
                          (if (gx#stx-null? _%tl4204942442%_)
                              (_%__match4460044601%_
                               _%e4204442429%_
                               _%hd4204542433%_
                               _%tl4204642436%_
                               _%__splice4457444575%_
                               _%target4204742439%_
                               _%tl4204942442%_)
                              (_%__kont4458044581%_))))
                      (_%__kont4458044581%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/more-sugar[1]#_g44683_|
                       _%hd4204542433%_)
                      (if (gx#stx-pair/null? _%tl4204642436%_)
                          (let ((_%__splice4457844579%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4204642436%_
                                  '0)))
                            (let ((_%tl4206242105%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice4457844579%_ '1)))
                                  (_%target4206042102%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice4457844579%_
                                      '0))))
                              (if (gx#stx-null? _%tl4206242105%_)
                                  (_%__match4461844619%_
                                   _%e4204442429%_
                                   _%hd4204542433%_
                                   _%tl4204642436%_
                                   _%__splice4457844579%_
                                   _%target4206042102%_
                                   _%tl4206242105%_)
                                  (_%__kont4458044581%_))))
                          (_%__kont4458044581%_))
                      (_%__kont4458044581%_)))
              (_%__kont4458044581%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont4458044581%_)))))))
                                 (_%__kont4462644627%_
                                  (lambda ()
                                    (cons 'begin (reverse _%body41979%_)))))
                             (let ((_%g4198142005%_
                                    (lambda ()
                                      (if (gx#stx-null? _%__stx4462144622%_)
                                          (_%__kont4462644627%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4198241994%_))))))
                               (if (gx#stx-pair? _%__stx4462144622%_)
                                   (let ((_%e4198642012%_
                                          (gx#syntax-e _%__stx4462144622%_)))
                                     (let ((_%tl4198842019%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4198642012%_)))
                                           (_%hd4198742016%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4198642012%_))))
                                       (_%__kont4462444625%_
                                        _%tl4198842019%_
                                        _%hd4198742016%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4198142005%_))))))))
                     _%e4190441953%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop4189941933%_
                                             _%target4189641927%_
                                             '()))
                                          (_%g4189041910%_ _%g4189141914%_)))))
                                (_%g4189041910%_ _%g4189141914%_))))
                        (_%g4189041910%_ _%g4189141914%_)))))
            (_%g4188942508%_ _%stx41882%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx43320%_)
        (let* ((_%g4332443353%_
                (lambda (_%g4332543349%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4332543349%_)))
               (_%g4332343453%_
                (lambda (_%g4332543357%_)
                  (if (gx#stx-pair? _%g4332543357%_)
                      (let ((_%e4332843360%_ (gx#syntax-e _%g4332543357%_)))
                        (let ((_%hd4332943364%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4332843360%_)))
                              (_%tl4333043367%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4332843360%_))))
                          (if (gx#stx-pair/null? _%tl4333043367%_)
                              (let ((_g44684_
                                     (gx#syntax-split-splice
                                      _%tl4333043367%_
                                      '0)))
                                (begin
                                  (let ((_g44685_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g44684_)
                                               (##values-length _g44684_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g44685_ 2)))
                                        (error "Context expects 2 values"
                                               _g44685_)))
                                  (let ((_%target4333143370%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44684_ 0)))
                                        (_%tl4333343373%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44684_ 1))))
                                    (if (gx#stx-null? _%tl4333343373%_)
                                        (letrec ((_%loop4333443376%_
                                                  (lambda (_%hd4333243380%_
                                                           _%val4333843383%_
                                                           _%key4333943385%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4333243380%_)
                                                        (let ((_%e4333543388%_
                                                               (gx#syntax-e
                                                                _%hd4333243380%_)))
                                                          (let ((_%lp-hd4333643392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4333543388%_)))
                        (_%lp-tl4333743395%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4333543388%_))))
                    (if (gx#stx-pair? _%lp-hd4333643392%_)
                        (let ((_%e4334243398%_
                               (gx#syntax-e _%lp-hd4333643392%_)))
                          (let ((_%hd4334343402%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4334243398%_)))
                                (_%tl4334443405%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4334243398%_))))
                            (if (gx#stx-pair? _%tl4334443405%_)
                                (let ((_%e4334543408%_
                                       (gx#syntax-e _%tl4334443405%_)))
                                  (let ((_%hd4334643412%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4334543408%_)))
                                        (_%tl4334743415%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4334543408%_))))
                                    (if (gx#stx-null? _%tl4334743415%_)
                                        (_%loop4333443376%_
                                         _%lp-tl4333743395%_
                                         (cons _%hd4334643412%_
                                               _%val4333843383%_)
                                         (cons _%hd4334343402%_
                                               _%key4333943385%_))
                                        (_%g4332443353%_ _%g4332543357%_))))
                                (_%g4332443353%_ _%g4332543357%_))))
                        (_%g4332443353%_ _%g4332543357%_))))
                (let ((_%val4334043418%_ (reverse _%val4333843383%_))
                      (_%key4334143421%_ (reverse _%key4333943385%_)))
                  ((lambda (_%L43424%_ _%L43426%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%L43424%_
                                    _%L43426%_)
                                   (foldr (lambda (_%g4344143445%_
                                                   _%g4344243448%_
                                                   _%g4344343450%_)
                                            (cons (cons _%g4344243448%_
                                                        (cons _%g4344143445%_
                                                              '()))
                                                  _%g4344343450%_))
                                          '()
                                          _%L43424%_
                                          _%L43426%_)))))
                   _%val4334043418%_
                   _%key4334143421%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4333443376%_
                                           _%target4333143370%_
                                           '()
                                           '()))
                                        (_%g4332443353%_ _%g4332543357%_)))))
                              (_%g4332443353%_ _%g4332543357%_))))
                      (_%g4332443353%_ _%g4332543357%_)))))
          (_%g4332343453%_ _%$stx43320%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx43458%_)
        (let* ((_%g4346243491%_
                (lambda (_%g4346343487%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4346343487%_)))
               (_%g4346143591%_
                (lambda (_%g4346343495%_)
                  (if (gx#stx-pair? _%g4346343495%_)
                      (let ((_%e4346643498%_ (gx#syntax-e _%g4346343495%_)))
                        (let ((_%hd4346743502%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4346643498%_)))
                              (_%tl4346843505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4346643498%_))))
                          (if (gx#stx-pair/null? _%tl4346843505%_)
                              (let ((_g44686_
                                     (gx#syntax-split-splice
                                      _%tl4346843505%_
                                      '0)))
                                (begin
                                  (let ((_g44687_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g44686_)
                                               (##values-length _g44686_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g44687_ 2)))
                                        (error "Context expects 2 values"
                                               _g44687_)))
                                  (let ((_%target4346943508%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44686_ 0)))
                                        (_%tl4347143511%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44686_ 1))))
                                    (if (gx#stx-null? _%tl4347143511%_)
                                        (letrec ((_%loop4347243514%_
                                                  (lambda (_%hd4347043518%_
                                                           _%val4347643521%_
                                                           _%key4347743523%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4347043518%_)
                                                        (let ((_%e4347343526%_
                                                               (gx#syntax-e
                                                                _%hd4347043518%_)))
                                                          (let ((_%lp-hd4347443530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4347343526%_)))
                        (_%lp-tl4347543533%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4347343526%_))))
                    (if (gx#stx-pair? _%lp-hd4347443530%_)
                        (let ((_%e4348043536%_
                               (gx#syntax-e _%lp-hd4347443530%_)))
                          (let ((_%hd4348143540%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4348043536%_)))
                                (_%tl4348243543%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4348043536%_))))
                            (if (gx#stx-pair? _%tl4348243543%_)
                                (let ((_%e4348343546%_
                                       (gx#syntax-e _%tl4348243543%_)))
                                  (let ((_%hd4348443550%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4348343546%_)))
                                        (_%tl4348543553%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4348343546%_))))
                                    (if (gx#stx-null? _%tl4348543553%_)
                                        (_%loop4347243514%_
                                         _%lp-tl4347543533%_
                                         (cons _%hd4348443550%_
                                               _%val4347643521%_)
                                         (cons _%hd4348143540%_
                                               _%key4347743523%_))
                                        (_%g4346243491%_ _%g4346343495%_))))
                                (_%g4346243491%_ _%g4346343495%_))))
                        (_%g4346243491%_ _%g4346343495%_))))
                (let ((_%val4347843556%_ (reverse _%val4347643521%_))
                      (_%key4347943559%_ (reverse _%key4347743523%_)))
                  ((lambda (_%L43562%_ _%L43564%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%L43562%_
                                    _%L43564%_)
                                   (foldr (lambda (_%g4357943583%_
                                                   _%g4358043586%_
                                                   _%g4358143588%_)
                                            (cons (cons _%g4358043586%_
                                                        (cons _%g4357943583%_
                                                              '()))
                                                  _%g4358143588%_))
                                          '()
                                          _%L43562%_
                                          _%L43564%_)))))
                   _%val4347843556%_
                   _%key4347943559%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4347243514%_
                                           _%target4346943508%_
                                           '()
                                           '()))
                                        (_%g4346243491%_ _%g4346343495%_)))))
                              (_%g4346243491%_ _%g4346343495%_))))
                      (_%g4346243491%_ _%g4346343495%_)))))
          (_%g4346143591%_ _%$stx43458%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx43596%_)
        (let* ((_%g4360043629%_
                (lambda (_%g4360143625%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4360143625%_)))
               (_%g4359943729%_
                (lambda (_%g4360143633%_)
                  (if (gx#stx-pair? _%g4360143633%_)
                      (let ((_%e4360443636%_ (gx#syntax-e _%g4360143633%_)))
                        (let ((_%hd4360543640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4360443636%_)))
                              (_%tl4360643643%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4360443636%_))))
                          (if (gx#stx-pair/null? _%tl4360643643%_)
                              (let ((_g44688_
                                     (gx#syntax-split-splice
                                      _%tl4360643643%_
                                      '0)))
                                (begin
                                  (let ((_g44689_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g44688_)
                                               (##values-length _g44688_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g44689_ 2)))
                                        (error "Context expects 2 values"
                                               _g44689_)))
                                  (let ((_%target4360743646%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44688_ 0)))
                                        (_%tl4360943649%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44688_ 1))))
                                    (if (gx#stx-null? _%tl4360943649%_)
                                        (letrec ((_%loop4361043652%_
                                                  (lambda (_%hd4360843656%_
                                                           _%val4361443659%_
                                                           _%key4361543661%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4360843656%_)
                                                        (let ((_%e4361143664%_
                                                               (gx#syntax-e
                                                                _%hd4360843656%_)))
                                                          (let ((_%lp-hd4361243668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4361143664%_)))
                        (_%lp-tl4361343671%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4361143664%_))))
                    (if (gx#stx-pair? _%lp-hd4361243668%_)
                        (let ((_%e4361843674%_
                               (gx#syntax-e _%lp-hd4361243668%_)))
                          (let ((_%hd4361943678%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4361843674%_)))
                                (_%tl4362043681%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4361843674%_))))
                            (if (gx#stx-pair? _%tl4362043681%_)
                                (let ((_%e4362143684%_
                                       (gx#syntax-e _%tl4362043681%_)))
                                  (let ((_%hd4362243688%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4362143684%_)))
                                        (_%tl4362343691%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4362143684%_))))
                                    (if (gx#stx-null? _%tl4362343691%_)
                                        (_%loop4361043652%_
                                         _%lp-tl4361343671%_
                                         (cons _%hd4362243688%_
                                               _%val4361443659%_)
                                         (cons _%hd4361943678%_
                                               _%key4361543661%_))
                                        (_%g4360043629%_ _%g4360143633%_))))
                                (_%g4360043629%_ _%g4360143633%_))))
                        (_%g4360043629%_ _%g4360143633%_))))
                (let ((_%val4361643694%_ (reverse _%val4361443659%_))
                      (_%key4361743697%_ (reverse _%key4361543661%_)))
                  ((lambda (_%L43700%_ _%L43702%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%L43700%_
                                    _%L43702%_)
                                   (foldr (lambda (_%g4371743721%_
                                                   _%g4371843724%_
                                                   _%g4371943726%_)
                                            (cons (cons _%g4371843724%_
                                                        (cons _%g4371743721%_
                                                              '()))
                                                  _%g4371943726%_))
                                          '()
                                          _%L43700%_
                                          _%L43702%_)))))
                   _%val4361643694%_
                   _%key4361743697%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4361043652%_
                                           _%target4360743646%_
                                           '()
                                           '()))
                                        (_%g4360043629%_ _%g4360143633%_)))))
                              (_%g4360043629%_ _%g4360143633%_))))
                      (_%g4360043629%_ _%g4360143633%_)))))
          (_%g4359943729%_ _%$stx43596%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx43734%_)
        (let* ((_%g4373743761%_
                (lambda (_%g4373843757%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4373843757%_)))
               (_%g4373644008%_
                (lambda (_%g4373843765%_)
                  (if (gx#stx-pair? _%g4373843765%_)
                      (let ((_%e4374143768%_ (gx#syntax-e _%g4373843765%_)))
                        (let ((_%hd4374243772%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4374143768%_)))
                              (_%tl4374343775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4374143768%_))))
                          (if (gx#stx-pair? _%tl4374343775%_)
                              (let ((_%e4374443778%_
                                     (gx#syntax-e _%tl4374343775%_)))
                                (let ((_%hd4374543782%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4374443778%_)))
                                      (_%tl4374643785%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4374443778%_))))
                                  (if (gx#stx-pair/null? _%tl4374643785%_)
                                      (let ((_g44690_
                                             (gx#syntax-split-splice
                                              _%tl4374643785%_
                                              '0)))
                                        (begin
                                          (let ((_g44691_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44690_)
                                                       (##values-length
                                                        _g44690_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44691_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44691_)))
                                          (let ((_%target4374743788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44690_ 0)))
                                                (_%tl4374943791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44690_ 1))))
                                            (if (gx#stx-null? _%tl4374943791%_)
                                                (letrec ((_%loop4375043794%_
                                                          (lambda (_%hd4374843798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%entry4375443801%_)
                    (if (gx#stx-pair? _%hd4374843798%_)
                        (let ((_%e4375143804%_ (gx#syntax-e _%hd4374843798%_)))
                          (let ((_%lp-hd4375243808%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4375143804%_)))
                                (_%lp-tl4375343811%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4375143804%_))))
                            (_%loop4375043794%_
                             _%lp-tl4375343811%_
                             (cons _%lp-hd4375243808%_ _%entry4375443801%_))))
                        (let ((_%entry4375543814%_
                               (reverse _%entry4375443801%_)))
                          ((lambda (_%L43818%_ _%L43820%_)
                             (let* ((_%g4383843846%_
                                     (lambda (_%g4383943842%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g4383943842%_)))
                                    (_%g4383743996%_
                                     (lambda (_%g4383943850%_)
                                       ((lambda (_%L43853%_)
                                          (let* ((_%g4386543891%_
                                                  (lambda (_%g4386643887%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g4386643887%_)))
                                                 (_%g4386443984%_
                                                  (lambda (_%g4386643895%_)
                                                    (if (gx#stx-pair/null?
                                                         _%g4386643895%_)
                                                        (let ((_g44692_
                                                               (gx#syntax-split-splice
                                                                _%g4386643895%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g44693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g44692_)
                                 (##values-length _g44692_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g44693_ 2)))
                          (error "Context expects 2 values" _g44693_)))
                    (let ((_%target4386943898%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g44692_ 0)))
                          (_%tl4387143901%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g44692_ 1))))
                      (if (gx#stx-null? _%tl4387143901%_)
                          (letrec ((_%loop4387243904%_
                                    (lambda (_%hd4387043908%_
                                             _%val4387643911%_
                                             _%key4387743913%_)
                                      (if (gx#stx-pair? _%hd4387043908%_)
                                          (let ((_%e4387343916%_
                                                 (gx#syntax-e
                                                  _%hd4387043908%_)))
                                            (let ((_%lp-hd4387443920%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4387343916%_)))
                                                  (_%lp-tl4387543923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4387343916%_))))
                                              (if (gx#stx-pair?
                                                   _%lp-hd4387443920%_)
                                                  (let ((_%e4388043926%_
                                                         (gx#syntax-e
                                                          _%lp-hd4387443920%_)))
                                                    (let ((_%hd4388143930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4388043926%_)))
                                                          (_%tl4388243933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4388043926%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4388243933%_)
                                                          (let ((_%e4388343936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4388243933%_)))
                    (let ((_%hd4388443940%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4388343936%_)))
                          (_%tl4388543943%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4388343936%_))))
                      (if (gx#stx-null? _%tl4388543943%_)
                          (_%loop4387243904%_
                           _%lp-tl4387543923%_
                           (cons _%hd4388443940%_ _%val4387643911%_)
                           (cons _%hd4388143930%_ _%key4387743913%_))
                          (_%g4386543891%_ _%g4386643895%_))))
                  (_%g4386543891%_ _%g4386643895%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4386543891%_
                                                   _%g4386643895%_))))
                                          (let ((_%val4387843946%_
                                                 (reverse _%val4387643911%_))
                                                (_%key4387943949%_
                                                 (reverse _%key4387743913%_)))
                                            ((lambda (_%L43952%_ _%L43954%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ht)
                         (cons (cons _%L43820%_
                                     (cons 'size: (cons _%L43853%_ '())))
                               '()))
                   (begin
                     (gx#syntax-check-splice-targets _%L43952%_ _%L43954%_)
                     (foldr (lambda (_%g4397243976%_
                                     _%g4397343979%_
                                     _%g4397443981%_)
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'ht)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            (cons _%g4397343979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g4397243976%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g4397443981%_))
                            (cons (gx#datum->syntax '#f 'ht) '())
                            _%L43952%_
                            _%L43954%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%val4387843946%_
                                             _%key4387943949%_))))))
                            (_%loop4387243904%_ _%target4386943898%_ '() '()))
                          (_%g4386543891%_ _%g4386643895%_)))))
                (_%g4386543891%_ _%g4386643895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4386443984%_
                                             (foldr (lambda (_%g4398743990%_
                                                             _%g4398843993%_)
                                                      (cons _%g4398743990%_
                                                            _%g4398843993%_))
                                                    '()
                                                    _%L43818%_))))
                                        _%g4383943850%_))))
                               (_%g4383743996%_
                                (gx#stx-length
                                 (foldr (lambda (_%g4399944002%_
                                                 _%g4400044005%_)
                                          (cons _%g4399944002%_
                                                _%g4400044005%_))
                                        '()
                                        _%L43818%_)))))
                           _%entry4375543814%_
                           _%hd4374543782%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4375043794%_
                                                   _%target4374743788%_
                                                   '()))
                                                (_%g4373743761%_
                                                 _%g4373843765%_)))))
                                      (_%g4373743761%_ _%g4373843765%_))))
                              (_%g4373743761%_ _%g4373843765%_))))
                      (_%g4373743761%_ _%g4373843765%_)))))
          (_%g4373644008%_ _%stx43734%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx44014%_)
        (let* ((_%g4401744031%_
                (lambda (_%g4401844027%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4401844027%_)))
               (_%g4401644103%_
                (lambda (_%g4401844035%_)
                  (if (gx#stx-pair? _%g4401844035%_)
                      (let ((_%e4402044038%_ (gx#syntax-e _%g4401844035%_)))
                        (let ((_%hd4402144042%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4402044038%_)))
                              (_%tl4402244045%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4402044038%_))))
                          (if (gx#stx-pair? _%tl4402244045%_)
                              (let ((_%e4402344048%_
                                     (gx#syntax-e _%tl4402244045%_)))
                                (let ((_%hd4402444052%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4402344048%_)))
                                      (_%tl4402544055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4402344048%_))))
                                  (if (gx#stx-null? _%tl4402544055%_)
                                      ((lambda (_%L44058%_)
                                         (if (gx#stx-string? _%L44058%_)
                                             (let* ((_%g4407244080%_
                                                     (lambda (_%g4407344076%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4407344076%_)))
                                                    (_%g4407144099%_
                                                     (lambda (_%g4407344084%_)
                                                       ((lambda (_%L44087%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L44087%_ '())))
                _%g4407344084%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4407144099%_
                                                (string->bytes
                                                 (gx#stx-e _%L44058%_))))
                                             (_%g4401744031%_
                                              _%g4401844035%_)))
                                       _%hd4402444052%_)
                                      (_%g4401744031%_ _%g4401844035%_))))
                              (_%g4401744031%_ _%g4401844035%_))))
                      (_%g4401744031%_ _%g4401844035%_)))))
          (_%g4401644103%_ _%stx44014%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx44107%_)
        (let* ((_%g4411044124%_
                (lambda (_%g4411144120%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4411144120%_)))
               (_%g4410944165%_
                (lambda (_%g4411144128%_)
                  (if (gx#stx-pair? _%g4411144128%_)
                      (let ((_%e4411344131%_ (gx#syntax-e _%g4411144128%_)))
                        (let ((_%hd4411444135%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4411344131%_)))
                              (_%tl4411544138%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4411344131%_))))
                          (if (gx#stx-pair? _%tl4411544138%_)
                              (let ((_%e4411644141%_
                                     (gx#syntax-e _%tl4411544138%_)))
                                (let ((_%hd4411744145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4411644141%_)))
                                      (_%tl4411844148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4411644141%_))))
                                  (if (gx#stx-null? _%tl4411844148%_)
                                      ((lambda (_%L44151%_)
                                         (if (gx#current-expander-compiling?)
                                             (gx#eval-syntax _%L44151%_)
                                             '#!void)
                                         (cons (gx#datum->syntax '#f 'void)
                                               '()))
                                       _%hd4411744145%_)
                                      (_%g4411044124%_ _%g4411144128%_))))
                              (_%g4411044124%_ _%g4411144128%_))))
                      (_%g4411044124%_ _%g4411144128%_)))))
          (_%g4410944165%_ _%stx44107%_))))))
