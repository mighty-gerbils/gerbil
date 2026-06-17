(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g46364_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g46367_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g46368_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g46369_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g46370_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g46385_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g46386_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g46387_|
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
      (lambda _%$args40914%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args40914%_)))
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
      (lambda _%$args40910%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args40910%_)))
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
      (lambda (_%stx40907%_)
        (if (gx#identifier? _%stx40907%_)
            (let ((__tmp46325 (gx#syntax-local-value _%stx40907%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp46325))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx40904%_)
        (if (gx#identifier? _%stx40904%_)
            (let ((__tmp46326 (gx#syntax-local-value _%stx40904%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp46326))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx40531%_)
        (let* ((_%__stx4571645717%_ _%stx40531%_)
               (_%$%g4053740600%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4571645717%_))))
          (let ((_%__kont4571945720%_
                 (lambda (_%$%g4053940881%_ _%$%g4054040883%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%$%g4054040883%_)
                    _%stx40531%_)))
                (_%__kont4572145722%_
                 (lambda (_%$%g4055340770%_
                          _%$%g4055440772%_
                          _%$%g4055540773%_)
                   (let* ((_%$%g4079540803%_
                           (lambda (_%$%g4079640799%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g4079640799%_)))
                          (_%$%g4079440830%_
                           (lambda (_%$%g4079640807%_)
                             (cons _%$%g4079640807%_
                                   (foldr (lambda (_%$%g4082140824%_
                                                   _%$%g4082240827%_)
                                            (cons _%$%g4082140824%_
                                                  _%$%g4082240827%_))
                                          (cons _%$%g4055340770%_ '())
                                          _%$%g4055440772%_)))))
                     (_%$%g4079440830%_
                      (gx#stx-identifier
                       _%$%g4055540773%_
                       _%$%g4055540773%_
                       '"-set!")))))
                (_%__kont4572545726%_
                 (lambda (_%$%g4057740682%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%$%g4057740682%_)
                    _%stx40531%_)))
                (_%__kont4572745728%_
                 (lambda (_%$%g4058440637%_ _%$%g4058540639%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%$%g4058540639%_
                               (cons _%$%g4058440637%_ '()))))))
            (let* ((_%__match4581545816%_
                    (lambda (_%$%e4058640607%_
                             _%$%hd4058740611%_
                             _%$%tl4058840614%_
                             _%$%e4058940617%_
                             _%$%hd4059040621%_
                             _%$%tl4059140624%_
                             _%$%e4059240627%_
                             _%$%hd4059340631%_
                             _%$%tl4059440634%_)
                      (let ((_%$%g4058440637%_ _%$%hd4059340631%_)
                            (_%$%g4058540639%_ _%$%hd4059040621%_))
                        (if (gx#identifier? _%$%g4058540639%_)
                            (_%__kont4572745728%_
                             _%$%g4058440637%_
                             _%$%g4058540639%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g4053740600%_))))))
                   (_%__match4579545796%_
                    (lambda (_%$%e4057840662%_
                             _%$%hd4057940666%_
                             _%$%tl4058040669%_
                             _%$%e4058140672%_
                             _%$%hd4058240676%_
                             _%$%tl4058340679%_)
                      (let ((_%$%g4057740682%_ _%$%hd4058240676%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%$%g4057740682%_)
                            (_%__kont4572545726%_ _%$%g4057740682%_)
                            (if (gx#stx-pair? _%$%tl4058340679%_)
                                (let ((_%$%e4059240627%_
                                       (gx#syntax-e _%$%tl4058340679%_)))
                                  (let ((_%$%tl4059440634%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4059240627%_)))
                                        (_%$%hd4059340631%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4059240627%_))))
                                    (if (gx#stx-null? _%$%tl4059440634%_)
                                        (_%__match4581545816%_
                                         _%$%e4057840662%_
                                         _%$%hd4057940666%_
                                         _%$%tl4058040669%_
                                         _%$%e4058140672%_
                                         _%$%hd4058240676%_
                                         _%$%tl4058340679%_
                                         _%$%e4059240627%_
                                         _%$%hd4059340631%_
                                         _%$%tl4059440634%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g4053740600%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g4053740600%_)))))))
                   (_%__match4578345784%_
                    (lambda (_%$%e4055640702%_
                             _%$%hd4055740706%_
                             _%$%tl4055840709%_
                             _%$%e4055940712%_
                             _%$%hd4056040716%_
                             _%$%tl4056140719%_
                             _%$%e4056240722%_
                             _%$%hd4056340726%_
                             _%$%tl4056440729%_
                             _%__splice4572345724%_
                             _%$%target4056540732%_
                             _%$%tl4056740735%_)
                      (letrec ((_%$%loop4056840738%_
                                (lambda (_%$%hd4056640742%_
                                         _%$%arg4057240745%_)
                                  (if (gx#stx-pair? _%$%hd4056640742%_)
                                      (let ((_%$%e4056940747%_
                                             (gx#syntax-e _%$%hd4056640742%_)))
                                        (let ((_%$%lp-tl4057140754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4056940747%_)))
                                              (_%$%lp-hd4057040751%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4056940747%_))))
                                          (_%$%loop4056840738%_
                                           _%$%lp-tl4057140754%_
                                           (cons _%$%lp-hd4057040751%_
                                                 _%$%arg4057240745%_))))
                                      (let ((_%$%arg4057340757%_
                                             (reverse _%$%arg4057240745%_)))
                                        (if (gx#stx-pair? _%$%tl4056140719%_)
                                            (let ((_%$%e4057440760%_
                                                   (gx#syntax-e
                                                    _%$%tl4056140719%_)))
                                              (let ((_%$%tl4057640767%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4057440760%_)))
                                                    (_%$%hd4057540764%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4057440760%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl4057640767%_)
                                                    (let ((_%$%g4055340770%_
                                                           _%$%hd4057540764%_)
                                                          (_%$%g4055440772%_
                                                           _%$%arg4057340757%_)
                                                          (_%$%g4055540773%_
                                                           _%$%hd4056340726%_))
                                                      (if (gx#identifier?
                                                           _%$%g4055540773%_)
                                                          (_%__kont4572145722%_
                                                           _%$%g4055340770%_
                                                           _%$%g4055440772%_
                                                           _%$%g4055540773%_)
                                                          (_%__match4579545796%_
                                                           _%$%e4055640702%_
                                                           _%$%hd4055740706%_
                                                           _%$%tl4055840709%_
                                                           _%$%e4055940712%_
                                                           _%$%hd4056040716%_
                                                           _%$%tl4056140719%_)))
                                                    (_%__match4579545796%_
                                                     _%$%e4055640702%_
                                                     _%$%hd4055740706%_
                                                     _%$%tl4055840709%_
                                                     _%$%e4055940712%_
                                                     _%$%hd4056040716%_
                                                     _%$%tl4056140719%_))))
                                            (_%__match4579545796%_
                                             _%$%e4055640702%_
                                             _%$%hd4055740706%_
                                             _%$%tl4055840709%_
                                             _%$%e4055940712%_
                                             _%$%hd4056040716%_
                                             _%$%tl4056140719%_)))))))
                        (_%$%loop4056840738%_ _%$%target4056540732%_ '())))))
              (if (gx#stx-pair? _%__stx4571645717%_)
                  (let ((_%$%e4054140841%_ (gx#syntax-e _%__stx4571645717%_)))
                    (let ((_%$%tl4054340848%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4054140841%_)))
                          (_%$%hd4054240845%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4054140841%_))))
                      (if (gx#stx-pair? _%$%tl4054340848%_)
                          (let ((_%$%e4054440851%_
                                 (gx#syntax-e _%$%tl4054340848%_)))
                            (let ((_%$%tl4054640858%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e4054440851%_)))
                                  (_%$%hd4054540855%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e4054440851%_))))
                              (if (gx#stx-pair? _%$%hd4054540855%_)
                                  (let ((_%$%e4054740861%_
                                         (gx#syntax-e _%$%hd4054540855%_)))
                                    (let ((_%$%tl4054940868%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4054740861%_)))
                                          (_%$%hd4054840865%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4054740861%_))))
                                      (if (gx#stx-pair? _%$%tl4054640858%_)
                                          (let ((_%$%e4055040871%_
                                                 (gx#syntax-e
                                                  _%$%tl4054640858%_)))
                                            (let ((_%$%tl4055240878%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4055040871%_)))
                                                  (_%$%hd4055140875%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4055040871%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl4055240878%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%$%g4053940881%_
                                                             _%$%hd4055140875%_)
                                                            (_%$%g4054040883%_
                                                             _%$%hd4054840865%_))
                                                        (_%__kont4571945720%_
                                                         _%$%g4053940881%_
                                                         _%$%g4054040883%_))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl4054940868%_)
                                                          (let ((_%__splice4572345724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl4054940868%_
                          '0)))
                    (let ((_%$%tl4056740735%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4572345724%_ '1)))
                          (_%$%target4056540732%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4572345724%_ '0))))
                      (if (gx#stx-null? _%$%tl4056740735%_)
                          (_%__match4578345784%_
                           _%$%e4054140841%_
                           _%$%hd4054240845%_
                           _%$%tl4054340848%_
                           _%$%e4054440851%_
                           _%$%hd4054540855%_
                           _%$%tl4054640858%_
                           _%$%e4054740861%_
                           _%$%hd4054840865%_
                           _%$%tl4054940868%_
                           _%__splice4572345724%_
                           _%$%target4056540732%_
                           _%$%tl4056740735%_)
                          (_%__match4579545796%_
                           _%$%e4054140841%_
                           _%$%hd4054240845%_
                           _%$%tl4054340848%_
                           _%$%e4054440851%_
                           _%$%hd4054540855%_
                           _%$%tl4054640858%_))))
                  (_%__match4579545796%_
                   _%$%e4054140841%_
                   _%$%hd4054240845%_
                   _%$%tl4054340848%_
                   _%$%e4054440851%_
                   _%$%hd4054540855%_
                   _%$%tl4054640858%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl4054940868%_)
                                                      (let ((_%__splice4572345724%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl4054940868%_
                                                              '0)))
                                                        (let ((_%$%tl4056740735%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4572345724%_ '1)))
                      (_%$%target4056540732%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4572345724%_ '0))))
                  (if (gx#stx-null? _%$%tl4056740735%_)
                      (_%__match4578345784%_
                       _%$%e4054140841%_
                       _%$%hd4054240845%_
                       _%$%tl4054340848%_
                       _%$%e4054440851%_
                       _%$%hd4054540855%_
                       _%$%tl4054640858%_
                       _%$%e4054740861%_
                       _%$%hd4054840865%_
                       _%$%tl4054940868%_
                       _%__splice4572345724%_
                       _%$%target4056540732%_
                       _%$%tl4056740735%_)
                      (_%__match4579545796%_
                       _%$%e4054140841%_
                       _%$%hd4054240845%_
                       _%$%tl4054340848%_
                       _%$%e4054440851%_
                       _%$%hd4054540855%_
                       _%$%tl4054640858%_))))
              (_%__match4579545796%_
               _%$%e4054140841%_
               _%$%hd4054240845%_
               _%$%tl4054340848%_
               _%$%e4054440851%_
               _%$%hd4054540855%_
               _%$%tl4054640858%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl4054940868%_)
                                              (let ((_%__splice4572345724%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl4054940868%_
                                                      '0)))
                                                (let ((_%$%tl4056740735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4572345724%_
                                                          '1)))
                                                      (_%$%target4056540732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4572345724%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl4056740735%_)
                                                      (_%__match4578345784%_
                                                       _%$%e4054140841%_
                                                       _%$%hd4054240845%_
                                                       _%$%tl4054340848%_
                                                       _%$%e4054440851%_
                                                       _%$%hd4054540855%_
                                                       _%$%tl4054640858%_
                                                       _%$%e4054740861%_
                                                       _%$%hd4054840865%_
                                                       _%$%tl4054940868%_
                                                       _%__splice4572345724%_
                                                       _%$%target4056540732%_
                                                       _%$%tl4056740735%_)
                                                      (_%__match4579545796%_
                                                       _%$%e4054140841%_
                                                       _%$%hd4054240845%_
                                                       _%$%tl4054340848%_
                                                       _%$%e4054440851%_
                                                       _%$%hd4054540855%_
                                                       _%$%tl4054640858%_))))
                                              (_%__match4579545796%_
                                               _%$%e4054140841%_
                                               _%$%hd4054240845%_
                                               _%$%tl4054340848%_
                                               _%$%e4054440851%_
                                               _%$%hd4054540855%_
                                               _%$%tl4054640858%_)))))
                                  (_%__match4579545796%_
                                   _%$%e4054140841%_
                                   _%$%hd4054240845%_
                                   _%$%tl4054340848%_
                                   _%$%e4054440851%_
                                   _%$%hd4054540855%_
                                   _%$%tl4054640858%_))))
                          (let () (declare (not safe)) (_%$%g4053740600%_)))))
                  (let () (declare (not safe)) (_%$%g4053740600%_))))))))
    (define |gerbil/core/more-sugar[1]#stx-re-source|
      (lambda (_%stx40527%_ _%src40529%_)
        (if (gx#identifier? _%stx40527%_)
            _%stx40527%_
            (gx#stx-wrap-source
             (gx#syntax-e _%stx40527%_)
             (gx#stx-source _%src40529%_)))))
    (define |gerbil/core/more-sugar[1]#stx-substitute__%|
      (lambda (_%subs40484%_ _%stx40486%_ _%id=?40487%_)
        (let _%recur40489%_ ((_%stx40492%_ _%stx40486%_))
          (if (gx#identifier? _%stx40492%_)
              (let ((_%$e40497%_
                     (assoc _%stx40492%_ _%subs40484%_ _%id=?40487%_)))
                (if _%$e40497%_ (cdr _%$e40497%_) _%stx40492%_))
              (if (gx#stx-pair? _%stx40492%_)
                  (|gerbil/core/more-sugar[1]#stx-re-source|
                   (cons (_%recur40489%_ (gx#stx-car _%stx40492%_))
                         (_%recur40489%_ (gx#stx-cdr _%stx40492%_)))
                   _%stx40492%_)
                  (if (gx#stx-vector? _%stx40492%_)
                      (|gerbil/core/more-sugar[1]#stx-re-source|
                       (vector-map _%recur40489%_ (gx#syntax-e _%stx40492%_))
                       _%stx40492%_)
                      (if (gx#stx-box? _%stx40492%_)
                          (|gerbil/core/more-sugar[1]#stx-re-source|
                           (box (_%recur40489%_
                                 (unbox (gx#syntax-e _%stx40492%_))))
                           _%stx40492%_)
                          _%stx40492%_)))))))
    (define |gerbil/core/more-sugar[1]#stx-substitute__0|
      (lambda (_%subs40515%_ _%stx40517%_)
        (let ((_%id=?40519%_ gx#bound-identifier=?))
          (|gerbil/core/more-sugar[1]#stx-substitute__%|
           _%subs40515%_
           _%stx40517%_
           _%id=?40519%_))))
    (define |gerbil/core/more-sugar[1]#stx-substitute|
      (lambda _g46327_
        (let ((_g46328_ (let () (declare (not safe)) (##length _g46327_))))
          (cond ((let () (declare (not safe)) (##fx= _g46328_ 2))
                 (apply |gerbil/core/more-sugar[1]#stx-substitute__0|
                        _g46327_))
                ((let () (declare (not safe)) (##fx= _g46328_ 3))
                 (apply |gerbil/core/more-sugar[1]#stx-substitute__%|
                        _g46327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/more-sugar[1]#stx-substitute|
                  _g46327_))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx40921%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40921%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx40924%_)
        (let* ((_%$%g4092740951%_
                (lambda (_%$%g4092840947%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4092840947%_)))
               (_%$%g4092641125%_
                (lambda (_%$%g4092840955%_)
                  (if (gx#stx-pair? _%$%g4092840955%_)
                      (let ((_%$%e4093140958%_
                             (gx#syntax-e _%$%g4092840955%_)))
                        (let ((_%$%hd4093240962%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4093140958%_)))
                              (_%$%tl4093340965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4093140958%_))))
                          (if (gx#stx-pair/null? _%$%tl4093340965%_)
                              (if (let ((__tmp46329
                                         (gx#stx-length _%$%tl4093340965%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp46329 '1))
                                  (let ((_g46330_
                                         (gx#syntax-split-splice
                                          _%$%tl4093340965%_
                                          '1)))
                                    (begin
                                      (let ((_g46331_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g46330_)
                                                   (##values-length _g46330_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g46331_ 2)))
                                            (error "Context expects 2 values"
                                                   _g46331_)))
                                      (let ((_%$%target4093440968%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g46330_ 0)))
                                            (_%$%tl4093640971%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g46330_ 1))))
                                        (if (gx#stx-pair? _%$%tl4093640971%_)
                                            (let ((_%$%e4094340974%_
                                                   (gx#syntax-e
                                                    _%$%tl4093640971%_)))
                                              (let ((_%$%hd4094440978%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4094340974%_)))
                                                    (_%$%tl4094540981%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4094340974%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl4094540981%_)
                                                    (letrec ((_%$%loop4093740984%_
                                                              (lambda (_%$%hd4093540988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%tgt4094140991%_)
                        (if (gx#stx-pair? _%$%hd4093540988%_)
                            (let ((_%$%e4093840993%_
                                   (gx#syntax-e _%$%hd4093540988%_)))
                              (let ((_%$%lp-hd4093940997%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4093840993%_)))
                                    (_%$%lp-tl4094041000%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4093840993%_))))
                                (_%$%loop4093740984%_
                                 _%$%lp-tl4094041000%_
                                 (cons _%$%lp-hd4093940997%_
                                       _%$%tgt4094140991%_))))
                            (let* ((_%$%tgt4094241003%_
                                    (reverse _%$%tgt4094140991%_))
                                   (_%$%g4102641043%_
                                    (lambda (_%$%g4102741039%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g4102741039%_)))
                                   (_%$%g4102541113%_
                                    (lambda (_%$%g4102741047%_)
                                      (if (gx#stx-pair/null? _%$%g4102741047%_)
                                          (let ((_g46332_
                                                 (gx#syntax-split-splice
                                                  _%$%g4102741047%_
                                                  '0)))
                                            (begin
                                              (let ((_g46333_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g46332_)
                                                           (##values-length
                                                            _g46332_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g46333_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g46333_)))
                                              (let ((_%$%target4102941050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g46332_
                                                        0)))
                                                    (_%$%tl4103141053%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g46332_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl4103141053%_)
                                                    (letrec ((_%$%loop4103241056%_
                                                              (lambda (_%$%hd4103041060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%$e4103641063%_)
                        (if (gx#stx-pair? _%$%hd4103041060%_)
                            (let ((_%$%e4103341065%_
                                   (gx#syntax-e _%$%hd4103041060%_)))
                              (let ((_%$%lp-hd4103441069%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4103341065%_)))
                                    (_%$%lp-tl4103541072%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4103341065%_))))
                                (_%$%loop4103241056%_
                                 _%$%lp-tl4103541072%_
                                 (cons _%$%lp-hd4103441069%_
                                       _%$%$e4103641063%_))))
                            (let ((_%$%$e4103741075%_
                                   (reverse _%$%$e4103641063%_)))
                              (cons (gx#datum->syntax '#f 'let-values)
                                    (cons (cons (cons (foldr (lambda (_%$%g4109341099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g4109441102%_)
                       (cons _%$%g4109341099%_ _%$%g4109441102%_))
                     '()
                     _%$%$e4103741075%_)
              (cons _%$%hd4094440978%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _%$%$e4103741075%_
                                             _%$%tgt4094241003%_)
                                            (foldr (lambda (_%$%g4109541105%_
                                                            _%$%g4109641108%_
                                                            _%$%g4109741110%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'set!)
                         (cons _%$%g4109641108%_ (cons _%$%g4109541105%_ '())))
                   _%$%g4109741110%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%$%$e4103741075%_
                                                   _%$%tgt4094241003%_)))))))))
              (_%$%loop4103241056%_ _%$%target4102941050%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4102641043%_
                                                     _%$%g4102741047%_)))))
                                          (_%$%g4102641043%_
                                           _%$%g4102741047%_)))))
                              (_%$%g4102541113%_
                               (gx#gentemps
                                (foldr (lambda (_%$%g4111641119%_
                                                _%$%g4111741122%_)
                                         (cons _%$%g4111641119%_
                                               _%$%g4111741122%_))
                                       '()
                                       _%$%tgt4094241003%_))))))))
              (_%$%loop4093740984%_ _%$%target4093440968%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4092740951%_
                                                     _%$%g4092840955%_))))
                                            (_%$%g4092740951%_
                                             _%$%g4092840955%_)))))
                                  (_%$%g4092740951%_ _%$%g4092840955%_))
                              (_%$%g4092740951%_ _%$%g4092840955%_))))
                      (_%$%g4092740951%_ _%$%g4092840955%_)))))
          (_%$%g4092641125%_ _%stx40924%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx41131%_)
        (let* ((_%__stx4581845819%_ _%$stx41131%_)
               (_%$%g4113741225%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4581845819%_))))
          (let ((_%__kont4582145822%_
                 (lambda (_%$%g4113941565%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%$%g4158141584%_
                                               _%$%g4158241587%_)
                                        (cons _%$%g4158141584%_
                                              _%$%g4158241587%_))
                                      '()
                                      _%$%g4113941565%_)))))
                (_%__kont4582545826%_
                 (lambda (_%$%g4115541475%_
                          _%$%g4115641477%_
                          _%$%g4115741478%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%$%g4150141504%_
                                                           _%$%g4150241507%_)
                                                    (cons _%$%g4150141504%_
                                                          _%$%g4150241507%_))
                                                  '()
                                                  _%$%g4115541475%_)))
                               (cons _%$%g4115741478%_
                                     (cons _%$%g4115641477%_ '()))))))
                (_%__kont4582945830%_
                 (lambda (_%$%g4118241338%_
                          _%$%g4118341340%_
                          _%$%g4118441341%_
                          _%$%g4118541342%_
                          _%$%g4118641343%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%$%g4118641343%_
                                                       (cons (foldr (lambda (_%$%g4137341378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g4137441381%_)
                              (cons _%$%g4137341378%_ _%$%g4137441381%_))
                            '()
                            _%$%g4118341340%_)
                     (foldr (lambda (_%$%g4137541384%_ _%$%g4137641387%_)
                              (cons _%$%g4137541384%_ _%$%g4137641387%_))
                            '()
                            _%$%g4118241338%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%$%g4118541342%_
                                     (cons _%$%g4118441341%_ '())))))))
            (let* ((_%__match4593945940%_
                    (lambda (_%$%e4118741232%_
                             _%$%hd4118841236%_
                             _%$%tl4118941239%_
                             _%$%e4119041242%_
                             _%$%hd4119141246%_
                             _%$%tl4119241249%_
                             _%$%e4119341252%_
                             _%$%hd4119441256%_
                             _%$%tl4119541259%_
                             _%$%e4119641262%_
                             _%$%hd4119741266%_
                             _%$%tl4119841269%_
                             _%$%e4119941272%_
                             _%$%hd4120041276%_
                             _%$%tl4120141279%_
                             _%__splice4583145832%_
                             _%$%target4120241282%_
                             _%$%tl4120441285%_)
                      (letrec ((_%$%loop4120541288%_
                                (lambda (_%$%hd4120341292%_
                                         _%$%rest4120941295%_)
                                  (if (gx#stx-pair? _%$%hd4120341292%_)
                                      (let ((_%$%e4120641297%_
                                             (gx#syntax-e _%$%hd4120341292%_)))
                                        (let ((_%$%lp-tl4120841304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4120641297%_)))
                                              (_%$%lp-hd4120741301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4120641297%_))))
                                          (_%$%loop4120541288%_
                                           _%$%lp-tl4120841304%_
                                           (cons _%$%lp-hd4120741301%_
                                                 _%$%rest4120941295%_))))
                                      (let ((_%$%rest4121041307%_
                                             (reverse _%$%rest4120941295%_)))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4119241249%_)
                                            (let ((_%__splice4583345834%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4119241249%_
                                                    '0)))
                                              (let ((_%$%tl4121341313%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4583345834%_
                                                        '1)))
                                                    (_%$%target4121141310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4583345834%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4121341313%_)
                                                    (letrec ((_%$%loop4121441316%_
                                                              (lambda (_%$%hd4121241320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body4121841323%_)
                        (if (gx#stx-pair? _%$%hd4121241320%_)
                            (let ((_%$%e4121541325%_
                                   (gx#syntax-e _%$%hd4121241320%_)))
                              (let ((_%$%lp-tl4121741332%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4121541325%_)))
                                    (_%$%lp-hd4121641329%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4121541325%_))))
                                (_%$%loop4121441316%_
                                 _%$%lp-tl4121741332%_
                                 (cons _%$%lp-hd4121641329%_
                                       _%$%body4121841323%_))))
                            (let ((_%$%body4121941335%_
                                   (reverse _%$%body4121841323%_)))
                              (_%__kont4582945830%_
                               _%$%body4121941335%_
                               _%$%rest4121041307%_
                               _%$%hd4120041276%_
                               _%$%hd4119741266%_
                               _%$%hd4118841236%_))))))
              (_%$%loop4121441316%_ _%$%target4121141310%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4113741225%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4113741225%_))))))))
                        (_%$%loop4120541288%_ _%$%target4120241282%_ '()))))
                   (_%__match4589945900%_
                    (lambda (_%$%e4115841397%_
                             _%$%hd4115941401%_
                             _%$%tl4116041404%_
                             _%$%e4116141407%_
                             _%$%hd4116241411%_
                             _%$%tl4116341414%_
                             _%$%e4116441417%_
                             _%$%hd4116541421%_
                             _%$%tl4116641424%_
                             _%$%e4116741427%_
                             _%$%hd4116841431%_
                             _%$%tl4116941434%_
                             _%$%e4117041437%_
                             _%$%hd4117141441%_
                             _%$%tl4117241444%_
                             _%__splice4582745828%_
                             _%$%target4117341447%_
                             _%$%tl4117541450%_)
                      (letrec ((_%$%loop4117641453%_
                                (lambda (_%$%hd4117441457%_
                                         _%$%body4118041460%_)
                                  (if (gx#stx-pair? _%$%hd4117441457%_)
                                      (let ((_%$%e4117741462%_
                                             (gx#syntax-e _%$%hd4117441457%_)))
                                        (let ((_%$%lp-tl4117941469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4117741462%_)))
                                              (_%$%lp-hd4117841466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4117741462%_))))
                                          (_%$%loop4117641453%_
                                           _%$%lp-tl4117941469%_
                                           (cons _%$%lp-hd4117841466%_
                                                 _%$%body4118041460%_))))
                                      (let ((_%$%body4118141472%_
                                             (reverse _%$%body4118041460%_)))
                                        (_%__kont4582545826%_
                                         _%$%body4118141472%_
                                         _%$%hd4117141441%_
                                         _%$%hd4116841431%_))))))
                        (_%$%loop4117641453%_ _%$%target4117341447%_ '()))))
                   (_%__match4585745858%_
                    (lambda (_%$%e4114041517%_
                             _%$%hd4114141521%_
                             _%$%tl4114241524%_
                             _%$%e4114341527%_
                             _%$%hd4114441531%_
                             _%$%tl4114541534%_
                             _%__splice4582345824%_
                             _%$%target4114641537%_
                             _%$%tl4114841540%_)
                      (letrec ((_%$%loop4114941543%_
                                (lambda (_%$%hd4114741547%_
                                         _%$%body4115341550%_)
                                  (if (gx#stx-pair? _%$%hd4114741547%_)
                                      (let ((_%$%e4115041552%_
                                             (gx#syntax-e _%$%hd4114741547%_)))
                                        (let ((_%$%lp-tl4115241559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4115041552%_)))
                                              (_%$%lp-hd4115141556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4115041552%_))))
                                          (_%$%loop4114941543%_
                                           _%$%lp-tl4115241559%_
                                           (cons _%$%lp-hd4115141556%_
                                                 _%$%body4115341550%_))))
                                      (let ((_%$%body4115441562%_
                                             (reverse _%$%body4115341550%_)))
                                        (_%__kont4582145822%_
                                         _%$%body4115441562%_))))))
                        (_%$%loop4114941543%_ _%$%target4114641537%_ '())))))
              (if (gx#stx-pair? _%__stx4581845819%_)
                  (let ((_%$%e4114041517%_ (gx#syntax-e _%__stx4581845819%_)))
                    (let ((_%$%tl4114241524%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4114041517%_)))
                          (_%$%hd4114141521%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4114041517%_))))
                      (if (gx#stx-pair? _%$%tl4114241524%_)
                          (let ((_%$%e4114341527%_
                                 (gx#syntax-e _%$%tl4114241524%_)))
                            (let ((_%$%tl4114541534%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e4114341527%_)))
                                  (_%$%hd4114441531%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e4114341527%_))))
                              (if (gx#stx-null? _%$%hd4114441531%_)
                                  (if (gx#stx-pair/null? _%$%tl4114541534%_)
                                      (let ((_%__splice4582345824%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl4114541534%_
                                              '0)))
                                        (let ((_%$%tl4114841540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4582345824%_
                                                  '1)))
                                              (_%$%target4114641537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4582345824%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl4114841540%_)
                                              (_%__match4585745858%_
                                               _%$%e4114041517%_
                                               _%$%hd4114141521%_
                                               _%$%tl4114241524%_
                                               _%$%e4114341527%_
                                               _%$%hd4114441531%_
                                               _%$%tl4114541534%_
                                               _%__splice4582345824%_
                                               _%$%target4114641537%_
                                               _%$%tl4114841540%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4113741225%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4113741225%_)))
                                  (if (gx#stx-pair? _%$%hd4114441531%_)
                                      (let ((_%$%e4116441417%_
                                             (gx#syntax-e _%$%hd4114441531%_)))
                                        (let ((_%$%tl4116641424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4116441417%_)))
                                              (_%$%hd4116541421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4116441417%_))))
                                          (if (gx#stx-pair? _%$%hd4116541421%_)
                                              (let ((_%$%e4116741427%_
                                                     (gx#syntax-e
                                                      _%$%hd4116541421%_)))
                                                (let ((_%$%tl4116941434%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e4116741427%_)))
                                                      (_%$%hd4116841431%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e4116741427%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl4116941434%_)
                                                      (let ((_%$%e4117041437%_
                                                             (gx#syntax-e
                                                              _%$%tl4116941434%_)))
                                                        (let ((_%$%tl4117241444%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e4117041437%_)))
                      (_%$%hd4117141441%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e4117041437%_))))
                  (if (gx#stx-null? _%$%tl4117241444%_)
                      (if (gx#stx-null? _%$%tl4116641424%_)
                          (if (gx#stx-pair/null? _%$%tl4114541534%_)
                              (let ((_%__splice4582745828%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl4114541534%_
                                      '0)))
                                (let ((_%$%tl4117541450%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4582745828%_
                                          '1)))
                                      (_%$%target4117341447%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4582745828%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl4117541450%_)
                                      (_%__match4589945900%_
                                       _%$%e4114041517%_
                                       _%$%hd4114141521%_
                                       _%$%tl4114241524%_
                                       _%$%e4114341527%_
                                       _%$%hd4114441531%_
                                       _%$%tl4114541534%_
                                       _%$%e4116441417%_
                                       _%$%hd4116541421%_
                                       _%$%tl4116641424%_
                                       _%$%e4116741427%_
                                       _%$%hd4116841431%_
                                       _%$%tl4116941434%_
                                       _%$%e4117041437%_
                                       _%$%hd4117141441%_
                                       _%$%tl4117241444%_
                                       _%__splice4582745828%_
                                       _%$%target4117341447%_
                                       _%$%tl4117541450%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl4116641424%_)
                                          (let ((_%__splice4583145832%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl4116641424%_
                                                  '0)))
                                            (let ((_%$%tl4120441285%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4583145832%_
                                                      '1)))
                                                  (_%$%target4120241282%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4583145832%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl4120441285%_)
                                                  (_%__match4593945940%_
                                                   _%$%e4114041517%_
                                                   _%$%hd4114141521%_
                                                   _%$%tl4114241524%_
                                                   _%$%e4114341527%_
                                                   _%$%hd4114441531%_
                                                   _%$%tl4114541534%_
                                                   _%$%e4116441417%_
                                                   _%$%hd4116541421%_
                                                   _%$%tl4116641424%_
                                                   _%$%e4116741427%_
                                                   _%$%hd4116841431%_
                                                   _%$%tl4116941434%_
                                                   _%$%e4117041437%_
                                                   _%$%hd4117141441%_
                                                   _%$%tl4117241444%_
                                                   _%__splice4583145832%_
                                                   _%$%target4120241282%_
                                                   _%$%tl4120441285%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g4113741225%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g4113741225%_))))))
                              (if (gx#stx-pair/null? _%$%tl4116641424%_)
                                  (let ((_%__splice4583145832%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl4116641424%_
                                          '0)))
                                    (let ((_%$%tl4120441285%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4583145832%_
                                              '1)))
                                          (_%$%target4120241282%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4583145832%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl4120441285%_)
                                          (_%__match4593945940%_
                                           _%$%e4114041517%_
                                           _%$%hd4114141521%_
                                           _%$%tl4114241524%_
                                           _%$%e4114341527%_
                                           _%$%hd4114441531%_
                                           _%$%tl4114541534%_
                                           _%$%e4116441417%_
                                           _%$%hd4116541421%_
                                           _%$%tl4116641424%_
                                           _%$%e4116741427%_
                                           _%$%hd4116841431%_
                                           _%$%tl4116941434%_
                                           _%$%e4117041437%_
                                           _%$%hd4117141441%_
                                           _%$%tl4117241444%_
                                           _%__splice4583145832%_
                                           _%$%target4120241282%_
                                           _%$%tl4120441285%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g4113741225%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g4113741225%_))))
                          (if (gx#stx-pair/null? _%$%tl4116641424%_)
                              (let ((_%__splice4583145832%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl4116641424%_
                                      '0)))
                                (let ((_%$%tl4120441285%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4583145832%_
                                          '1)))
                                      (_%$%target4120241282%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4583145832%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl4120441285%_)
                                      (_%__match4593945940%_
                                       _%$%e4114041517%_
                                       _%$%hd4114141521%_
                                       _%$%tl4114241524%_
                                       _%$%e4114341527%_
                                       _%$%hd4114441531%_
                                       _%$%tl4114541534%_
                                       _%$%e4116441417%_
                                       _%$%hd4116541421%_
                                       _%$%tl4116641424%_
                                       _%$%e4116741427%_
                                       _%$%hd4116841431%_
                                       _%$%tl4116941434%_
                                       _%$%e4117041437%_
                                       _%$%hd4117141441%_
                                       _%$%tl4117241444%_
                                       _%__splice4583145832%_
                                       _%$%target4120241282%_
                                       _%$%tl4120441285%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4113741225%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g4113741225%_))))
                      (let () (declare (not safe)) (_%$%g4113741225%_)))))
              (let () (declare (not safe)) (_%$%g4113741225%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4113741225%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4113741225%_))))))
                          (let () (declare (not safe)) (_%$%g4113741225%_)))))
                  (let () (declare (not safe)) (_%$%g4113741225%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx41598%_)
        (let* ((_%$%g4160241626%_
                (lambda (_%$%g4160341622%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4160341622%_)))
               (_%$%g4160141709%_
                (lambda (_%$%g4160341630%_)
                  (if (gx#stx-pair? _%$%g4160341630%_)
                      (let ((_%$%e4160641633%_
                             (gx#syntax-e _%$%g4160341630%_)))
                        (let ((_%$%hd4160741637%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4160641633%_)))
                              (_%$%tl4160841640%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4160641633%_))))
                          (if (gx#stx-pair? _%$%tl4160841640%_)
                              (let ((_%$%e4160941643%_
                                     (gx#syntax-e _%$%tl4160841640%_)))
                                (let ((_%$%hd4161041647%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4160941643%_)))
                                      (_%$%tl4161141650%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4160941643%_))))
                                  (if (gx#stx-pair/null? _%$%tl4161141650%_)
                                      (let ((_g46334_
                                             (gx#syntax-split-splice
                                              _%$%tl4161141650%_
                                              '0)))
                                        (begin
                                          (let ((_g46335_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46334_)
                                                       (##values-length
                                                        _g46334_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46335_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46335_)))
                                          (let ((_%$%target4161241653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46334_ 0)))
                                                (_%$%tl4161441656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46334_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4161441656%_)
                                                (letrec ((_%$%loop4161541659%_
                                                          (lambda (_%$%hd4161341663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4161941666%_)
                    (if (gx#stx-pair? _%$%hd4161341663%_)
                        (let ((_%$%e4161641668%_
                               (gx#syntax-e _%$%hd4161341663%_)))
                          (let ((_%$%lp-hd4161741672%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4161641668%_)))
                                (_%$%lp-tl4161841675%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4161641668%_))))
                            (_%$%loop4161541659%_
                             _%$%lp-tl4161841675%_
                             (cons _%$%lp-hd4161741672%_
                                   _%$%body4161941666%_))))
                        (let ((_%$%body4162041678%_
                               (reverse _%$%body4161941666%_)))
                          (if (gx#identifier? _%$%hd4161041647%_)
                              (cons (gx#datum->syntax '#f 'call/cc)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%$%hd4161041647%_
                                                            '())
                                                      (foldr (lambda (_%$%g4170041703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g4170141706%_)
                       (cons _%$%g4170041703%_ _%$%g4170141706%_))
                     '()
                     _%$%body4162041678%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (_%$%g4160241626%_ _%$%g4160341630%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4161541659%_
                                                   _%$%target4161241653%_
                                                   '()))
                                                (_%$%g4160241626%_
                                                 _%$%g4160341630%_)))))
                                      (_%$%g4160241626%_ _%$%g4160341630%_))))
                              (_%$%g4160241626%_ _%$%g4160341630%_))))
                      (_%$%g4160241626%_ _%$%g4160341630%_)))))
          (_%$%g4160141709%_ _%$stx41598%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx41714%_)
        (let* ((_%$%g4171841746%_
                (lambda (_%$%g4171941742%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4171941742%_)))
               (_%$%g4171741843%_
                (lambda (_%$%g4171941750%_)
                  (if (gx#stx-pair? _%$%g4171941750%_)
                      (let ((_%$%e4172341753%_
                             (gx#syntax-e _%$%g4171941750%_)))
                        (let ((_%$%hd4172441757%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4172341753%_)))
                              (_%$%tl4172541760%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4172341753%_))))
                          (if (gx#stx-pair? _%$%tl4172541760%_)
                              (let ((_%$%e4172641763%_
                                     (gx#syntax-e _%$%tl4172541760%_)))
                                (let ((_%$%hd4172741767%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4172641763%_)))
                                      (_%$%tl4172841770%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4172641763%_))))
                                  (if (gx#stx-pair? _%$%tl4172841770%_)
                                      (let ((_%$%e4172941773%_
                                             (gx#syntax-e _%$%tl4172841770%_)))
                                        (let ((_%$%hd4173041777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4172941773%_)))
                                              (_%$%tl4173141780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4172941773%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4173141780%_)
                                              (let ((_g46336_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4173141780%_
                                                      '0)))
                                                (begin
                                                  (let ((_g46337_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g46336_)
                                                               (##values-length
                                                                _g46336_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g46337_ 2)))
                (error "Context expects 2 values" _g46337_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4173241783%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46336_
                                                            0)))
                                                        (_%$%tl4173441786%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46336_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4173441786%_)
                                                        (letrec ((_%$%loop4173541789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4173341793%_ _%$%rest4173941796%_)
                            (if (gx#stx-pair? _%$%hd4173341793%_)
                                (let ((_%$%e4173641798%_
                                       (gx#syntax-e _%$%hd4173341793%_)))
                                  (let ((_%$%lp-hd4173741802%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4173641798%_)))
                                        (_%$%lp-tl4173841805%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4173641798%_))))
                                    (_%$%loop4173541789%_
                                     _%$%lp-tl4173841805%_
                                     (cons _%$%lp-hd4173741802%_
                                           _%$%rest4173941796%_))))
                                (let ((_%$%rest4174041808%_
                                       (reverse _%$%rest4173941796%_)))
                                  (cons (gx#datum->syntax
                                         '#f
                                         'with-unwind-protect)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%$%hd4172741767%_
                                                                '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%$%hd4173041777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr (lambda (_%$%g4183441837%_
                                              _%$%g4183541840%_)
                                       (cons _%$%g4183441837%_
                                             _%$%g4183541840%_))
                                     '()
                                     _%$%rest4174041808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))))
                  (_%$%loop4173541789%_ _%$%target4173241783%_ '()))
                (_%$%g4171841746%_ _%$%g4171941750%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4171841746%_
                                               _%$%g4171941750%_))))
                                      (_%$%g4171841746%_ _%$%g4171941750%_))))
                              (_%$%g4171841746%_ _%$%g4171941750%_))))
                      (_%$%g4171841746%_ _%$%g4171941750%_)))))
          (_%$%g4171741843%_ _%$stx41714%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx41848%_)
        (let* ((_%$%g4185241923%_
                (lambda (_%$%g4185341919%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4185341919%_)))
               (_%$%g4185142200%_
                (lambda (_%$%g4185341927%_)
                  (if (gx#stx-pair? _%$%g4185341927%_)
                      (let ((_%$%e4186041930%_
                             (gx#syntax-e _%$%g4185341927%_)))
                        (let ((_%$%hd4186141934%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4186041930%_)))
                              (_%$%tl4186241937%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4186041930%_))))
                          (if (gx#stx-pair? _%$%tl4186241937%_)
                              (let ((_%$%e4186341940%_
                                     (gx#syntax-e _%$%tl4186241937%_)))
                                (let ((_%$%hd4186441944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4186341940%_)))
                                      (_%$%tl4186541947%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4186341940%_))))
                                  (if (gx#stx-pair/null? _%$%hd4186441944%_)
                                      (let ((_g46338_
                                             (gx#syntax-split-splice
                                              _%$%hd4186441944%_
                                              '0)))
                                        (begin
                                          (let ((_g46339_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46338_)
                                                       (##values-length
                                                        _g46338_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46339_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46339_)))
                                          (let ((_%$%target4186641950%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46338_ 0)))
                                                (_%$%tl4186841953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46338_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4186841953%_)
                                                (letrec ((_%$%loop4186941956%_
                                                          (lambda (_%$%hd4186741960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%step4187341963%_
                           _%$%init4187441964%_
                           _%$%var4187541965%_)
                    (if (gx#stx-pair? _%$%hd4186741960%_)
                        (let ((_%$%e4187041967%_
                               (gx#syntax-e _%$%hd4186741960%_)))
                          (let ((_%$%lp-hd4187141971%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4187041967%_)))
                                (_%$%lp-tl4187241974%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4187041967%_))))
                            (if (gx#stx-pair? _%$%lp-hd4187141971%_)
                                (let ((_%$%e4187941977%_
                                       (gx#syntax-e _%$%lp-hd4187141971%_)))
                                  (let ((_%$%hd4188041981%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4187941977%_)))
                                        (_%$%tl4188141984%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4187941977%_))))
                                    (if (gx#stx-pair? _%$%tl4188141984%_)
                                        (let ((_%$%e4188241987%_
                                               (gx#syntax-e
                                                _%$%tl4188141984%_)))
                                          (let ((_%$%hd4188341991%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4188241987%_)))
                                                (_%$%tl4188441994%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4188241987%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4188441994%_)
                                                (let ((_g46340_
                                                       (gx#syntax-split-splice
                                                        _%$%tl4188441994%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g46341_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g46340_)
                         (##values-length _g46340_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g46341_ 2)))
                  (error "Context expects 2 values" _g46341_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target4188541997%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g46340_
                                                              0)))
                                                          (_%$%tl4188742000%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g46340_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4188742000%_)
                                                          (letrec ((_%$%loop4188842003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd4188642007%_ _%$%step4189242010%_)
                              (if (gx#stx-pair? _%$%hd4188642007%_)
                                  (let ((_%$%e4188942012%_
                                         (gx#syntax-e _%$%hd4188642007%_)))
                                    (let ((_%$%lp-hd4189042016%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4188942012%_)))
                                          (_%$%lp-tl4189142019%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4188942012%_))))
                                      (_%$%loop4188842003%_
                                       _%$%lp-tl4189142019%_
                                       (cons _%$%lp-hd4189042016%_
                                             _%$%step4189242010%_))))
                                  (let ((_%$%step4189342022%_
                                         (reverse _%$%step4189242010%_)))
                                    (_%$%loop4186941956%_
                                     _%$%lp-tl4187241974%_
                                     (cons _%$%step4189342022%_
                                           _%$%step4187341963%_)
                                     (cons _%$%hd4188341991%_
                                           _%$%init4187441964%_)
                                     (cons _%$%hd4188041981%_
                                           _%$%var4187541965%_)))))))
                    (_%$%loop4188842003%_ _%$%target4188541997%_ '()))
                  (_%$%g4185241923%_ _%$%g4185341927%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4185241923%_
                                                 _%$%g4185341927%_))))
                                        (_%$%g4185241923%_
                                         _%$%g4185341927%_))))
                                (_%$%g4185241923%_ _%$%g4185341927%_))))
                        (let ((_%$%step4187642025%_
                               (reverse _%$%step4187341963%_))
                              (_%$%init4187742027%_
                               (reverse _%$%init4187441964%_))
                              (_%$%var4187842028%_
                               (reverse _%$%var4187541965%_)))
                          (if (gx#stx-pair? _%$%tl4186541947%_)
                              (let ((_%$%e4189442030%_
                                     (gx#syntax-e _%$%tl4186541947%_)))
                                (let ((_%$%hd4189542034%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4189442030%_)))
                                      (_%$%tl4189642037%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4189442030%_))))
                                  (if (gx#stx-pair? _%$%hd4189542034%_)
                                      (let ((_%$%e4189742040%_
                                             (gx#syntax-e _%$%hd4189542034%_)))
                                        (let ((_%$%hd4189842044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4189742040%_)))
                                              (_%$%tl4189942047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4189742040%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4189942047%_)
                                              (let ((_g46342_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4189942047%_
                                                      '0)))
                                                (begin
                                                  (let ((_g46343_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g46342_)
                                                               (##values-length
                                                                _g46342_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g46343_ 2)))
                (error "Context expects 2 values" _g46343_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4190042050%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46342_
                                                            0)))
                                                        (_%$%tl4190242053%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46342_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4190242053%_)
                                                        (letrec ((_%$%loop4190342056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4190142060%_ _%$%fini4190742063%_)
                            (if (gx#stx-pair? _%$%hd4190142060%_)
                                (let ((_%$%e4190442065%_
                                       (gx#syntax-e _%$%hd4190142060%_)))
                                  (let ((_%$%lp-hd4190542069%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4190442065%_)))
                                        (_%$%lp-tl4190642072%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4190442065%_))))
                                    (_%$%loop4190342056%_
                                     _%$%lp-tl4190642072%_
                                     (cons _%$%lp-hd4190542069%_
                                           _%$%fini4190742063%_))))
                                (let ((_%$%fini4190842075%_
                                       (reverse _%$%fini4190742063%_)))
                                  (if (gx#stx-pair/null? _%$%tl4189642037%_)
                                      (let ((_g46344_
                                             (gx#syntax-split-splice
                                              _%$%tl4189642037%_
                                              '0)))
                                        (begin
                                          (let ((_g46345_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46344_)
                                                       (##values-length
                                                        _g46344_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46345_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46345_)))
                                          (let ((_%$%target4190942078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46344_ 0)))
                                                (_%$%tl4191142081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46344_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4191142081%_)
                                                (letrec ((_%$%loop4191242084%_
                                                          (lambda (_%$%hd4191042088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4191642091%_)
                    (if (gx#stx-pair? _%$%hd4191042088%_)
                        (let ((_%$%e4191342093%_
                               (gx#syntax-e _%$%hd4191042088%_)))
                          (let ((_%$%lp-hd4191442097%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4191342093%_)))
                                (_%$%lp-tl4191542100%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4191342093%_))))
                            (_%$%loop4191242084%_
                             _%$%lp-tl4191542100%_
                             (cons _%$%lp-hd4191442097%_
                                   _%$%body4191642091%_))))
                        (let ((_%$%body4191742103%_
                               (reverse _%$%body4191642091%_)))
                          (if (gx#stx-andmap
                               gx#identifier?
                               (foldr (lambda (_%$%g4214542148%_
                                               _%$%g4214642151%_)
                                        (cons _%$%g4214542148%_
                                              _%$%g4214642151%_))
                                      '()
                                      _%$%var4187842028%_))
                              (cons (gx#datum->syntax '#f 'let)
                                    (cons (gx#datum->syntax '#f '$loop)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%init4187742027%_
                                                   _%$%var4187842028%_)
                                                  (foldr (lambda (_%$%g4215342166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4215442169%_
                          _%$%g4215542171%_)
                   (cons (cons _%$%g4215442169%_ (cons _%$%g4215342166%_ '()))
                         _%$%g4215542171%_))
                 '()
                 _%$%init4187742027%_
                 _%$%var4187842028%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%$%hd4189842044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (cons '#!void
                                            (foldr (lambda (_%$%g4215642174%_
                                                            _%$%g4215742177%_)
                                                     (cons _%$%g4215642174%_
                                                           _%$%g4215742177%_))
                                                   '()
                                                   _%$%fini4190842075%_)))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%$%g4215842180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4215942183%_)
                   (cons _%$%g4215842180%_ _%$%g4215942183%_))
                 (cons (cons (gx#datum->syntax '#f '$loop)
                             (begin
                               (gx#syntax-check-splice-targets
                                _%$%step4187642025%_
                                _%$%var4187842028%_)
                               (foldr (lambda (_%$%g4216042186%_
                                               _%$%g4216142189%_
                                               _%$%g4216242191%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%$%g4216142189%_
                                                          (foldr (lambda (_%$%g4216342194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%$%g4216442197%_)
                           (cons _%$%g4216342194%_ _%$%g4216442197%_))
                         '()
                         _%$%g4216042186%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%$%g4216242191%_))
                                      '()
                                      _%$%step4187642025%_
                                      _%$%var4187842028%_)))
                       '())
                 _%$%body4191742103%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g4185241923%_ _%$%g4185341927%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4191242084%_
                                                   _%$%target4190942078%_
                                                   '()))
                                                (_%$%g4185241923%_
                                                 _%$%g4185341927%_)))))
                                      (_%$%g4185241923%_
                                       _%$%g4185341927%_)))))))
                  (_%$%loop4190342056%_ _%$%target4190042050%_ '()))
                (_%$%g4185241923%_ _%$%g4185341927%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4185241923%_
                                               _%$%g4185341927%_))))
                                      (_%$%g4185241923%_ _%$%g4185341927%_))))
                              (_%$%g4185241923%_ _%$%g4185341927%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4186941956%_
                                                   _%$%target4186641950%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%$%g4185241923%_
                                                 _%$%g4185341927%_)))))
                                      (_%$%g4185241923%_ _%$%g4185341927%_))))
                              (_%$%g4185241923%_ _%$%g4185341927%_))))
                      (_%$%g4185241923%_ _%$%g4185341927%_)))))
          (_%$%g4185142200%_ _%$stx41848%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx42208%_)
        (let* ((_%$%g4221242283%_
                (lambda (_%$%g4221342279%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4221342279%_)))
               (_%$%g4221142560%_
                (lambda (_%$%g4221342287%_)
                  (if (gx#stx-pair? _%$%g4221342287%_)
                      (let ((_%$%e4222042290%_
                             (gx#syntax-e _%$%g4221342287%_)))
                        (let ((_%$%hd4222142294%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4222042290%_)))
                              (_%$%tl4222242297%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4222042290%_))))
                          (if (gx#stx-pair? _%$%tl4222242297%_)
                              (let ((_%$%e4222342300%_
                                     (gx#syntax-e _%$%tl4222242297%_)))
                                (let ((_%$%hd4222442304%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4222342300%_)))
                                      (_%$%tl4222542307%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4222342300%_))))
                                  (if (gx#stx-pair/null? _%$%hd4222442304%_)
                                      (let ((_g46346_
                                             (gx#syntax-split-splice
                                              _%$%hd4222442304%_
                                              '0)))
                                        (begin
                                          (let ((_g46347_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46346_)
                                                       (##values-length
                                                        _g46346_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46347_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46347_)))
                                          (let ((_%$%target4222642310%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46346_ 0)))
                                                (_%$%tl4222842313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46346_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4222842313%_)
                                                (letrec ((_%$%loop4222942316%_
                                                          (lambda (_%$%hd4222742320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%step4223342323%_
                           _%$%init4223442324%_
                           _%$%var4223542325%_)
                    (if (gx#stx-pair? _%$%hd4222742320%_)
                        (let ((_%$%e4223042327%_
                               (gx#syntax-e _%$%hd4222742320%_)))
                          (let ((_%$%lp-hd4223142331%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4223042327%_)))
                                (_%$%lp-tl4223242334%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4223042327%_))))
                            (if (gx#stx-pair? _%$%lp-hd4223142331%_)
                                (let ((_%$%e4223942337%_
                                       (gx#syntax-e _%$%lp-hd4223142331%_)))
                                  (let ((_%$%hd4224042341%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4223942337%_)))
                                        (_%$%tl4224142344%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4223942337%_))))
                                    (if (gx#stx-pair? _%$%tl4224142344%_)
                                        (let ((_%$%e4224242347%_
                                               (gx#syntax-e
                                                _%$%tl4224142344%_)))
                                          (let ((_%$%hd4224342351%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4224242347%_)))
                                                (_%$%tl4224442354%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4224242347%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4224442354%_)
                                                (let ((_g46348_
                                                       (gx#syntax-split-splice
                                                        _%$%tl4224442354%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g46349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g46348_)
                         (##values-length _g46348_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g46349_ 2)))
                  (error "Context expects 2 values" _g46349_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target4224542357%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g46348_
                                                              0)))
                                                          (_%$%tl4224742360%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g46348_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4224742360%_)
                                                          (letrec ((_%$%loop4224842363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd4224642367%_ _%$%step4225242370%_)
                              (if (gx#stx-pair? _%$%hd4224642367%_)
                                  (let ((_%$%e4224942372%_
                                         (gx#syntax-e _%$%hd4224642367%_)))
                                    (let ((_%$%lp-hd4225042376%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4224942372%_)))
                                          (_%$%lp-tl4225142379%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4224942372%_))))
                                      (_%$%loop4224842363%_
                                       _%$%lp-tl4225142379%_
                                       (cons _%$%lp-hd4225042376%_
                                             _%$%step4225242370%_))))
                                  (let ((_%$%step4225342382%_
                                         (reverse _%$%step4225242370%_)))
                                    (_%$%loop4222942316%_
                                     _%$%lp-tl4223242334%_
                                     (cons _%$%step4225342382%_
                                           _%$%step4223342323%_)
                                     (cons _%$%hd4224342351%_
                                           _%$%init4223442324%_)
                                     (cons _%$%hd4224042341%_
                                           _%$%var4223542325%_)))))))
                    (_%$%loop4224842363%_ _%$%target4224542357%_ '()))
                  (_%$%g4221242283%_ _%$%g4221342287%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4221242283%_
                                                 _%$%g4221342287%_))))
                                        (_%$%g4221242283%_
                                         _%$%g4221342287%_))))
                                (_%$%g4221242283%_ _%$%g4221342287%_))))
                        (let ((_%$%step4223642385%_
                               (reverse _%$%step4223342323%_))
                              (_%$%init4223742387%_
                               (reverse _%$%init4223442324%_))
                              (_%$%var4223842388%_
                               (reverse _%$%var4223542325%_)))
                          (if (gx#stx-pair? _%$%tl4222542307%_)
                              (let ((_%$%e4225442390%_
                                     (gx#syntax-e _%$%tl4222542307%_)))
                                (let ((_%$%hd4225542394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4225442390%_)))
                                      (_%$%tl4225642397%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4225442390%_))))
                                  (if (gx#stx-pair? _%$%hd4225542394%_)
                                      (let ((_%$%e4225742400%_
                                             (gx#syntax-e _%$%hd4225542394%_)))
                                        (let ((_%$%hd4225842404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4225742400%_)))
                                              (_%$%tl4225942407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4225742400%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4225942407%_)
                                              (let ((_g46350_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4225942407%_
                                                      '0)))
                                                (begin
                                                  (let ((_g46351_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g46350_)
                                                               (##values-length
                                                                _g46350_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g46351_ 2)))
                (error "Context expects 2 values" _g46351_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4226042410%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46350_
                                                            0)))
                                                        (_%$%tl4226242413%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46350_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4226242413%_)
                                                        (letrec ((_%$%loop4226342416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4226142420%_ _%$%fini4226742423%_)
                            (if (gx#stx-pair? _%$%hd4226142420%_)
                                (let ((_%$%e4226442425%_
                                       (gx#syntax-e _%$%hd4226142420%_)))
                                  (let ((_%$%lp-hd4226542429%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4226442425%_)))
                                        (_%$%lp-tl4226642432%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4226442425%_))))
                                    (_%$%loop4226342416%_
                                     _%$%lp-tl4226642432%_
                                     (cons _%$%lp-hd4226542429%_
                                           _%$%fini4226742423%_))))
                                (let ((_%$%fini4226842435%_
                                       (reverse _%$%fini4226742423%_)))
                                  (if (gx#stx-pair/null? _%$%tl4225642397%_)
                                      (let ((_g46352_
                                             (gx#syntax-split-splice
                                              _%$%tl4225642397%_
                                              '0)))
                                        (begin
                                          (let ((_g46353_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46352_)
                                                       (##values-length
                                                        _g46352_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46353_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46353_)))
                                          (let ((_%$%target4226942438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46352_ 0)))
                                                (_%$%tl4227142441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46352_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4227142441%_)
                                                (letrec ((_%$%loop4227242444%_
                                                          (lambda (_%$%hd4227042448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4227642451%_)
                    (if (gx#stx-pair? _%$%hd4227042448%_)
                        (let ((_%$%e4227342453%_
                               (gx#syntax-e _%$%hd4227042448%_)))
                          (let ((_%$%lp-hd4227442457%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4227342453%_)))
                                (_%$%lp-tl4227542460%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4227342453%_))))
                            (_%$%loop4227242444%_
                             _%$%lp-tl4227542460%_
                             (cons _%$%lp-hd4227442457%_
                                   _%$%body4227642451%_))))
                        (let ((_%$%body4227742463%_
                               (reverse _%$%body4227642451%_)))
                          (if (gx#stx-andmap
                               gx#identifier?
                               (foldr (lambda (_%$%g4250542508%_
                                               _%$%g4250642511%_)
                                        (cons _%$%g4250542508%_
                                              _%$%g4250642511%_))
                                      '()
                                      _%$%var4223842388%_))
                              (cons (gx#datum->syntax '#f 'let)
                                    (cons (gx#datum->syntax '#f '$loop)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%init4223742387%_
                                                   _%$%var4223842388%_)
                                                  (foldr (lambda (_%$%g4251342526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4251442529%_
                          _%$%g4251542531%_)
                   (cons (cons _%$%g4251442529%_ (cons _%$%g4251342526%_ '()))
                         _%$%g4251542531%_))
                 '()
                 _%$%init4223742387%_
                 _%$%var4223842388%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (foldr (lambda (_%$%g4251642534%_
                                                                _%$%g4251742537%_)
                                                         (cons _%$%g4251642534%_
                                                               _%$%g4251742537%_))
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'if)
                           (cons _%$%hd4225842404%_
                                 (cons (cons (gx#datum->syntax '#f '$loop)
                                             (begin
                                               (gx#syntax-check-splice-targets
                                                _%$%step4223642385%_
                                                _%$%var4223842388%_)
                                               (foldr (lambda (_%$%g4251842540%_
                                                               _%$%g4251942543%_
                                                               _%$%g4252042545%_)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin)
                            (cons _%$%g4251942543%_
                                  (foldr (lambda (_%$%g4252142548%_
                                                  _%$%g4252242551%_)
                                           (cons _%$%g4252142548%_
                                                 _%$%g4252242551%_))
                                         '()
                                         _%$%g4251842540%_)))
                      _%$%g4252042545%_))
              '()
              _%$%step4223642385%_
              _%$%var4223842388%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'begin)
                                                   (cons '#!void
                                                         (foldr (lambda (_%$%g4252342554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g4252442557%_)
                          (cons _%$%g4252342554%_ _%$%g4252442557%_))
                        '()
                        _%$%fini4226842435%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                     '())
               _%$%body4227742463%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g4221242283%_ _%$%g4221342287%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4227242444%_
                                                   _%$%target4226942438%_
                                                   '()))
                                                (_%$%g4221242283%_
                                                 _%$%g4221342287%_)))))
                                      (_%$%g4221242283%_
                                       _%$%g4221342287%_)))))))
                  (_%$%loop4226342416%_ _%$%target4226042410%_ '()))
                (_%$%g4221242283%_ _%$%g4221342287%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4221242283%_
                                               _%$%g4221342287%_))))
                                      (_%$%g4221242283%_ _%$%g4221342287%_))))
                              (_%$%g4221242283%_ _%$%g4221342287%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4222942316%_
                                                   _%$%target4222642310%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%$%g4221242283%_
                                                 _%$%g4221342287%_)))))
                                      (_%$%g4221242283%_ _%$%g4221342287%_))))
                              (_%$%g4221242283%_ _%$%g4221342287%_))))
                      (_%$%g4221242283%_ _%$%g4221342287%_)))))
          (_%$%g4221142560%_ _%$stx42208%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx42568%_)
        (let* ((_%$%g4257242596%_
                (lambda (_%$%g4257342592%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4257342592%_)))
               (_%$%g4257142679%_
                (lambda (_%$%g4257342600%_)
                  (if (gx#stx-pair? _%$%g4257342600%_)
                      (let ((_%$%e4257642603%_
                             (gx#syntax-e _%$%g4257342600%_)))
                        (let ((_%$%hd4257742607%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4257642603%_)))
                              (_%$%tl4257842610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4257642603%_))))
                          (if (gx#stx-pair? _%$%tl4257842610%_)
                              (let ((_%$%e4257942613%_
                                     (gx#syntax-e _%$%tl4257842610%_)))
                                (let ((_%$%hd4258042617%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4257942613%_)))
                                      (_%$%tl4258142620%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4257942613%_))))
                                  (if (gx#stx-pair/null? _%$%tl4258142620%_)
                                      (let ((_g46354_
                                             (gx#syntax-split-splice
                                              _%$%tl4258142620%_
                                              '0)))
                                        (begin
                                          (let ((_g46355_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46354_)
                                                       (##values-length
                                                        _g46354_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46355_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46355_)))
                                          (let ((_%$%target4258242623%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46354_ 0)))
                                                (_%$%tl4258442626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46354_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4258442626%_)
                                                (letrec ((_%$%loop4258542629%_
                                                          (lambda (_%$%hd4258342633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4258942636%_)
                    (if (gx#stx-pair? _%$%hd4258342633%_)
                        (let ((_%$%e4258642638%_
                               (gx#syntax-e _%$%hd4258342633%_)))
                          (let ((_%$%lp-hd4258742642%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4258642638%_)))
                                (_%$%lp-tl4258842645%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4258642638%_))))
                            (_%$%loop4258542629%_
                             _%$%lp-tl4258842645%_
                             (cons _%$%lp-hd4258742642%_
                                   _%$%body4258942636%_))))
                        (let ((_%$%body4259042648%_
                               (reverse _%$%body4258942636%_)))
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (gx#datum->syntax '#f 'lp)
                                      (cons '()
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'when)
                                                        (cons _%$%hd4258042617%_
                                                              (foldr (lambda (_%$%g4267042673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%$%g4267142676%_)
                               (cons _%$%g4267042673%_ _%$%g4267142676%_))
                             (cons (cons (gx#datum->syntax '#f 'lp) '()) '())
                             _%$%body4259042648%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4258542629%_
                                                   _%$%target4258242623%_
                                                   '()))
                                                (_%$%g4257242596%_
                                                 _%$%g4257342600%_)))))
                                      (_%$%g4257242596%_ _%$%g4257342600%_))))
                              (_%$%g4257242596%_ _%$%g4257342600%_))))
                      (_%$%g4257242596%_ _%$%g4257342600%_)))))
          (_%$%g4257142679%_ _%$stx42568%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx42684%_)
        (let* ((_%$%g4268842712%_
                (lambda (_%$%g4268942708%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4268942708%_)))
               (_%$%g4268742795%_
                (lambda (_%$%g4268942716%_)
                  (if (gx#stx-pair? _%$%g4268942716%_)
                      (let ((_%$%e4269242719%_
                             (gx#syntax-e _%$%g4268942716%_)))
                        (let ((_%$%hd4269342723%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4269242719%_)))
                              (_%$%tl4269442726%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4269242719%_))))
                          (if (gx#stx-pair? _%$%tl4269442726%_)
                              (let ((_%$%e4269542729%_
                                     (gx#syntax-e _%$%tl4269442726%_)))
                                (let ((_%$%hd4269642733%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4269542729%_)))
                                      (_%$%tl4269742736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4269542729%_))))
                                  (if (gx#stx-pair/null? _%$%tl4269742736%_)
                                      (let ((_g46356_
                                             (gx#syntax-split-splice
                                              _%$%tl4269742736%_
                                              '0)))
                                        (begin
                                          (let ((_g46357_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46356_)
                                                       (##values-length
                                                        _g46356_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46357_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46357_)))
                                          (let ((_%$%target4269842739%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46356_ 0)))
                                                (_%$%tl4270042742%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46356_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4270042742%_)
                                                (letrec ((_%$%loop4270142745%_
                                                          (lambda (_%$%hd4269942749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4270542752%_)
                    (if (gx#stx-pair? _%$%hd4269942749%_)
                        (let ((_%$%e4270242754%_
                               (gx#syntax-e _%$%hd4269942749%_)))
                          (let ((_%$%lp-hd4270342758%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4270242754%_)))
                                (_%$%lp-tl4270442761%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4270242754%_))))
                            (_%$%loop4270142745%_
                             _%$%lp-tl4270442761%_
                             (cons _%$%lp-hd4270342758%_
                                   _%$%body4270542752%_))))
                        (let ((_%$%body4270642764%_
                               (reverse _%$%body4270542752%_)))
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (gx#datum->syntax '#f 'lp)
                                      (cons '()
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'unless)
                                                        (cons _%$%hd4269642733%_
                                                              (foldr (lambda (_%$%g4278642789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%$%g4278742792%_)
                               (cons _%$%g4278642789%_ _%$%g4278742792%_))
                             (cons (cons (gx#datum->syntax '#f 'lp) '()) '())
                             _%$%body4270642764%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4270142745%_
                                                   _%$%target4269842739%_
                                                   '()))
                                                (_%$%g4268842712%_
                                                 _%$%g4268942716%_)))))
                                      (_%$%g4268842712%_ _%$%g4268942716%_))))
                              (_%$%g4268842712%_ _%$%g4268942716%_))))
                      (_%$%g4268842712%_ _%$%g4268942716%_)))))
          (_%$%g4268742795%_ _%$stx42684%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx42800%_)
        (let ((_%$%g4280342810%_
               (lambda (_%$%g4280442806%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4280442806%_))))
          (_%$%g4280342810%_ _%$stx42800%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx42814%_)
        (let ((_%$%g4281742824%_
               (lambda (_%$%g4281842820%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4281842820%_))))
          (_%$%g4281742824%_ _%$stx42814%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx42828%_)
        (letrec ((_%generate-thunk42831%_
                  (lambda (_%body44150%_)
                    (if (null? _%body44150%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx42828%_)
                        (let* ((_%$%g4415344170%_
                                (lambda (_%$%g4415444166%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g4415444166%_)))
                               (_%$%g4415244229%_
                                (lambda (_%$%g4415444174%_)
                                  (if (gx#stx-pair/null? _%$%g4415444174%_)
                                      (let ((_g46358_
                                             (gx#syntax-split-splice
                                              _%$%g4415444174%_
                                              '0)))
                                        (begin
                                          (let ((_g46359_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46358_)
                                                       (##values-length
                                                        _g46358_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46359_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46359_)))
                                          (let ((_%$%target4415644177%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46358_ 0)))
                                                (_%$%tl4415844180%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46358_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4415844180%_)
                                                (letrec ((_%$%loop4415944183%_
                                                          (lambda (_%$%hd4415744187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%e4416344190%_)
                    (if (gx#stx-pair? _%$%hd4415744187%_)
                        (let ((_%$%e4416044192%_
                               (gx#syntax-e _%$%hd4415744187%_)))
                          (let ((_%$%lp-hd4416144196%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4416044192%_)))
                                (_%$%lp-tl4416244199%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4416044192%_))))
                            (_%$%loop4415944183%_
                             _%$%lp-tl4416244199%_
                             (cons _%$%lp-hd4416144196%_ _%$%e4416344190%_))))
                        (let ((_%$%e4416444202%_ (reverse _%$%e4416344190%_)))
                          (cons (gx#datum->syntax '#f 'lambda)
                                (cons '()
                                      (foldr (lambda (_%$%g4422044223%_
                                                      _%$%g4422144226%_)
                                               (cons _%$%g4422044223%_
                                                     _%$%g4422144226%_))
                                             '()
                                             _%$%e4416444202%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4415944183%_
                                                   _%$%target4415644177%_
                                                   '()))
                                                (_%$%g4415344170%_
                                                 _%$%g4415444174%_)))))
                                      (_%$%g4415344170%_ _%$%g4415444174%_)))))
                          (_%$%g4415244229%_ (reverse _%body44150%_))))))
                 (_%generate-fini42833%_
                  (lambda (_%thunk44033%_ _%fini44035%_)
                    (let* ((_%$%g4403744061%_
                            (lambda (_%$%g4403844057%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g4403844057%_)))
                           (_%$%g4403644146%_
                            (lambda (_%$%g4403844065%_)
                              (if (gx#stx-pair? _%$%g4403844065%_)
                                  (let ((_%$%e4404144068%_
                                         (gx#syntax-e _%$%g4403844065%_)))
                                    (let ((_%$%hd4404244072%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4404144068%_)))
                                          (_%$%tl4404344075%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4404144068%_))))
                                      (if (gx#stx-pair? _%$%tl4404344075%_)
                                          (let ((_%$%e4404444078%_
                                                 (gx#syntax-e
                                                  _%$%tl4404344075%_)))
                                            (let ((_%$%hd4404544082%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4404444078%_)))
                                                  (_%$%tl4404644085%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4404444078%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd4404544082%_)
                                                  (let ((_g46360_
                                                         (gx#syntax-split-splice
                                                          _%$%hd4404544082%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g46361_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g46360_)
                           (##values-length _g46360_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g46361_ 2)))
                    (error "Context expects 2 values" _g46361_)))
              (let ((_%$%target4404744088%_
                     (let () (declare (not safe)) (##values-ref _g46360_ 0)))
                    (_%$%tl4404944091%_
                     (let () (declare (not safe)) (##values-ref _g46360_ 1))))
                (if (gx#stx-null? _%$%tl4404944091%_)
                    (letrec ((_%$%loop4405044094%_
                              (lambda (_%$%hd4404844098%_ _%$%e4405444101%_)
                                (if (gx#stx-pair? _%$%hd4404844098%_)
                                    (let ((_%$%e4405144103%_
                                           (gx#syntax-e _%$%hd4404844098%_)))
                                      (let ((_%$%lp-hd4405244107%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4405144103%_)))
                                            (_%$%lp-tl4405344110%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4405144103%_))))
                                        (_%$%loop4405044094%_
                                         _%$%lp-tl4405344110%_
                                         (cons _%$%lp-hd4405244107%_
                                               _%$%e4405444101%_))))
                                    (let ((_%$%e4405544113%_
                                           (reverse _%$%e4405444101%_)))
                                      (if (gx#stx-null? _%$%tl4404644085%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'with-unwind-protect)
                                                (cons _%$%hd4404244072%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '()
                                (foldr (lambda (_%$%g4413744140%_
                                                _%$%g4413844143%_)
                                         (cons _%$%g4413744140%_
                                               _%$%g4413844143%_))
                                       '()
                                       _%$%e4405544113%_)))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g4403744061%_
                                           _%$%g4403844065%_)))))))
                      (_%$%loop4405044094%_ _%$%target4404744088%_ '()))
                    (_%$%g4403744061%_ _%$%g4403844065%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4403744061%_
                                                   _%$%g4403844065%_))))
                                          (_%$%g4403744061%_
                                           _%$%g4403844065%_))))
                                  (_%$%g4403744061%_ _%$%g4403844065%_)))))
                      (_%$%g4403644146%_
                       (list _%thunk44033%_ _%fini44035%_)))))
                 (_%generate-catch42834%_
                  (lambda (_%handlers43448%_ _%thunk43450%_)
                    (let* ((_%$%g4345243460%_
                            (lambda (_%$%g4345343456%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g4345343456%_)))
                           (_%$%g4345144029%_
                            (lambda (_%$%g4345343464%_)
                              (let _%lp43479%_ ((_%rest43482%_
                                                 _%handlers43448%_)
                                                (_%clauses43484%_ '()))
                                (let* ((_%$%rest4348543493%_ _%rest43482%_)
                                       (_%$%else4348743624%_
                                        (lambda ()
                                          (let* ((_%$%g4350543529%_
                                                  (lambda (_%$%g4350643525%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g4350643525%_)))
                                                 (_%$%g4350443620%_
                                                  (lambda (_%$%g4350643533%_)
                                                    (if (gx#stx-pair?
                                                         _%$%g4350643533%_)
                                                        (let ((_%$%e4350943536%_
                                                               (gx#syntax-e
                                                                _%$%g4350643533%_)))
                                                          (let ((_%$%hd4351043540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4350943536%_)))
                        (_%$%tl4351143543%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4350943536%_))))
                    (if (gx#stx-pair/null? _%$%hd4351043540%_)
                        (let ((_g46362_
                               (gx#syntax-split-splice _%$%hd4351043540%_ '0)))
                          (begin
                            (let ((_g46363_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g46362_)
                                         (##values-length _g46362_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g46363_ 2)))
                                  (error "Context expects 2 values" _g46363_)))
                            (let ((_%$%target4351243546%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g46362_ 0)))
                                  (_%$%tl4351443549%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g46362_ 1))))
                              (if (gx#stx-null? _%$%tl4351443549%_)
                                  (letrec ((_%$%loop4351543552%_
                                            (lambda (_%$%hd4351343556%_
                                                     _%$%clause4351943559%_)
                                              (if (gx#stx-pair?
                                                   _%$%hd4351343556%_)
                                                  (let ((_%$%e4351643561%_
                                                         (gx#syntax-e
                                                          _%$%hd4351343556%_)))
                                                    (let ((_%$%lp-hd4351743565%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e4351643561%_)))
                                                          (_%$%lp-tl4351843568%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e4351643561%_))))
                                                      (_%$%loop4351543552%_
                                                       _%$%lp-tl4351843568%_
                                                       (cons _%$%lp-hd4351743565%_
                                                             _%$%clause4351943559%_))))
                                                  (let ((_%$%clause4352043571%_
                                                         (reverse _%$%clause4351943559%_)))
                                                    (if (gx#stx-pair?
                                                         _%$%tl4351143543%_)
                                                        (let ((_%$%e4352143574%_
                                                               (gx#syntax-e
                                                                _%$%tl4351143543%_)))
                                                          (let ((_%$%hd4352243578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4352143574%_)))
                        (_%$%tl4352343581%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4352143574%_))))
                    (if (gx#stx-null? _%$%tl4352343581%_)
                        (cons (gx#datum->syntax '#f 'with-catch)
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons (cons _%$%g4345343464%_ '())
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'cond)
                                                            (foldr (lambda (_%$%g4361143614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%$%g4361243617%_)
                             (cons _%$%g4361143614%_ _%$%g4361243617%_))
                           (cons (cons (gx#datum->syntax '#f 'else)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'raise)
                                                   (cons _%$%g4345343464%_
                                                         '()))
                                             '()))
                                 '())
                           _%$%clause4352043571%_))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons _%$%hd4352243578%_ '())))
                        (_%$%g4350543529%_ _%$%g4350643533%_))))
                (_%$%g4350543529%_ _%$%g4350643533%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop4351543552%_
                                     _%$%target4351243546%_
                                     '()))
                                  (_%$%g4350543529%_ _%$%g4350643533%_)))))
                        (_%$%g4350543529%_ _%$%g4350643533%_))))
                (_%$%g4350543529%_ _%$%g4350643533%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g4350443620%_
                                             (list _%clauses43484%_
                                                   _%thunk43450%_)))))
                                       (_%$%K4348944013%_
                                        (lambda (_%rest43628%_ _%hd43630%_)
                                          (let* ((_%__stx4594245943%_
                                                  _%hd43630%_)
                                                 (_%$%g4363543705%_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%__stx4594245943%_))))
                                            (let ((_%__kont4594545946%_
                                                   (lambda (_%$%g4363743992%_
                                                            _%$%g4363843994%_)
                                                     (_%lp43479%_
                                                      _%rest43628%_
                                                      (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '#f
                                       '?)
                                      (cons _%$%g4363843994%_ '()))
                                (cons _%$%g4345343464%_ '()))
                          (cons (gx#datum->syntax '#f '=>)
                                (cons _%$%g4363743992%_ '())))
                    _%clauses43484%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4594745948%_
                                                   (lambda (_%$%g4364843924%_
                                                            _%$%g4364943926%_
                                                            _%$%g4365043927%_)
                                                     (_%lp43479%_
                                                      _%rest43628%_
                                                      (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '#f
                                       '?)
                                      (cons _%$%g4365043927%_ '()))
                                (cons _%$%g4345343464%_ '()))
                          (cons (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _%$%g4364943926%_
                                                        (cons _%$%g4345343464%_
                                                              '()))
                                                  '())
                                            (foldr (lambda (_%$%g4394643949%_
                                                            _%$%g4394743952%_)
                                                     (cons _%$%g4394643949%_
                                                           _%$%g4394743952%_))
                                                   '()
                                                   _%$%g4364843924%_)))
                                '()))
                    _%clauses43484%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4595145952%_
                                                   (lambda (_%$%g4366943832%_
                                                            _%$%g4367043834%_)
                                                     (_%lp43479%_
                                                      _%rest43628%_
                                                      (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _%$%g4367043834%_
                                                        (cons _%$%g4345343464%_
                                                              '()))
                                                  '())
                                            (foldr (lambda (_%$%g4385043853%_
                                                            _%$%g4385143856%_)
                                                     (cons _%$%g4385043853%_
                                                           _%$%g4385143856%_))
                                                   '()
                                                   _%$%g4366943832%_)))
                                '()))
                    _%clauses43484%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4595545956%_
                                                   (lambda (_%$%g4368643750%_
                                                            _%$%g4368743752%_)
                                                     (_%lp43479%_
                                                      _%rest43628%_
                                                      (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (foldr (lambda (_%$%g4376843771%_
                                                      _%$%g4376943774%_)
                                               (cons _%$%g4376843771%_
                                                     _%$%g4376943774%_))
                                             '()
                                             _%$%g4368643750%_))
                                '()))
                    _%clauses43484%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let* ((_%__match4604746048%_
                                                      (lambda (_%$%e4368843712%_
                                                               _%$%hd4368943716%_
                                                               _%$%tl4369043719%_
                                                               _%__splice4595745958%_
                                                               _%$%target4369143722%_
                                                               _%$%tl4369343725%_)
                                                        (letrec ((_%$%loop4369443728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4369243732%_ _%$%body4369843735%_)
                            (if (gx#stx-pair? _%$%hd4369243732%_)
                                (let ((_%$%e4369543737%_
                                       (gx#syntax-e _%$%hd4369243732%_)))
                                  (let ((_%$%lp-tl4369743744%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4369543737%_)))
                                        (_%$%lp-hd4369643741%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4369543737%_))))
                                    (_%$%loop4369443728%_
                                     _%$%lp-tl4369743744%_
                                     (cons _%$%lp-hd4369643741%_
                                           _%$%body4369843735%_))))
                                (let ((_%$%body4369943747%_
                                       (reverse _%$%body4369843735%_)))
                                  (let ((_%$%g4368643750%_
                                         _%$%body4369943747%_)
                                        (_%$%g4368743752%_ _%$%hd4368943716%_))
                                    (if (gx#underscore? _%$%g4368743752%_)
                                        (_%__kont4595545956%_
                                         _%$%g4368643750%_
                                         _%$%g4368743752%_)
                                        (_%$%g4363543705%_))))))))
                  (_%$%loop4369443728%_ _%$%target4369143722%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__match4603346034%_
                                                      (lambda (_%$%e4367143784%_
                                                               _%$%hd4367243788%_
                                                               _%$%tl4367343791%_
                                                               _%$%e4367443794%_
                                                               _%$%hd4367543798%_
                                                               _%$%tl4367643801%_
                                                               _%__splice4595345954%_
                                                               _%$%target4367743804%_
                                                               _%$%tl4367943807%_)
                                                        (letrec ((_%$%loop4368043810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4367843814%_ _%$%body4368443817%_)
                            (if (gx#stx-pair? _%$%hd4367843814%_)
                                (let ((_%$%e4368143819%_
                                       (gx#syntax-e _%$%hd4367843814%_)))
                                  (let ((_%$%lp-tl4368343826%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4368143819%_)))
                                        (_%$%lp-hd4368243823%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4368143819%_))))
                                    (_%$%loop4368043810%_
                                     _%$%lp-tl4368343826%_
                                     (cons _%$%lp-hd4368243823%_
                                           _%$%body4368443817%_))))
                                (let ((_%$%body4368543829%_
                                       (reverse _%$%body4368443817%_)))
                                  (let ((_%$%g4366943832%_
                                         _%$%body4368543829%_)
                                        (_%$%g4367043834%_ _%$%hd4367543798%_))
                                    (if (gx#identifier? _%$%g4367043834%_)
                                        (_%__kont4595145952%_
                                         _%$%g4366943832%_
                                         _%$%g4367043834%_)
                                        (_%__match4604746048%_
                                         _%$%e4367143784%_
                                         _%$%hd4367243788%_
                                         _%$%tl4367343791%_
                                         _%__splice4595345954%_
                                         _%$%target4367743804%_
                                         _%$%tl4367943807%_))))))))
                  (_%$%loop4368043810%_ _%$%target4367743804%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__match4601146012%_
                                                      (lambda (_%$%e4365143866%_
                                                               _%$%hd4365243870%_
                                                               _%$%tl4365343873%_
                                                               _%$%e4365443876%_
                                                               _%$%hd4365543880%_
                                                               _%$%tl4365643883%_
                                                               _%$%e4365743886%_
                                                               _%$%hd4365843890%_
                                                               _%$%tl4365943893%_
                                                               _%__splice4594945950%_
                                                               _%$%target4366043896%_
                                                               _%$%tl4366243899%_)
                                                        (letrec ((_%$%loop4366343902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4366143906%_ _%$%body4366743909%_)
                            (if (gx#stx-pair? _%$%hd4366143906%_)
                                (let ((_%$%e4366443911%_
                                       (gx#syntax-e _%$%hd4366143906%_)))
                                  (let ((_%$%lp-tl4366643918%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4366443911%_)))
                                        (_%$%lp-hd4366543915%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4366443911%_))))
                                    (_%$%loop4366343902%_
                                     _%$%lp-tl4366643918%_
                                     (cons _%$%lp-hd4366543915%_
                                           _%$%body4366743909%_))))
                                (let ((_%$%body4366843921%_
                                       (reverse _%$%body4366743909%_)))
                                  (let ((_%$%g4364843924%_
                                         _%$%body4366843921%_)
                                        (_%$%g4364943926%_ _%$%hd4365843890%_)
                                        (_%$%g4365043927%_ _%$%hd4365543880%_))
                                    (if (gx#identifier? _%$%g4364943926%_)
                                        (_%__kont4594745948%_
                                         _%$%g4364843924%_
                                         _%$%g4364943926%_
                                         _%$%g4365043927%_)
                                        (_%__match4604746048%_
                                         _%$%e4365143866%_
                                         _%$%hd4365243870%_
                                         _%$%tl4365343873%_
                                         _%__splice4594945950%_
                                         _%$%target4366043896%_
                                         _%$%tl4366243899%_))))))))
                  (_%$%loop4366343902%_ _%$%target4366043896%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx4594245943%_)
                                                    (let ((_%$%e4363943962%_
                                                           (gx#syntax-e
                                                            _%__stx4594245943%_)))
                                                      (let ((_%$%tl4364143969%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e4363943962%_)))
                    (_%$%hd4364043966%_
                     (let () (declare (not safe)) (##car _%$%e4363943962%_))))
                (if (gx#stx-pair? _%$%tl4364143969%_)
                    (let ((_%$%e4364243972%_ (gx#syntax-e _%$%tl4364143969%_)))
                      (let ((_%$%tl4364443979%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e4364243972%_)))
                            (_%$%hd4364343976%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e4364243972%_))))
                        (if (gx#identifier? _%$%hd4364343976%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/more-sugar[1]#_g46364_|
                                 _%$%hd4364343976%_)
                                (if (gx#stx-pair? _%$%tl4364443979%_)
                                    (let ((_%$%e4364543982%_
                                           (gx#syntax-e _%$%tl4364443979%_)))
                                      (let ((_%$%tl4364743989%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4364543982%_)))
                                            (_%$%hd4364643986%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4364543982%_))))
                                        (if (gx#stx-null? _%$%tl4364743989%_)
                                            (_%__kont4594545946%_
                                             _%$%hd4364643986%_
                                             _%$%hd4364043966%_)
                                            (if (gx#stx-pair?
                                                 _%$%hd4364043966%_)
                                                (let ((_%$%e4365443876%_
                                                       (gx#syntax-e
                                                        _%$%hd4364043966%_)))
                                                  (let ((_%$%tl4365643883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4365443876%_)))
                                                        (_%$%hd4365543880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4365443876%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl4365643883%_)
                                                        (let ((_%$%e4365743886%_
                                                               (gx#syntax-e
                                                                _%$%tl4365643883%_)))
                                                          (let ((_%$%tl4365943893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4365743886%_)))
                        (_%$%hd4365843890%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4365743886%_))))
                    (if (gx#stx-null? _%$%tl4365943893%_)
                        (if (gx#stx-pair/null? _%$%tl4364143969%_)
                            (let ((_%__splice4594945950%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl4364143969%_
                                    '0)))
                              (let ((_%$%tl4366243899%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4594945950%_
                                        '1)))
                                    (_%$%target4366043896%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4594945950%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl4366243899%_)
                                    (_%__match4601146012%_
                                     _%$%e4363943962%_
                                     _%$%hd4364043966%_
                                     _%$%tl4364143969%_
                                     _%$%e4365443876%_
                                     _%$%hd4365543880%_
                                     _%$%tl4365643883%_
                                     _%$%e4365743886%_
                                     _%$%hd4365843890%_
                                     _%$%tl4365943893%_
                                     _%__splice4594945950%_
                                     _%$%target4366043896%_
                                     _%$%tl4366243899%_)
                                    (_%$%g4363543705%_))))
                            (_%$%g4363543705%_))
                        (if (gx#stx-pair/null? _%$%tl4364143969%_)
                            (let ((_%__splice4595745958%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl4364143969%_
                                    '0)))
                              (let ((_%$%tl4369343725%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4595745958%_
                                        '1)))
                                    (_%$%target4369143722%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4595745958%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl4369343725%_)
                                    (_%__match4604746048%_
                                     _%$%e4363943962%_
                                     _%$%hd4364043966%_
                                     _%$%tl4364143969%_
                                     _%__splice4595745958%_
                                     _%$%target4369143722%_
                                     _%$%tl4369343725%_)
                                    (_%$%g4363543705%_))))
                            (_%$%g4363543705%_)))))
                (if (gx#stx-null? _%$%tl4365643883%_)
                    (if (gx#stx-pair/null? _%$%tl4364143969%_)
                        (let ((_%__splice4595345954%_
                               (gx#syntax-split-splice->vector
                                _%$%tl4364143969%_
                                '0)))
                          (let ((_%$%tl4367943807%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4595345954%_ '1)))
                                (_%$%target4367743804%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4595345954%_ '0))))
                            (if (gx#stx-null? _%$%tl4367943807%_)
                                (_%__match4603346034%_
                                 _%$%e4363943962%_
                                 _%$%hd4364043966%_
                                 _%$%tl4364143969%_
                                 _%$%e4365443876%_
                                 _%$%hd4365543880%_
                                 _%$%tl4365643883%_
                                 _%__splice4595345954%_
                                 _%$%target4367743804%_
                                 _%$%tl4367943807%_)
                                (_%$%g4363543705%_))))
                        (_%$%g4363543705%_))
                    (if (gx#stx-pair/null? _%$%tl4364143969%_)
                        (let ((_%__splice4595745958%_
                               (gx#syntax-split-splice->vector
                                _%$%tl4364143969%_
                                '0)))
                          (let ((_%$%tl4369343725%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4595745958%_ '1)))
                                (_%$%target4369143722%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4595745958%_ '0))))
                            (if (gx#stx-null? _%$%tl4369343725%_)
                                (_%__match4604746048%_
                                 _%$%e4363943962%_
                                 _%$%hd4364043966%_
                                 _%$%tl4364143969%_
                                 _%__splice4595745958%_
                                 _%$%target4369143722%_
                                 _%$%tl4369343725%_)
                                (_%$%g4363543705%_))))
                        (_%$%g4363543705%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4364143969%_)
                                                    (let ((_%__splice4595745958%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4364143969%_
                                                            '0)))
                                                      (let ((_%$%tl4369343725%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4595745958%_ '1)))
                    (_%$%target4369143722%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4595745958%_ '0))))
                (if (gx#stx-null? _%$%tl4369343725%_)
                    (_%__match4604746048%_
                     _%$%e4363943962%_
                     _%$%hd4364043966%_
                     _%$%tl4364143969%_
                     _%__splice4595745958%_
                     _%$%target4369143722%_
                     _%$%tl4369343725%_)
                    (_%$%g4363543705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4363543705%_))))))
                                    (if (gx#stx-pair? _%$%hd4364043966%_)
                                        (let ((_%$%e4365443876%_
                                               (gx#syntax-e
                                                _%$%hd4364043966%_)))
                                          (let ((_%$%tl4365643883%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4365443876%_)))
                                                (_%$%hd4365543880%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4365443876%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl4365643883%_)
                                                (let ((_%$%e4365743886%_
                                                       (gx#syntax-e
                                                        _%$%tl4365643883%_)))
                                                  (let ((_%$%tl4365943893%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4365743886%_)))
                                                        (_%$%hd4365843890%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4365743886%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4365943893%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl4364143969%_)
                                                            (let ((_%__splice4594945950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%$%tl4364143969%_
                            '0)))
                      (let ((_%$%tl4366243899%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4594945950%_ '1)))
                            (_%$%target4366043896%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4594945950%_ '0))))
                        (if (gx#stx-null? _%$%tl4366243899%_)
                            (_%__match4601146012%_
                             _%$%e4363943962%_
                             _%$%hd4364043966%_
                             _%$%tl4364143969%_
                             _%$%e4365443876%_
                             _%$%hd4365543880%_
                             _%$%tl4365643883%_
                             _%$%e4365743886%_
                             _%$%hd4365843890%_
                             _%$%tl4365943893%_
                             _%__splice4594945950%_
                             _%$%target4366043896%_
                             _%$%tl4366243899%_)
                            (_%$%g4363543705%_))))
                    (_%$%g4363543705%_))
                (if (gx#stx-pair/null? _%$%tl4364143969%_)
                    (let ((_%__splice4595745958%_
                           (gx#syntax-split-splice->vector
                            _%$%tl4364143969%_
                            '0)))
                      (let ((_%$%tl4369343725%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4595745958%_ '1)))
                            (_%$%target4369143722%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4595745958%_ '0))))
                        (if (gx#stx-null? _%$%tl4369343725%_)
                            (_%__match4604746048%_
                             _%$%e4363943962%_
                             _%$%hd4364043966%_
                             _%$%tl4364143969%_
                             _%__splice4595745958%_
                             _%$%target4369143722%_
                             _%$%tl4369343725%_)
                            (_%$%g4363543705%_))))
                    (_%$%g4363543705%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%$%tl4365643883%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4364143969%_)
                                                        (let ((_%__splice4595345954%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4364143969%_
                                                                '0)))
                                                          (let ((_%$%tl4367943807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4595345954%_ '1)))
                        (_%$%target4367743804%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4595345954%_ '0))))
                    (if (gx#stx-null? _%$%tl4367943807%_)
                        (_%__match4603346034%_
                         _%$%e4363943962%_
                         _%$%hd4364043966%_
                         _%$%tl4364143969%_
                         _%$%e4365443876%_
                         _%$%hd4365543880%_
                         _%$%tl4365643883%_
                         _%__splice4595345954%_
                         _%$%target4367743804%_
                         _%$%tl4367943807%_)
                        (_%$%g4363543705%_))))
                (_%$%g4363543705%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4364143969%_)
                                                        (let ((_%__splice4595745958%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4364143969%_
                                                                '0)))
                                                          (let ((_%$%tl4369343725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4595745958%_ '1)))
                        (_%$%target4369143722%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4595745958%_ '0))))
                    (if (gx#stx-null? _%$%tl4369343725%_)
                        (_%__match4604746048%_
                         _%$%e4363943962%_
                         _%$%hd4364043966%_
                         _%$%tl4364143969%_
                         _%__splice4595745958%_
                         _%$%target4369143722%_
                         _%$%tl4369343725%_)
                        (_%$%g4363543705%_))))
                (_%$%g4363543705%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (gx#stx-pair/null?
                                             _%$%tl4364143969%_)
                                            (let ((_%__splice4595745958%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4364143969%_
                                                    '0)))
                                              (let ((_%$%tl4369343725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4595745958%_
                                                        '1)))
                                                    (_%$%target4369143722%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4595745958%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4369343725%_)
                                                    (_%__match4604746048%_
                                                     _%$%e4363943962%_
                                                     _%$%hd4364043966%_
                                                     _%$%tl4364143969%_
                                                     _%__splice4595745958%_
                                                     _%$%target4369143722%_
                                                     _%$%tl4369343725%_)
                                                    (_%$%g4363543705%_))))
                                            (_%$%g4363543705%_))))
                                (if (gx#stx-pair? _%$%hd4364043966%_)
                                    (let ((_%$%e4365443876%_
                                           (gx#syntax-e _%$%hd4364043966%_)))
                                      (let ((_%$%tl4365643883%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4365443876%_)))
                                            (_%$%hd4365543880%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4365443876%_))))
                                        (if (gx#stx-pair? _%$%tl4365643883%_)
                                            (let ((_%$%e4365743886%_
                                                   (gx#syntax-e
                                                    _%$%tl4365643883%_)))
                                              (let ((_%$%tl4365943893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4365743886%_)))
                                                    (_%$%hd4365843890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4365743886%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl4365943893%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4364143969%_)
                                                        (let ((_%__splice4594945950%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4364143969%_
                                                                '0)))
                                                          (let ((_%$%tl4366243899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4594945950%_ '1)))
                        (_%$%target4366043896%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4594945950%_ '0))))
                    (if (gx#stx-null? _%$%tl4366243899%_)
                        (_%__match4601146012%_
                         _%$%e4363943962%_
                         _%$%hd4364043966%_
                         _%$%tl4364143969%_
                         _%$%e4365443876%_
                         _%$%hd4365543880%_
                         _%$%tl4365643883%_
                         _%$%e4365743886%_
                         _%$%hd4365843890%_
                         _%$%tl4365943893%_
                         _%__splice4594945950%_
                         _%$%target4366043896%_
                         _%$%tl4366243899%_)
                        (_%$%g4363543705%_))))
                (_%$%g4363543705%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4364143969%_)
                                                        (let ((_%__splice4595745958%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4364143969%_
                                                                '0)))
                                                          (let ((_%$%tl4369343725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4595745958%_ '1)))
                        (_%$%target4369143722%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4595745958%_ '0))))
                    (if (gx#stx-null? _%$%tl4369343725%_)
                        (_%__match4604746048%_
                         _%$%e4363943962%_
                         _%$%hd4364043966%_
                         _%$%tl4364143969%_
                         _%__splice4595745958%_
                         _%$%target4369143722%_
                         _%$%tl4369343725%_)
                        (_%$%g4363543705%_))))
                (_%$%g4363543705%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-null?
                                                 _%$%tl4365643883%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4364143969%_)
                                                    (let ((_%__splice4595345954%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4364143969%_
                                                            '0)))
                                                      (let ((_%$%tl4367943807%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4595345954%_ '1)))
                    (_%$%target4367743804%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4595345954%_ '0))))
                (if (gx#stx-null? _%$%tl4367943807%_)
                    (_%__match4603346034%_
                     _%$%e4363943962%_
                     _%$%hd4364043966%_
                     _%$%tl4364143969%_
                     _%$%e4365443876%_
                     _%$%hd4365543880%_
                     _%$%tl4365643883%_
                     _%__splice4595345954%_
                     _%$%target4367743804%_
                     _%$%tl4367943807%_)
                    (_%$%g4363543705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4363543705%_))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4364143969%_)
                                                    (let ((_%__splice4595745958%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4364143969%_
                                                            '0)))
                                                      (let ((_%$%tl4369343725%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4595745958%_ '1)))
                    (_%$%target4369143722%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4595745958%_ '0))))
                (if (gx#stx-null? _%$%tl4369343725%_)
                    (_%__match4604746048%_
                     _%$%e4363943962%_
                     _%$%hd4364043966%_
                     _%$%tl4364143969%_
                     _%__splice4595745958%_
                     _%$%target4369143722%_
                     _%$%tl4369343725%_)
                    (_%$%g4363543705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4363543705%_))))))
                                    (if (gx#stx-pair/null? _%$%tl4364143969%_)
                                        (let ((_%__splice4595745958%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4364143969%_
                                                '0)))
                                          (let ((_%$%tl4369343725%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4595745958%_
                                                    '1)))
                                                (_%$%target4369143722%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4595745958%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4369343725%_)
                                                (_%__match4604746048%_
                                                 _%$%e4363943962%_
                                                 _%$%hd4364043966%_
                                                 _%$%tl4364143969%_
                                                 _%__splice4595745958%_
                                                 _%$%target4369143722%_
                                                 _%$%tl4369343725%_)
                                                (_%$%g4363543705%_))))
                                        (_%$%g4363543705%_))))
                            (if (gx#stx-pair? _%$%hd4364043966%_)
                                (let ((_%$%e4365443876%_
                                       (gx#syntax-e _%$%hd4364043966%_)))
                                  (let ((_%$%tl4365643883%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4365443876%_)))
                                        (_%$%hd4365543880%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4365443876%_))))
                                    (if (gx#stx-pair? _%$%tl4365643883%_)
                                        (let ((_%$%e4365743886%_
                                               (gx#syntax-e
                                                _%$%tl4365643883%_)))
                                          (let ((_%$%tl4365943893%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4365743886%_)))
                                                (_%$%hd4365843890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4365743886%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl4365943893%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4364143969%_)
                                                    (let ((_%__splice4594945950%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4364143969%_
                                                            '0)))
                                                      (let ((_%$%tl4366243899%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4594945950%_ '1)))
                    (_%$%target4366043896%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4594945950%_ '0))))
                (if (gx#stx-null? _%$%tl4366243899%_)
                    (_%__match4601146012%_
                     _%$%e4363943962%_
                     _%$%hd4364043966%_
                     _%$%tl4364143969%_
                     _%$%e4365443876%_
                     _%$%hd4365543880%_
                     _%$%tl4365643883%_
                     _%$%e4365743886%_
                     _%$%hd4365843890%_
                     _%$%tl4365943893%_
                     _%__splice4594945950%_
                     _%$%target4366043896%_
                     _%$%tl4366243899%_)
                    (_%$%g4363543705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4363543705%_))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4364143969%_)
                                                    (let ((_%__splice4595745958%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4364143969%_
                                                            '0)))
                                                      (let ((_%$%tl4369343725%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4595745958%_ '1)))
                    (_%$%target4369143722%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4595745958%_ '0))))
                (if (gx#stx-null? _%$%tl4369343725%_)
                    (_%__match4604746048%_
                     _%$%e4363943962%_
                     _%$%hd4364043966%_
                     _%$%tl4364143969%_
                     _%__splice4595745958%_
                     _%$%target4369143722%_
                     _%$%tl4369343725%_)
                    (_%$%g4363543705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4363543705%_)))))
                                        (if (gx#stx-null? _%$%tl4365643883%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4364143969%_)
                                                (let ((_%__splice4595345954%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4364143969%_
                                                        '0)))
                                                  (let ((_%$%tl4367943807%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4595345954%_
                                                            '1)))
                                                        (_%$%target4367743804%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4595345954%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4367943807%_)
                                                        (_%__match4603346034%_
                                                         _%$%e4363943962%_
                                                         _%$%hd4364043966%_
                                                         _%$%tl4364143969%_
                                                         _%$%e4365443876%_
                                                         _%$%hd4365543880%_
                                                         _%$%tl4365643883%_
                                                         _%__splice4595345954%_
                                                         _%$%target4367743804%_
                                                         _%$%tl4367943807%_)
                                                        (_%$%g4363543705%_))))
                                                (_%$%g4363543705%_))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4364143969%_)
                                                (let ((_%__splice4595745958%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4364143969%_
                                                        '0)))
                                                  (let ((_%$%tl4369343725%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4595745958%_
                                                            '1)))
                                                        (_%$%target4369143722%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4595745958%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4369343725%_)
                                                        (_%__match4604746048%_
                                                         _%$%e4363943962%_
                                                         _%$%hd4364043966%_
                                                         _%$%tl4364143969%_
                                                         _%__splice4595745958%_
                                                         _%$%target4369143722%_
                                                         _%$%tl4369343725%_)
                                                        (_%$%g4363543705%_))))
                                                (_%$%g4363543705%_))))))
                                (if (gx#stx-pair/null? _%$%tl4364143969%_)
                                    (let ((_%__splice4595745958%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl4364143969%_
                                            '0)))
                                      (let ((_%$%tl4369343725%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4595745958%_
                                                '1)))
                                            (_%$%target4369143722%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4595745958%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl4369343725%_)
                                            (_%__match4604746048%_
                                             _%$%e4363943962%_
                                             _%$%hd4364043966%_
                                             _%$%tl4364143969%_
                                             _%__splice4595745958%_
                                             _%$%target4369143722%_
                                             _%$%tl4369343725%_)
                                            (_%$%g4363543705%_))))
                                    (_%$%g4363543705%_))))))
                    (if (gx#stx-pair? _%$%hd4364043966%_)
                        (let ((_%$%e4365443876%_
                               (gx#syntax-e _%$%hd4364043966%_)))
                          (let ((_%$%tl4365643883%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4365443876%_)))
                                (_%$%hd4365543880%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4365443876%_))))
                            (if (gx#stx-pair? _%$%tl4365643883%_)
                                (let ((_%$%e4365743886%_
                                       (gx#syntax-e _%$%tl4365643883%_)))
                                  (let ((_%$%tl4365943893%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4365743886%_)))
                                        (_%$%hd4365843890%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4365743886%_))))
                                    (if (gx#stx-null? _%$%tl4365943893%_)
                                        (if (gx#stx-pair/null?
                                             _%$%tl4364143969%_)
                                            (let ((_%__splice4594945950%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4364143969%_
                                                    '0)))
                                              (let ((_%$%tl4366243899%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4594945950%_
                                                        '1)))
                                                    (_%$%target4366043896%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4594945950%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4366243899%_)
                                                    (_%__match4601146012%_
                                                     _%$%e4363943962%_
                                                     _%$%hd4364043966%_
                                                     _%$%tl4364143969%_
                                                     _%$%e4365443876%_
                                                     _%$%hd4365543880%_
                                                     _%$%tl4365643883%_
                                                     _%$%e4365743886%_
                                                     _%$%hd4365843890%_
                                                     _%$%tl4365943893%_
                                                     _%__splice4594945950%_
                                                     _%$%target4366043896%_
                                                     _%$%tl4366243899%_)
                                                    (_%$%g4363543705%_))))
                                            (_%$%g4363543705%_))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4364143969%_)
                                            (let ((_%__splice4595745958%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4364143969%_
                                                    '0)))
                                              (let ((_%$%tl4369343725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4595745958%_
                                                        '1)))
                                                    (_%$%target4369143722%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4595745958%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4369343725%_)
                                                    (_%__match4604746048%_
                                                     _%$%e4363943962%_
                                                     _%$%hd4364043966%_
                                                     _%$%tl4364143969%_
                                                     _%__splice4595745958%_
                                                     _%$%target4369143722%_
                                                     _%$%tl4369343725%_)
                                                    (_%$%g4363543705%_))))
                                            (_%$%g4363543705%_)))))
                                (if (gx#stx-null? _%$%tl4365643883%_)
                                    (if (gx#stx-pair/null? _%$%tl4364143969%_)
                                        (let ((_%__splice4595345954%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4364143969%_
                                                '0)))
                                          (let ((_%$%tl4367943807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4595345954%_
                                                    '1)))
                                                (_%$%target4367743804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4595345954%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4367943807%_)
                                                (_%__match4603346034%_
                                                 _%$%e4363943962%_
                                                 _%$%hd4364043966%_
                                                 _%$%tl4364143969%_
                                                 _%$%e4365443876%_
                                                 _%$%hd4365543880%_
                                                 _%$%tl4365643883%_
                                                 _%__splice4595345954%_
                                                 _%$%target4367743804%_
                                                 _%$%tl4367943807%_)
                                                (_%$%g4363543705%_))))
                                        (_%$%g4363543705%_))
                                    (if (gx#stx-pair/null? _%$%tl4364143969%_)
                                        (let ((_%__splice4595745958%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4364143969%_
                                                '0)))
                                          (let ((_%$%tl4369343725%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4595745958%_
                                                    '1)))
                                                (_%$%target4369143722%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4595745958%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4369343725%_)
                                                (_%__match4604746048%_
                                                 _%$%e4363943962%_
                                                 _%$%hd4364043966%_
                                                 _%$%tl4364143969%_
                                                 _%__splice4595745958%_
                                                 _%$%target4369143722%_
                                                 _%$%tl4369343725%_)
                                                (_%$%g4363543705%_))))
                                        (_%$%g4363543705%_))))))
                        (if (gx#stx-pair/null? _%$%tl4364143969%_)
                            (let ((_%__splice4595745958%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl4364143969%_
                                    '0)))
                              (let ((_%$%tl4369343725%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4595745958%_
                                        '1)))
                                    (_%$%target4369143722%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4595745958%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl4369343725%_)
                                    (_%__match4604746048%_
                                     _%$%e4363943962%_
                                     _%$%hd4364043966%_
                                     _%$%tl4364143969%_
                                     _%__splice4595745958%_
                                     _%$%target4369143722%_
                                     _%$%tl4369343725%_)
                                    (_%$%g4363543705%_))))
                            (_%$%g4363543705%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4363543705%_))))))))
                                  (if (pair? _%$%rest4348543493%_)
                                      (let ((_%$%hd4349044017%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%rest4348543493%_)))
                                            (_%$%tl4349144020%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%rest4348543493%_))))
                                        (let* ((_%hd44023%_ _%$%hd4349044017%_)
                                               (_%rest44026%_
                                                _%$%tl4349144020%_))
                                          (_%$%K4348944013%_
                                           _%rest44026%_
                                           _%hd44023%_)))
                                      (_%$%else4348743624%_)))))))
                      (_%$%g4345144029%_ (gx#genident))))))
          (let* ((_%$%g4283642856%_
                  (lambda (_%$%g4283742852%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g4283742852%_)))
                 (_%$%g4283543444%_
                  (lambda (_%$%g4283742860%_)
                    (if (gx#stx-pair? _%$%g4283742860%_)
                        (let ((_%$%e4283942863%_
                               (gx#syntax-e _%$%g4283742860%_)))
                          (let ((_%$%hd4284042867%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4283942863%_)))
                                (_%$%tl4284142870%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4283942863%_))))
                            (if (gx#stx-pair/null? _%$%tl4284142870%_)
                                (let ((_g46365_
                                       (gx#syntax-split-splice
                                        _%$%tl4284142870%_
                                        '0)))
                                  (begin
                                    (let ((_g46366_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g46365_)
                                                 (##values-length _g46365_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g46366_ 2)))
                                          (error "Context expects 2 values"
                                                 _g46366_)))
                                    (let ((_%$%target4284242873%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g46365_ 0)))
                                          (_%$%tl4284442876%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g46365_ 1))))
                                      (if (gx#stx-null? _%$%tl4284442876%_)
                                          (letrec ((_%$%loop4284542879%_
                                                    (lambda (_%$%hd4284342883%_
                                                             _%$%e4284942886%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd4284342883%_)
                                                          (let ((_%$%e4284642888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd4284342883%_)))
                    (let ((_%$%lp-hd4284742892%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4284642888%_)))
                          (_%$%lp-tl4284842895%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4284642888%_))))
                      (_%$%loop4284542879%_
                       _%$%lp-tl4284842895%_
                       (cons _%$%lp-hd4284742892%_ _%$%e4284942886%_))))
                  (let ((_%$%e4285042898%_ (reverse _%$%e4284942886%_)))
                    (let _%lp42918%_ ((_%rest42921%_
                                       (foldr (lambda (_%$%g4343543438%_
                                                       _%$%g4343643441%_)
                                                (cons _%$%g4343543438%_
                                                      _%$%g4343643441%_))
                                              '()
                                              _%$%e4285042898%_))
                                      (_%body42923%_ '()))
                      (let* ((_%__stx4616846169%_ _%rest42921%_)
                             (_%$%g4292642938%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx4616846169%_))))
                        (let ((_%__kont4617146172%_
                               (lambda (_%$%g4292842966%_ _%$%g4292942968%_)
                                 (let* ((_%__stx4611646117%_ _%$%g4292942968%_)
                                        (_%$%g4298543018%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx4611646117%_))))
                                   (let ((_%__kont4611946120%_
                                          (lambda (_%$%g4298743405%_)
                                            (if (gx#stx-null?
                                                 _%$%g4292842966%_)
                                                (_%generate-fini42833%_
                                                 (_%generate-thunk42831%_
                                                  _%body42923%_)
                                                 (foldr (lambda (_%$%g4341943422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g4342043425%_)
                  (cons _%$%g4341943422%_ _%$%g4342043425%_))
                '()
                _%$%g4298743405%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced finally clause"
                                                 _%stx42828%_))))
                                         (_%__kont4612346124%_
                                          (lambda (_%$%g4300043074%_)
                                            (let _%lp43091%_ ((_%rest43094%_
                                                               _%$%g4292842966%_)
                                                              (_%handlers43096%_
                                                               (cons (foldr (lambda (_%$%g4335143354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%$%g4335243357%_)
                                      (cons _%$%g4335143354%_
                                            _%$%g4335243357%_))
                                    '()
                                    _%$%g4300043074%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let* ((_%__stx4605046051%_
                                                      _%rest43094%_)
                                                     (_%$%g4310043140%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx4605046051%_))))
                                                (let ((_%__kont4605346054%_
                                                       (lambda (_%$%g4310243321%_
                                                                _%$%g4310343323%_)
                                                         (_%lp43091%_
                                                          _%$%g4310243321%_
                                                          (cons (foldr (lambda (_%$%g4333943342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _%$%g4334043345%_)
                                 (cons _%$%g4333943342%_ _%$%g4334043345%_))
                               '()
                               _%$%g4310343323%_)
                        _%handlers43096%_))))
              (_%__kont4605746058%_
               (lambda (_%$%g4311943206%_)
                 (let* ((_%$%g4322743235%_
                         (lambda (_%$%g4322843231%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g4322843231%_)))
                        (_%$%g4322643262%_
                         (lambda (_%$%g4322843239%_)
                           (_%generate-fini42833%_
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons '() (cons _%$%g4322843239%_ '())))
                            (foldr (lambda (_%$%g4325343256%_
                                            _%$%g4325443259%_)
                                     (cons _%$%g4325343256%_
                                           _%$%g4325443259%_))
                                   '()
                                   _%$%g4311943206%_)))))
                   (_%$%g4322643262%_
                    (_%generate-catch42834%_
                     _%handlers43096%_
                     (_%generate-thunk42831%_ _%body42923%_))))))
              (_%__kont4606146062%_
               (lambda ()
                 (_%generate-catch42834%_
                  _%handlers43096%_
                  (_%generate-thunk42831%_ _%body42923%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%$%g4309943151%_
                                                          (lambda ()
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%__stx4605046051%_)
                        (_%__kont4606146062%_)
                        (_%$%g4310043140%_))))
                 (_%__match4611146112%_
                  (lambda (_%$%e4312043158%_
                           _%$%hd4312143162%_
                           _%$%tl4312243165%_
                           _%$%e4312343168%_
                           _%$%hd4312443172%_
                           _%$%tl4312543175%_
                           _%__splice4605946060%_
                           _%$%target4312643178%_
                           _%$%tl4312843181%_)
                    (letrec ((_%$%loop4312943184%_
                              (lambda (_%$%hd4312743188%_ _%$%fini4313343191%_)
                                (if (gx#stx-pair? _%$%hd4312743188%_)
                                    (let ((_%$%e4313043193%_
                                           (gx#syntax-e _%$%hd4312743188%_)))
                                      (let ((_%$%lp-tl4313243200%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4313043193%_)))
                                            (_%$%lp-hd4313143197%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4313043193%_))))
                                        (_%$%loop4312943184%_
                                         _%$%lp-tl4313243200%_
                                         (cons _%$%lp-hd4313143197%_
                                               _%$%fini4313343191%_))))
                                    (let ((_%$%fini4313443203%_
                                           (reverse _%$%fini4313343191%_)))
                                      (if (gx#stx-null? _%$%tl4312243165%_)
                                          (_%__kont4605746058%_
                                           _%$%fini4313443203%_)
                                          (_%$%g4310043140%_)))))))
                      (_%$%loop4312943184%_ _%$%target4312643178%_ '()))))
                 (_%__match4608746088%_
                  (lambda (_%$%e4310443273%_
                           _%$%hd4310543277%_
                           _%$%tl4310643280%_
                           _%$%e4310743283%_
                           _%$%hd4310843287%_
                           _%$%tl4310943290%_
                           _%__splice4605546056%_
                           _%$%target4311043293%_
                           _%$%tl4311243296%_)
                    (letrec ((_%$%loop4311343299%_
                              (lambda (_%$%hd4311143303%_
                                       _%$%handler4311743306%_)
                                (if (gx#stx-pair? _%$%hd4311143303%_)
                                    (let ((_%$%e4311443308%_
                                           (gx#syntax-e _%$%hd4311143303%_)))
                                      (let ((_%$%lp-tl4311643315%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4311443308%_)))
                                            (_%$%lp-hd4311543312%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4311443308%_))))
                                        (_%$%loop4311343299%_
                                         _%$%lp-tl4311643315%_
                                         (cons _%$%lp-hd4311543312%_
                                               _%$%handler4311743306%_))))
                                    (let ((_%$%handler4311843318%_
                                           (reverse _%$%handler4311743306%_)))
                                      (_%__kont4605346054%_
                                       _%$%tl4310643280%_
                                       _%$%handler4311843318%_))))))
                      (_%$%loop4311343299%_ _%$%target4311043293%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _%__stx4605046051%_)
                                                        (let ((_%$%e4310443273%_
                                                               (gx#syntax-e
                                                                _%__stx4605046051%_)))
                                                          (let ((_%$%tl4310643280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4310443273%_)))
                        (_%$%hd4310543277%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4310443273%_))))
                    (if (gx#stx-pair? _%$%hd4310543277%_)
                        (let ((_%$%e4310743283%_
                               (gx#syntax-e _%$%hd4310543277%_)))
                          (let ((_%$%tl4310943290%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4310743283%_)))
                                (_%$%hd4310843287%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4310743283%_))))
                            (if (gx#identifier? _%$%hd4310843287%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/more-sugar[1]#_g46367_|
                                     _%$%hd4310843287%_)
                                    (if (gx#stx-pair/null? _%$%tl4310943290%_)
                                        (let ((_%__splice4605546056%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4310943290%_
                                                '0)))
                                          (let ((_%$%tl4311243296%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4605546056%_
                                                    '1)))
                                                (_%$%target4311043293%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4605546056%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4311243296%_)
                                                (_%__match4608746088%_
                                                 _%$%e4310443273%_
                                                 _%$%hd4310543277%_
                                                 _%$%tl4310643280%_
                                                 _%$%e4310743283%_
                                                 _%$%hd4310843287%_
                                                 _%$%tl4310943290%_
                                                 _%__splice4605546056%_
                                                 _%$%target4311043293%_
                                                 _%$%tl4311243296%_)
                                                (_%$%g4310043140%_))))
                                        (_%$%g4310043140%_))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/more-sugar[1]#_g46368_|
                                         _%$%hd4310843287%_)
                                        (if (gx#stx-pair/null?
                                             _%$%tl4310943290%_)
                                            (let ((_%__splice4605946060%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4310943290%_
                                                    '0)))
                                              (let ((_%$%tl4312843181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4605946060%_
                                                        '1)))
                                                    (_%$%target4312643178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4605946060%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4312843181%_)
                                                    (_%__match4611146112%_
                                                     _%$%e4310443273%_
                                                     _%$%hd4310543277%_
                                                     _%$%tl4310643280%_
                                                     _%$%e4310743283%_
                                                     _%$%hd4310843287%_
                                                     _%$%tl4310943290%_
                                                     _%__splice4605946060%_
                                                     _%$%target4312643178%_
                                                     _%$%tl4312843181%_)
                                                    (_%$%g4310043140%_))))
                                            (_%$%g4310043140%_))
                                        (_%$%g4310043140%_)))
                                (_%$%g4310043140%_))))
                        (_%$%g4310043140%_))))
                (_%$%g4309943151%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont4612746128%_
                                          (lambda ()
                                            (_%lp42918%_
                                             _%$%g4292842966%_
                                             (cons _%$%g4292942968%_
                                                   _%body42923%_)))))
                                     (let* ((_%__match4616546166%_
                                             (lambda (_%$%e4300143036%_
                                                      _%$%hd4300243040%_
                                                      _%$%tl4300343043%_
                                                      _%__splice4612546126%_
                                                      _%$%target4300443046%_
                                                      _%$%tl4300643049%_)
                                               (letrec ((_%$%loop4300743052%_
                                                         (lambda (_%$%hd4300543056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%handler4301143059%_)
                   (if (gx#stx-pair? _%$%hd4300543056%_)
                       (let ((_%$%e4300843061%_
                              (gx#syntax-e _%$%hd4300543056%_)))
                         (let ((_%$%lp-tl4301043068%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4300843061%_)))
                               (_%$%lp-hd4300943065%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4300843061%_))))
                           (_%$%loop4300743052%_
                            _%$%lp-tl4301043068%_
                            (cons _%$%lp-hd4300943065%_
                                  _%$%handler4301143059%_))))
                       (let ((_%$%handler4301243071%_
                              (reverse _%$%handler4301143059%_)))
                         (_%__kont4612346124%_ _%$%handler4301243071%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4300743052%_
                                                  _%$%target4300443046%_
                                                  '()))))
                                            (_%__match4614746148%_
                                             (lambda (_%$%e4298843367%_
                                                      _%$%hd4298943371%_
                                                      _%$%tl4299043374%_
                                                      _%__splice4612146122%_
                                                      _%$%target4299143377%_
                                                      _%$%tl4299343380%_)
                                               (letrec ((_%$%loop4299443383%_
                                                         (lambda (_%$%hd4299243387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%fini4299843390%_)
                   (if (gx#stx-pair? _%$%hd4299243387%_)
                       (let ((_%$%e4299543392%_
                              (gx#syntax-e _%$%hd4299243387%_)))
                         (let ((_%$%lp-tl4299743399%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4299543392%_)))
                               (_%$%lp-hd4299643396%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4299543392%_))))
                           (_%$%loop4299443383%_
                            _%$%lp-tl4299743399%_
                            (cons _%$%lp-hd4299643396%_
                                  _%$%fini4299843390%_))))
                       (let ((_%$%fini4299943402%_
                              (reverse _%$%fini4299843390%_)))
                         (_%__kont4611946120%_ _%$%fini4299943402%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4299443383%_
                                                  _%$%target4299143377%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx4611646117%_)
                                           (let ((_%$%e4298843367%_
                                                  (gx#syntax-e
                                                   _%__stx4611646117%_)))
                                             (let ((_%$%tl4299043374%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e4298843367%_)))
                                                   (_%$%hd4298943371%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e4298843367%_))))
                                               (if (gx#identifier?
                                                    _%$%hd4298943371%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/more-sugar[1]#_g46369_|
                                                        _%$%hd4298943371%_)
                                                       (if (gx#stx-pair/null?
                                                            _%$%tl4299043374%_)
                                                           (let ((_%__splice4612146122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%$%tl4299043374%_
                           '0)))
                     (let ((_%$%tl4299343380%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4612146122%_ '1)))
                           (_%$%target4299143377%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4612146122%_ '0))))
                       (if (gx#stx-null? _%$%tl4299343380%_)
                           (_%__match4614746148%_
                            _%$%e4298843367%_
                            _%$%hd4298943371%_
                            _%$%tl4299043374%_
                            _%__splice4612146122%_
                            _%$%target4299143377%_
                            _%$%tl4299343380%_)
                           (_%__kont4612746128%_))))
                   (_%__kont4612746128%_))
               (if (gx#free-identifier=?
                    |gerbil/core/more-sugar[1]#_g46370_|
                    _%$%hd4298943371%_)
                   (if (gx#stx-pair/null? _%$%tl4299043374%_)
                       (let ((_%__splice4612546126%_
                              (gx#syntax-split-splice->vector
                               _%$%tl4299043374%_
                               '0)))
                         (let ((_%$%tl4300643049%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4612546126%_ '1)))
                               (_%$%target4300443046%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4612546126%_ '0))))
                           (if (gx#stx-null? _%$%tl4300643049%_)
                               (_%__match4616546166%_
                                _%$%e4298843367%_
                                _%$%hd4298943371%_
                                _%$%tl4299043374%_
                                _%__splice4612546126%_
                                _%$%target4300443046%_
                                _%$%tl4300643049%_)
                               (_%__kont4612746128%_))))
                       (_%__kont4612746128%_))
                   (_%__kont4612746128%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont4612746128%_))))
                                           (_%__kont4612746128%_)))))))
                              (_%__kont4617346174%_
                               (lambda ()
                                 (cons 'begin (reverse _%body42923%_)))))
                          (let ((_%$%g4292542949%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx4616846169%_)
                                       (_%__kont4617346174%_)
                                       (_%$%g4292642938%_)))))
                            (if (gx#stx-pair? _%__stx4616846169%_)
                                (let ((_%$%e4293042956%_
                                       (gx#syntax-e _%__stx4616846169%_)))
                                  (let ((_%$%tl4293242963%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4293042956%_)))
                                        (_%$%hd4293142960%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4293042956%_))))
                                    (_%__kont4617146172%_
                                     _%$%tl4293242963%_
                                     _%$%hd4293142960%_)))
                                (_%$%g4292542949%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop4284542879%_
                                             _%$%target4284242873%_
                                             '()))
                                          (_%$%g4283642856%_
                                           _%$%g4283742860%_)))))
                                (_%$%g4283642856%_ _%$%g4283742860%_))))
                        (_%$%g4283642856%_ _%$%g4283742860%_)))))
            (_%$%g4283543444%_ _%stx42828%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx44244%_)
        (let* ((_%$%g4424844277%_
                (lambda (_%$%g4424944273%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4424944273%_)))
               (_%$%g4424744373%_
                (lambda (_%$%g4424944281%_)
                  (if (gx#stx-pair? _%$%g4424944281%_)
                      (let ((_%$%e4425244284%_
                             (gx#syntax-e _%$%g4424944281%_)))
                        (let ((_%$%hd4425344288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4425244284%_)))
                              (_%$%tl4425444291%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4425244284%_))))
                          (if (gx#stx-pair/null? _%$%tl4425444291%_)
                              (let ((_g46371_
                                     (gx#syntax-split-splice
                                      _%$%tl4425444291%_
                                      '0)))
                                (begin
                                  (let ((_g46372_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g46371_)
                                               (##values-length _g46371_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g46372_ 2)))
                                        (error "Context expects 2 values"
                                               _g46372_)))
                                  (let ((_%$%target4425544294%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46371_ 0)))
                                        (_%$%tl4425744297%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46371_ 1))))
                                    (if (gx#stx-null? _%$%tl4425744297%_)
                                        (letrec ((_%$%loop4425844300%_
                                                  (lambda (_%$%hd4425644304%_
                                                           _%$%val4426244307%_
                                                           _%$%key4426344308%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4425644304%_)
                                                        (let ((_%$%e4425944310%_
                                                               (gx#syntax-e
                                                                _%$%hd4425644304%_)))
                                                          (let ((_%$%lp-hd4426044314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4425944310%_)))
                        (_%$%lp-tl4426144317%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4425944310%_))))
                    (if (gx#stx-pair? _%$%lp-hd4426044314%_)
                        (let ((_%$%e4426644320%_
                               (gx#syntax-e _%$%lp-hd4426044314%_)))
                          (let ((_%$%hd4426744324%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4426644320%_)))
                                (_%$%tl4426844327%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4426644320%_))))
                            (if (gx#stx-pair? _%$%tl4426844327%_)
                                (let ((_%$%e4426944330%_
                                       (gx#syntax-e _%$%tl4426844327%_)))
                                  (let ((_%$%hd4427044334%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4426944330%_)))
                                        (_%$%tl4427144337%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4426944330%_))))
                                    (if (gx#stx-null? _%$%tl4427144337%_)
                                        (_%$%loop4425844300%_
                                         _%$%lp-tl4426144317%_
                                         (cons _%$%hd4427044334%_
                                               _%$%val4426244307%_)
                                         (cons _%$%hd4426744324%_
                                               _%$%key4426344308%_))
                                        (_%$%g4424844277%_
                                         _%$%g4424944281%_))))
                                (_%$%g4424844277%_ _%$%g4424944281%_))))
                        (_%$%g4424844277%_ _%$%g4424944281%_))))
                (let ((_%$%val4426444340%_ (reverse _%$%val4426244307%_))
                      (_%$%key4426544342%_ (reverse _%$%key4426344308%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%$%val4426444340%_
                                 _%$%key4426544342%_)
                                (foldr (lambda (_%$%g4436144365%_
                                                _%$%g4436244368%_
                                                _%$%g4436344370%_)
                                         (cons (cons _%$%g4436244368%_
                                                     (cons _%$%g4436144365%_
                                                           '()))
                                               _%$%g4436344370%_))
                                       '()
                                       _%$%val4426444340%_
                                       _%$%key4426544342%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4425844300%_
                                           _%$%target4425544294%_
                                           '()
                                           '()))
                                        (_%$%g4424844277%_
                                         _%$%g4424944281%_)))))
                              (_%$%g4424844277%_ _%$%g4424944281%_))))
                      (_%$%g4424844277%_ _%$%g4424944281%_)))))
          (_%$%g4424744373%_ _%$stx44244%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx44378%_)
        (let* ((_%$%g4438244411%_
                (lambda (_%$%g4438344407%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4438344407%_)))
               (_%$%g4438144507%_
                (lambda (_%$%g4438344415%_)
                  (if (gx#stx-pair? _%$%g4438344415%_)
                      (let ((_%$%e4438644418%_
                             (gx#syntax-e _%$%g4438344415%_)))
                        (let ((_%$%hd4438744422%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4438644418%_)))
                              (_%$%tl4438844425%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4438644418%_))))
                          (if (gx#stx-pair/null? _%$%tl4438844425%_)
                              (let ((_g46373_
                                     (gx#syntax-split-splice
                                      _%$%tl4438844425%_
                                      '0)))
                                (begin
                                  (let ((_g46374_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g46373_)
                                               (##values-length _g46373_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g46374_ 2)))
                                        (error "Context expects 2 values"
                                               _g46374_)))
                                  (let ((_%$%target4438944428%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46373_ 0)))
                                        (_%$%tl4439144431%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46373_ 1))))
                                    (if (gx#stx-null? _%$%tl4439144431%_)
                                        (letrec ((_%$%loop4439244434%_
                                                  (lambda (_%$%hd4439044438%_
                                                           _%$%val4439644441%_
                                                           _%$%key4439744442%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4439044438%_)
                                                        (let ((_%$%e4439344444%_
                                                               (gx#syntax-e
                                                                _%$%hd4439044438%_)))
                                                          (let ((_%$%lp-hd4439444448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4439344444%_)))
                        (_%$%lp-tl4439544451%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4439344444%_))))
                    (if (gx#stx-pair? _%$%lp-hd4439444448%_)
                        (let ((_%$%e4440044454%_
                               (gx#syntax-e _%$%lp-hd4439444448%_)))
                          (let ((_%$%hd4440144458%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4440044454%_)))
                                (_%$%tl4440244461%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4440044454%_))))
                            (if (gx#stx-pair? _%$%tl4440244461%_)
                                (let ((_%$%e4440344464%_
                                       (gx#syntax-e _%$%tl4440244461%_)))
                                  (let ((_%$%hd4440444468%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4440344464%_)))
                                        (_%$%tl4440544471%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4440344464%_))))
                                    (if (gx#stx-null? _%$%tl4440544471%_)
                                        (_%$%loop4439244434%_
                                         _%$%lp-tl4439544451%_
                                         (cons _%$%hd4440444468%_
                                               _%$%val4439644441%_)
                                         (cons _%$%hd4440144458%_
                                               _%$%key4439744442%_))
                                        (_%$%g4438244411%_
                                         _%$%g4438344415%_))))
                                (_%$%g4438244411%_ _%$%g4438344415%_))))
                        (_%$%g4438244411%_ _%$%g4438344415%_))))
                (let ((_%$%val4439844474%_ (reverse _%$%val4439644441%_))
                      (_%$%key4439944476%_ (reverse _%$%key4439744442%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%$%val4439844474%_
                                 _%$%key4439944476%_)
                                (foldr (lambda (_%$%g4449544499%_
                                                _%$%g4449644502%_
                                                _%$%g4449744504%_)
                                         (cons (cons _%$%g4449644502%_
                                                     (cons _%$%g4449544499%_
                                                           '()))
                                               _%$%g4449744504%_))
                                       '()
                                       _%$%val4439844474%_
                                       _%$%key4439944476%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4439244434%_
                                           _%$%target4438944428%_
                                           '()
                                           '()))
                                        (_%$%g4438244411%_
                                         _%$%g4438344415%_)))))
                              (_%$%g4438244411%_ _%$%g4438344415%_))))
                      (_%$%g4438244411%_ _%$%g4438344415%_)))))
          (_%$%g4438144507%_ _%$stx44378%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx44512%_)
        (let* ((_%$%g4451644545%_
                (lambda (_%$%g4451744541%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4451744541%_)))
               (_%$%g4451544641%_
                (lambda (_%$%g4451744549%_)
                  (if (gx#stx-pair? _%$%g4451744549%_)
                      (let ((_%$%e4452044552%_
                             (gx#syntax-e _%$%g4451744549%_)))
                        (let ((_%$%hd4452144556%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4452044552%_)))
                              (_%$%tl4452244559%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4452044552%_))))
                          (if (gx#stx-pair/null? _%$%tl4452244559%_)
                              (let ((_g46375_
                                     (gx#syntax-split-splice
                                      _%$%tl4452244559%_
                                      '0)))
                                (begin
                                  (let ((_g46376_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g46375_)
                                               (##values-length _g46375_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g46376_ 2)))
                                        (error "Context expects 2 values"
                                               _g46376_)))
                                  (let ((_%$%target4452344562%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46375_ 0)))
                                        (_%$%tl4452544565%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46375_ 1))))
                                    (if (gx#stx-null? _%$%tl4452544565%_)
                                        (letrec ((_%$%loop4452644568%_
                                                  (lambda (_%$%hd4452444572%_
                                                           _%$%val4453044575%_
                                                           _%$%key4453144576%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4452444572%_)
                                                        (let ((_%$%e4452744578%_
                                                               (gx#syntax-e
                                                                _%$%hd4452444572%_)))
                                                          (let ((_%$%lp-hd4452844582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4452744578%_)))
                        (_%$%lp-tl4452944585%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4452744578%_))))
                    (if (gx#stx-pair? _%$%lp-hd4452844582%_)
                        (let ((_%$%e4453444588%_
                               (gx#syntax-e _%$%lp-hd4452844582%_)))
                          (let ((_%$%hd4453544592%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4453444588%_)))
                                (_%$%tl4453644595%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4453444588%_))))
                            (if (gx#stx-pair? _%$%tl4453644595%_)
                                (let ((_%$%e4453744598%_
                                       (gx#syntax-e _%$%tl4453644595%_)))
                                  (let ((_%$%hd4453844602%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4453744598%_)))
                                        (_%$%tl4453944605%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4453744598%_))))
                                    (if (gx#stx-null? _%$%tl4453944605%_)
                                        (_%$%loop4452644568%_
                                         _%$%lp-tl4452944585%_
                                         (cons _%$%hd4453844602%_
                                               _%$%val4453044575%_)
                                         (cons _%$%hd4453544592%_
                                               _%$%key4453144576%_))
                                        (_%$%g4451644545%_
                                         _%$%g4451744549%_))))
                                (_%$%g4451644545%_ _%$%g4451744549%_))))
                        (_%$%g4451644545%_ _%$%g4451744549%_))))
                (let ((_%$%val4453244608%_ (reverse _%$%val4453044575%_))
                      (_%$%key4453344610%_ (reverse _%$%key4453144576%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%$%val4453244608%_
                                 _%$%key4453344610%_)
                                (foldr (lambda (_%$%g4462944633%_
                                                _%$%g4463044636%_
                                                _%$%g4463144638%_)
                                         (cons (cons _%$%g4463044636%_
                                                     (cons _%$%g4462944633%_
                                                           '()))
                                               _%$%g4463144638%_))
                                       '()
                                       _%$%val4453244608%_
                                       _%$%key4453344610%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4452644568%_
                                           _%$%target4452344562%_
                                           '()
                                           '()))
                                        (_%$%g4451644545%_
                                         _%$%g4451744549%_)))))
                              (_%$%g4451644545%_ _%$%g4451744549%_))))
                      (_%$%g4451644545%_ _%$%g4451744549%_)))))
          (_%$%g4451544641%_ _%$stx44512%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx44646%_)
        (let* ((_%$%g4464944673%_
                (lambda (_%$%g4465044669%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4465044669%_)))
               (_%$%g4464844914%_
                (lambda (_%$%g4465044677%_)
                  (if (gx#stx-pair? _%$%g4465044677%_)
                      (let ((_%$%e4465344680%_
                             (gx#syntax-e _%$%g4465044677%_)))
                        (let ((_%$%hd4465444684%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4465344680%_)))
                              (_%$%tl4465544687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4465344680%_))))
                          (if (gx#stx-pair? _%$%tl4465544687%_)
                              (let ((_%$%e4465644690%_
                                     (gx#syntax-e _%$%tl4465544687%_)))
                                (let ((_%$%hd4465744694%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4465644690%_)))
                                      (_%$%tl4465844697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4465644690%_))))
                                  (if (gx#stx-pair/null? _%$%tl4465844697%_)
                                      (let ((_g46377_
                                             (gx#syntax-split-splice
                                              _%$%tl4465844697%_
                                              '0)))
                                        (begin
                                          (let ((_g46378_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46377_)
                                                       (##values-length
                                                        _g46377_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46378_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46378_)))
                                          (let ((_%$%target4465944700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46377_ 0)))
                                                (_%$%tl4466144703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46377_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4466144703%_)
                                                (letrec ((_%$%loop4466244706%_
                                                          (lambda (_%$%hd4466044710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%entry4466644713%_)
                    (if (gx#stx-pair? _%$%hd4466044710%_)
                        (let ((_%$%e4466344715%_
                               (gx#syntax-e _%$%hd4466044710%_)))
                          (let ((_%$%lp-hd4466444719%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4466344715%_)))
                                (_%$%lp-tl4466544722%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4466344715%_))))
                            (_%$%loop4466244706%_
                             _%$%lp-tl4466544722%_
                             (cons _%$%lp-hd4466444719%_
                                   _%$%entry4466644713%_))))
                        (let* ((_%$%entry4466744725%_
                                (reverse _%$%entry4466644713%_))
                               (_%$%g4474844756%_
                                (lambda (_%$%g4474944752%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g4474944752%_)))
                               (_%$%g4474744902%_
                                (lambda (_%$%g4474944760%_)
                                  (let* ((_%$%g4477544801%_
                                          (lambda (_%$%g4477644797%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g4477644797%_)))
                                         (_%$%g4477444890%_
                                          (lambda (_%$%g4477644805%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%g4477644805%_)
                                                (let ((_g46379_
                                                       (gx#syntax-split-splice
                                                        _%$%g4477644805%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g46380_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g46379_)
                         (##values-length _g46379_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g46380_ 2)))
                  (error "Context expects 2 values" _g46380_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target4477944808%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g46379_
                                                              0)))
                                                          (_%$%tl4478144811%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g46379_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4478144811%_)
                                                          (letrec ((_%$%loop4478244814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd4478044818%_
                                     _%$%val4478644821%_
                                     _%$%key4478744822%_)
                              (if (gx#stx-pair? _%$%hd4478044818%_)
                                  (let ((_%$%e4478344824%_
                                         (gx#syntax-e _%$%hd4478044818%_)))
                                    (let ((_%$%lp-hd4478444828%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4478344824%_)))
                                          (_%$%lp-tl4478544831%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4478344824%_))))
                                      (if (gx#stx-pair? _%$%lp-hd4478444828%_)
                                          (let ((_%$%e4479044834%_
                                                 (gx#syntax-e
                                                  _%$%lp-hd4478444828%_)))
                                            (let ((_%$%hd4479144838%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4479044834%_)))
                                                  (_%$%tl4479244841%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4479044834%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl4479244841%_)
                                                  (let ((_%$%e4479344844%_
                                                         (gx#syntax-e
                                                          _%$%tl4479244841%_)))
                                                    (let ((_%$%hd4479444848%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e4479344844%_)))
                                                          (_%$%tl4479544851%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e4479344844%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4479544851%_)
                                                          (_%$%loop4478244814%_
                                                           _%$%lp-tl4478544831%_
                                                           (cons _%$%hd4479444848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%val4478644821%_)
                   (cons _%$%hd4479144838%_ _%$%key4478744822%_))
                  (_%$%g4477544801%_ _%$%g4477644805%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4477544801%_
                                                   _%$%g4477644805%_))))
                                          (_%$%g4477544801%_
                                           _%$%g4477644805%_))))
                                  (let ((_%$%val4478844854%_
                                         (reverse _%$%val4478644821%_))
                                        (_%$%key4478944856%_
                                         (reverse _%$%key4478744822%_)))
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'ht)
                                                      (cons (cons _%$%hd4465744694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'size: (cons _%$%g4474944760%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%val4478844854%_
                                                   _%$%key4478944856%_)
                                                  (foldr (lambda (_%$%g4487844882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4487944885%_
                          _%$%g4488044887%_)
                   (cons (cons (gx#datum->syntax '#f 'hash-put!)
                               (cons (gx#datum->syntax '#f 'ht)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quasiquote)
                                                 (cons _%$%g4487944885%_ '()))
                                           (cons _%$%g4487844882%_ '()))))
                         _%$%g4488044887%_))
                 (cons (gx#datum->syntax '#f 'ht) '())
                 _%$%val4478844854%_
                 _%$%key4478944856%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (_%$%loop4478244814%_ _%$%target4477944808%_ '() '()))
                  (_%$%g4477544801%_ _%$%g4477644805%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4477544801%_
                                                 _%$%g4477644805%_)))))
                                    (_%$%g4477444890%_
                                     (foldr (lambda (_%$%g4489344896%_
                                                     _%$%g4489444899%_)
                                              (cons _%$%g4489344896%_
                                                    _%$%g4489444899%_))
                                            '()
                                            _%$%entry4466744725%_))))))
                          (_%$%g4474744902%_
                           (gx#stx-length
                            (foldr (lambda (_%$%g4490544908%_
                                            _%$%g4490644911%_)
                                     (cons _%$%g4490544908%_
                                           _%$%g4490644911%_))
                                   '()
                                   _%$%entry4466744725%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4466244706%_
                                                   _%$%target4465944700%_
                                                   '()))
                                                (_%$%g4464944673%_
                                                 _%$%g4465044677%_)))))
                                      (_%$%g4464944673%_ _%$%g4465044677%_))))
                              (_%$%g4464944673%_ _%$%g4465044677%_))))
                      (_%$%g4464944673%_ _%$%g4465044677%_)))))
          (_%$%g4464844914%_ _%stx44646%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx44920%_)
        (let* ((_%$%g4492344937%_
                (lambda (_%$%g4492444933%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4492444933%_)))
               (_%$%g4492245009%_
                (lambda (_%$%g4492444941%_)
                  (if (gx#stx-pair? _%$%g4492444941%_)
                      (let ((_%$%e4492644944%_
                             (gx#syntax-e _%$%g4492444941%_)))
                        (let ((_%$%hd4492744948%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4492644944%_)))
                              (_%$%tl4492844951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4492644944%_))))
                          (if (gx#stx-pair? _%$%tl4492844951%_)
                              (let ((_%$%e4492944954%_
                                     (gx#syntax-e _%$%tl4492844951%_)))
                                (let ((_%$%hd4493044958%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4492944954%_)))
                                      (_%$%tl4493144961%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4492944954%_))))
                                  (if (gx#stx-null? _%$%tl4493144961%_)
                                      (if (gx#stx-string? _%$%hd4493044958%_)
                                          (let* ((_%$%g4497844986%_
                                                  (lambda (_%$%g4497944982%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g4497944982%_)))
                                                 (_%$%g4497745005%_
                                                  (lambda (_%$%g4497944990%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%$%g4497944990%_
                                                                '())))))
                                            (_%$%g4497745005%_
                                             (string->bytes
                                              (gx#stx-e _%$%hd4493044958%_))))
                                          (_%$%g4492344937%_
                                           _%$%g4492444941%_))
                                      (_%$%g4492344937%_ _%$%g4492444941%_))))
                              (_%$%g4492344937%_ _%$%g4492444941%_))))
                      (_%$%g4492344937%_ _%$%g4492444941%_)))))
          (_%$%g4492245009%_ _%stx44920%_))))
    (define |gerbil/core/more-sugar[:0:]#@eval|
      (lambda (_%stx45013%_)
        (let* ((_%$%g4501645030%_
                (lambda (_%$%g4501745026%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4501745026%_)))
               (_%$%g4501545102%_
                (lambda (_%$%g4501745034%_)
                  (if (gx#stx-pair? _%$%g4501745034%_)
                      (let ((_%$%e4501945037%_
                             (gx#syntax-e _%$%g4501745034%_)))
                        (let ((_%$%hd4502045041%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4501945037%_)))
                              (_%$%tl4502145044%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4501945037%_))))
                          (if (gx#stx-pair? _%$%tl4502145044%_)
                              (let ((_%$%e4502245047%_
                                     (gx#syntax-e _%$%tl4502145044%_)))
                                (let ((_%$%hd4502345051%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4502245047%_)))
                                      (_%$%tl4502445054%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4502245047%_))))
                                  (if (gx#stx-null? _%$%tl4502445054%_)
                                      (let* ((_%$%g4507145079%_
                                              (lambda (_%$%g4507245075%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g4507245075%_)))
                                             (_%$%g4507045098%_
                                              (lambda (_%$%g4507245083%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _%$%g4507245083%_
                                                            '())))))
                                        (_%$%g4507045098%_
                                         (gx#eval-syntax+1
                                          _%$%hd4502345051%_)))
                                      (_%$%g4501645030%_ _%$%g4501745034%_))))
                              (_%$%g4501645030%_ _%$%g4501745034%_))))
                      (_%$%g4501645030%_ _%$%g4501745034%_)))))
          (_%$%g4501545102%_ _%stx45013%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx45106%_)
        (let* ((_%$%g4510945123%_
                (lambda (_%$%g4511045119%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4511045119%_)))
               (_%$%g4510845164%_
                (lambda (_%$%g4511045127%_)
                  (if (gx#stx-pair? _%$%g4511045127%_)
                      (let ((_%$%e4511245130%_
                             (gx#syntax-e _%$%g4511045127%_)))
                        (let ((_%$%hd4511345134%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4511245130%_)))
                              (_%$%tl4511445137%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4511245130%_))))
                          (if (gx#stx-pair? _%$%tl4511445137%_)
                              (let ((_%$%e4511545140%_
                                     (gx#syntax-e _%$%tl4511445137%_)))
                                (let ((_%$%hd4511645144%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4511545140%_)))
                                      (_%$%tl4511745147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4511545140%_))))
                                  (if (gx#stx-null? _%$%tl4511745147%_)
                                      (let ()
                                        (if (gx#current-expander-compiling?)
                                            (gx#eval-syntax _%$%hd4511645144%_)
                                            '#!void)
                                        (cons (gx#datum->syntax '#f 'void)
                                              '()))
                                      (_%$%g4510945123%_ _%$%g4511045127%_))))
                              (_%$%g4510945123%_ _%$%g4511045127%_))))
                      (_%$%g4510945123%_ _%$%g4511045127%_)))))
          (_%$%g4510845164%_ _%stx45106%_))))
    (define |gerbil/core/more-sugar[:0:]#with-id|
      (lambda (_%stx45168%_)
        (let* ((_%$%g4517145204%_
                (lambda (_%$%g4517245200%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4517245200%_)))
               (_%$%g4517045709%_
                (lambda (_%$%g4517245208%_)
                  (if (gx#stx-pair? _%$%g4517245208%_)
                      (let ((_%$%e4517545211%_
                             (gx#syntax-e _%$%g4517245208%_)))
                        (let ((_%$%hd4517645215%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4517545211%_)))
                              (_%$%tl4517745218%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4517545211%_))))
                          (if (gx#stx-pair? _%$%tl4517745218%_)
                              (let ((_%$%e4517845221%_
                                     (gx#syntax-e _%$%tl4517745218%_)))
                                (let ((_%$%hd4517945225%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4517845221%_)))
                                      (_%$%tl4518045228%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4517845221%_))))
                                  (if (gx#stx-pair/null? _%$%hd4517945225%_)
                                      (let ((_g46381_
                                             (gx#syntax-split-splice
                                              _%$%hd4517945225%_
                                              '0)))
                                        (begin
                                          (let ((_g46382_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46381_)
                                                       (##values-length
                                                        _g46381_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46382_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46382_)))
                                          (let ((_%$%target4518145231%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46381_ 0)))
                                                (_%$%tl4518345234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46381_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4518345234%_)
                                                (letrec ((_%$%loop4518445237%_
                                                          (lambda (_%$%hd4518245241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause4518845244%_)
                    (if (gx#stx-pair? _%$%hd4518245241%_)
                        (let ((_%$%e4518545246%_
                               (gx#syntax-e _%$%hd4518245241%_)))
                          (let ((_%$%lp-hd4518645250%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4518545246%_)))
                                (_%$%lp-tl4518745253%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4518545246%_))))
                            (_%$%loop4518445237%_
                             _%$%lp-tl4518745253%_
                             (cons _%$%lp-hd4518645250%_
                                   _%$%clause4518845244%_))))
                        (let ((_%$%clause4518945256%_
                               (reverse _%$%clause4518845244%_)))
                          (if (gx#stx-pair/null? _%$%tl4518045228%_)
                              (let ((_g46383_
                                     (gx#syntax-split-splice
                                      _%$%tl4518045228%_
                                      '0)))
                                (begin
                                  (let ((_g46384_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g46383_)
                                               (##values-length _g46383_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g46384_ 2)))
                                        (error "Context expects 2 values"
                                               _g46384_)))
                                  (let ((_%$%target4519045259%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46383_ 0)))
                                        (_%$%tl4519245262%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46383_ 1))))
                                    (if (gx#stx-null? _%$%tl4519245262%_)
                                        (letrec ((_%$%loop4519345265%_
                                                  (lambda (_%$%hd4519145269%_
                                                           _%$%body4519745272%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4519145269%_)
                                                        (let ((_%$%e4519445274%_
                                                               (gx#syntax-e
                                                                _%$%hd4519145269%_)))
                                                          (let ((_%$%lp-hd4519545278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4519445274%_)))
                        (_%$%lp-tl4519645281%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4519445274%_))))
                    (_%$%loop4519345265%_
                     _%$%lp-tl4519645281%_
                     (cons _%$%lp-hd4519545278%_ _%$%body4519745272%_))))
                (let* ((_%$%body4519845284%_ (reverse _%$%body4519745272%_))
                       (_%subs45698%_
                        (map (lambda (_%clause45311%_)
                               (let* ((_%__stx4618646187%_ _%clause45311%_)
                                      (_%$%g4531745388%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4618646187%_))))
                                 (let ((_%__kont4618946190%_
                                        (lambda (_%$%g4531945667%_
                                                 _%$%g4532045669%_)
                                          (cons _%$%g4532045669%_
                                                (gx#syntax-local-temp
                                                 (gx#stx-e
                                                  _%$%g4531945667%_)))))
                                       (_%__kont4619146192%_
                                        (lambda (_%$%g4533345601%_
                                                 _%$%g4533445603%_)
                                          (cons _%$%g4533445603%_
                                                (gx#genident 'local-id))))
                                       (_%__kont4619346194%_
                                        (lambda (_%$%g4534745535%_
                                                 _%$%g4534845537%_)
                                          (cons _%$%g4534845537%_
                                                (gx#syntax-local-introduce
                                                 _%$%g4534745535%_))))
                                       (_%__kont4619546196%_
                                        (lambda (_%$%g4536145453%_
                                                 _%$%g4536245455%_
                                                 _%$%g4536345456%_
                                                 _%$%g4536445457%_)
                                          (cons _%$%g4536445457%_
                                                (gx#stx-identifier
                                                 _%$%g4536345456%_
                                                 (cons _%$%g4536245455%_
                                                       (foldr (lambda (_%$%g4547945482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g4548045485%_)
                        (cons _%$%g4547945482%_ _%$%g4548045485%_))
                      '()
                      _%$%g4536145453%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_%__match4632146322%_
                                           (lambda (_%$%e4536545395%_
                                                    _%$%hd4536645399%_
                                                    _%$%tl4536745402%_
                                                    _%$%e4536845405%_
                                                    _%$%hd4536945409%_
                                                    _%$%tl4537045412%_
                                                    _%$%e4537145415%_
                                                    _%$%hd4537245419%_
                                                    _%$%tl4537345422%_
                                                    _%__splice4619746198%_
                                                    _%$%target4537445425%_
                                                    _%$%tl4537645428%_)
                                             (letrec ((_%$%loop4537745431%_
                                                       (lambda (_%$%hd4537545435%_
                                                                _%$%components4538145438%_)
                                                         (if (gx#stx-pair?
                                                              _%$%hd4537545435%_)
                                                             (let ((_%$%e4537845440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%$%hd4537545435%_)))
                       (let ((_%$%lp-tl4538045447%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4537845440%_)))
                             (_%$%lp-hd4537945444%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4537845440%_))))
                         (_%$%loop4537745431%_
                          _%$%lp-tl4538045447%_
                          (cons _%$%lp-hd4537945444%_
                                _%$%components4538145438%_))))
                     (let ((_%$%components4538245450%_
                            (reverse _%$%components4538145438%_)))
                       (let ((_%$%g4536145453%_ _%$%components4538245450%_)
                             (_%$%g4536245455%_ _%$%hd4537245419%_)
                             (_%$%g4536345456%_ _%$%hd4536945409%_)
                             (_%$%g4536445457%_ _%$%hd4536645399%_))
                         (if (gx#identifier? _%$%g4536445457%_)
                             (_%__kont4619546196%_
                              _%$%g4536145453%_
                              _%$%g4536245455%_
                              _%$%g4536345456%_
                              _%$%g4536445457%_)
                             (_%$%g4531745388%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop4537745431%_
                                                _%$%target4537445425%_
                                                '()))))
                                          (_%__match4629546296%_
                                           (lambda (_%$%e4534945495%_
                                                    _%$%hd4535045499%_
                                                    _%$%tl4535145502%_
                                                    _%$%e4535245505%_
                                                    _%$%hd4535345509%_
                                                    _%$%tl4535445512%_
                                                    _%$%e4535545515%_
                                                    _%$%hd4535645519%_
                                                    _%$%tl4535745522%_
                                                    _%$%e4535845525%_
                                                    _%$%hd4535945529%_
                                                    _%$%tl4536045532%_)
                                             (let ((_%$%g4534745535%_
                                                    _%$%hd4535945529%_)
                                                   (_%$%g4534845537%_
                                                    _%$%hd4535045499%_))
                                               (if (and (gx#identifier?
                                                         _%$%g4534845537%_)
                                                        (gx#identifier?
                                                         _%$%g4534745535%_))
                                                   (_%__kont4619346194%_
                                                    _%$%g4534745535%_
                                                    _%$%g4534845537%_)
                                                   (_%$%g4531745388%_)))))
                                          (_%__match4626346264%_
                                           (lambda (_%$%e4533545561%_
                                                    _%$%hd4533645565%_
                                                    _%$%tl4533745568%_
                                                    _%$%e4533845571%_
                                                    _%$%hd4533945575%_
                                                    _%$%tl4534045578%_
                                                    _%$%e4534145581%_
                                                    _%$%hd4534245585%_
                                                    _%$%tl4534345588%_
                                                    _%$%e4534445591%_
                                                    _%$%hd4534545595%_
                                                    _%$%tl4534645598%_)
                                             (let ((_%$%g4533345601%_
                                                    _%$%hd4534545595%_)
                                                   (_%$%g4533445603%_
                                                    _%$%hd4533645565%_))
                                               (if (and (gx#identifier?
                                                         _%$%g4533445603%_)
                                                        (gx#identifier?
                                                         _%$%g4533345601%_))
                                                   (_%__kont4619146192%_
                                                    _%$%g4533345601%_
                                                    _%$%g4533445603%_)
                                                   (_%$%g4531745388%_)))))
                                          (_%__match4623146232%_
                                           (lambda (_%$%e4532145627%_
                                                    _%$%hd4532245631%_
                                                    _%$%tl4532345634%_
                                                    _%$%e4532445637%_
                                                    _%$%hd4532545641%_
                                                    _%$%tl4532645644%_
                                                    _%$%e4532745647%_
                                                    _%$%hd4532845651%_
                                                    _%$%tl4532945654%_
                                                    _%$%e4533045657%_
                                                    _%$%hd4533145661%_
                                                    _%$%tl4533245664%_)
                                             (let ((_%$%g4531945667%_
                                                    _%$%hd4533145661%_)
                                                   (_%$%g4532045669%_
                                                    _%$%hd4532245631%_))
                                               (if (and (gx#identifier?
                                                         _%$%g4532045669%_)
                                                        (gx#identifier?
                                                         _%$%g4531945667%_))
                                                   (_%__kont4618946190%_
                                                    _%$%g4531945667%_
                                                    _%$%g4532045669%_)
                                                   (_%$%g4531745388%_))))))
                                     (if (gx#stx-pair? _%__stx4618646187%_)
                                         (let ((_%$%e4532145627%_
                                                (gx#syntax-e
                                                 _%__stx4618646187%_)))
                                           (let ((_%$%tl4532345634%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4532145627%_)))
                                                 (_%$%hd4532245631%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4532145627%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl4532345634%_)
                                                 (let ((_%$%e4532445637%_
                                                        (gx#syntax-e
                                                         _%$%tl4532345634%_)))
                                                   (let ((_%$%tl4532645644%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e4532445637%_)))
                                                         (_%$%hd4532545641%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e4532445637%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%hd4532545641%_)
                                                         (let ((_%$%e4532745647%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd4532545641%_)))
                   (let ((_%$%tl4532945654%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e4532745647%_)))
                         (_%$%hd4532845651%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e4532745647%_))))
                     (if (gx#identifier? _%$%hd4532845651%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/more-sugar[1]#_g46385_|
                              _%$%hd4532845651%_)
                             (if (gx#stx-pair? _%$%tl4532945654%_)
                                 (let ((_%$%e4533045657%_
                                        (gx#syntax-e _%$%tl4532945654%_)))
                                   (let ((_%$%tl4533245664%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e4533045657%_)))
                                         (_%$%hd4533145661%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e4533045657%_))))
                                     (if (gx#stx-null? _%$%tl4533245664%_)
                                         (if (gx#stx-null? _%$%tl4532645644%_)
                                             (_%__match4623146232%_
                                              _%$%e4532145627%_
                                              _%$%hd4532245631%_
                                              _%$%tl4532345634%_
                                              _%$%e4532445637%_
                                              _%$%hd4532545641%_
                                              _%$%tl4532645644%_
                                              _%$%e4532745647%_
                                              _%$%hd4532845651%_
                                              _%$%tl4532945654%_
                                              _%$%e4533045657%_
                                              _%$%hd4533145661%_
                                              _%$%tl4533245664%_)
                                             (if (gx#stx-pair?
                                                  _%$%tl4532645644%_)
                                                 (let ((_%$%e4537145415%_
                                                        (gx#syntax-e
                                                         _%$%tl4532645644%_)))
                                                   (let ((_%$%tl4537345422%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e4537145415%_)))
                                                         (_%$%hd4537245419%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e4537145415%_))))
                                                     (if (gx#stx-pair/null?
                                                          _%$%tl4537345422%_)
                                                         (let ((_%__splice4619746198%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4537345422%_
                         '0)))
                   (let ((_%$%tl4537645428%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4619746198%_ '1)))
                         (_%$%target4537445425%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4619746198%_ '0))))
                     (if (gx#stx-null? _%$%tl4537645428%_)
                         (_%__match4632146322%_
                          _%$%e4532145627%_
                          _%$%hd4532245631%_
                          _%$%tl4532345634%_
                          _%$%e4532445637%_
                          _%$%hd4532545641%_
                          _%$%tl4532645644%_
                          _%$%e4537145415%_
                          _%$%hd4537245419%_
                          _%$%tl4537345422%_
                          _%__splice4619746198%_
                          _%$%target4537445425%_
                          _%$%tl4537645428%_)
                         (_%$%g4531745388%_))))
                 (_%$%g4531745388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g4531745388%_)))
                                         (if (gx#stx-pair? _%$%tl4532645644%_)
                                             (let ((_%$%e4537145415%_
                                                    (gx#syntax-e
                                                     _%$%tl4532645644%_)))
                                               (let ((_%$%tl4537345422%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e4537145415%_)))
                                                     (_%$%hd4537245419%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e4537145415%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%$%tl4537345422%_)
                                                     (let ((_%__splice4619746198%_
                                                            (gx#syntax-split-splice->vector
                                                             _%$%tl4537345422%_
                                                             '0)))
                                                       (let ((_%$%tl4537645428%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4619746198%_ '1)))
                     (_%$%target4537445425%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4619746198%_ '0))))
                 (if (gx#stx-null? _%$%tl4537645428%_)
                     (_%__match4632146322%_
                      _%$%e4532145627%_
                      _%$%hd4532245631%_
                      _%$%tl4532345634%_
                      _%$%e4532445637%_
                      _%$%hd4532545641%_
                      _%$%tl4532645644%_
                      _%$%e4537145415%_
                      _%$%hd4537245419%_
                      _%$%tl4537345422%_
                      _%__splice4619746198%_
                      _%$%target4537445425%_
                      _%$%tl4537645428%_)
                     (_%$%g4531745388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4531745388%_))))
                                             (_%$%g4531745388%_)))))
                                 (if (gx#stx-pair? _%$%tl4532645644%_)
                                     (let ((_%$%e4537145415%_
                                            (gx#syntax-e _%$%tl4532645644%_)))
                                       (let ((_%$%tl4537345422%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4537145415%_)))
                                             (_%$%hd4537245419%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4537145415%_))))
                                         (if (gx#stx-pair/null?
                                              _%$%tl4537345422%_)
                                             (let ((_%__splice4619746198%_
                                                    (gx#syntax-split-splice->vector
                                                     _%$%tl4537345422%_
                                                     '0)))
                                               (let ((_%$%tl4537645428%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4619746198%_
                                                         '1)))
                                                     (_%$%target4537445425%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4619746198%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%$%tl4537645428%_)
                                                     (_%__match4632146322%_
                                                      _%$%e4532145627%_
                                                      _%$%hd4532245631%_
                                                      _%$%tl4532345634%_
                                                      _%$%e4532445637%_
                                                      _%$%hd4532545641%_
                                                      _%$%tl4532645644%_
                                                      _%$%e4537145415%_
                                                      _%$%hd4537245419%_
                                                      _%$%tl4537345422%_
                                                      _%__splice4619746198%_
                                                      _%$%target4537445425%_
                                                      _%$%tl4537645428%_)
                                                     (_%$%g4531745388%_))))
                                             (_%$%g4531745388%_))))
                                     (_%$%g4531745388%_)))
                             (if (gx#free-identifier=?
                                  |gerbil/core/more-sugar[1]#_g46386_|
                                  _%$%hd4532845651%_)
                                 (if (gx#stx-pair? _%$%tl4532945654%_)
                                     (let ((_%$%e4534445591%_
                                            (gx#syntax-e _%$%tl4532945654%_)))
                                       (let ((_%$%tl4534645598%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4534445591%_)))
                                             (_%$%hd4534545595%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4534445591%_))))
                                         (if (gx#stx-null? _%$%tl4534645598%_)
                                             (if (gx#stx-null?
                                                  _%$%tl4532645644%_)
                                                 (_%__match4626346264%_
                                                  _%$%e4532145627%_
                                                  _%$%hd4532245631%_
                                                  _%$%tl4532345634%_
                                                  _%$%e4532445637%_
                                                  _%$%hd4532545641%_
                                                  _%$%tl4532645644%_
                                                  _%$%e4532745647%_
                                                  _%$%hd4532845651%_
                                                  _%$%tl4532945654%_
                                                  _%$%e4534445591%_
                                                  _%$%hd4534545595%_
                                                  _%$%tl4534645598%_)
                                                 (if (gx#stx-pair?
                                                      _%$%tl4532645644%_)
                                                     (let ((_%$%e4537145415%_
                                                            (gx#syntax-e
                                                             _%$%tl4532645644%_)))
                                                       (let ((_%$%tl4537345422%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e4537145415%_)))
                     (_%$%hd4537245419%_
                      (let () (declare (not safe)) (##car _%$%e4537145415%_))))
                 (if (gx#stx-pair/null? _%$%tl4537345422%_)
                     (let ((_%__splice4619746198%_
                            (gx#syntax-split-splice->vector
                             _%$%tl4537345422%_
                             '0)))
                       (let ((_%$%tl4537645428%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4619746198%_ '1)))
                             (_%$%target4537445425%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4619746198%_ '0))))
                         (if (gx#stx-null? _%$%tl4537645428%_)
                             (_%__match4632146322%_
                              _%$%e4532145627%_
                              _%$%hd4532245631%_
                              _%$%tl4532345634%_
                              _%$%e4532445637%_
                              _%$%hd4532545641%_
                              _%$%tl4532645644%_
                              _%$%e4537145415%_
                              _%$%hd4537245419%_
                              _%$%tl4537345422%_
                              _%__splice4619746198%_
                              _%$%target4537445425%_
                              _%$%tl4537645428%_)
                             (_%$%g4531745388%_))))
                     (_%$%g4531745388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4531745388%_)))
                                             (if (gx#stx-pair?
                                                  _%$%tl4532645644%_)
                                                 (let ((_%$%e4537145415%_
                                                        (gx#syntax-e
                                                         _%$%tl4532645644%_)))
                                                   (let ((_%$%tl4537345422%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e4537145415%_)))
                                                         (_%$%hd4537245419%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e4537145415%_))))
                                                     (if (gx#stx-pair/null?
                                                          _%$%tl4537345422%_)
                                                         (let ((_%__splice4619746198%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4537345422%_
                         '0)))
                   (let ((_%$%tl4537645428%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4619746198%_ '1)))
                         (_%$%target4537445425%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4619746198%_ '0))))
                     (if (gx#stx-null? _%$%tl4537645428%_)
                         (_%__match4632146322%_
                          _%$%e4532145627%_
                          _%$%hd4532245631%_
                          _%$%tl4532345634%_
                          _%$%e4532445637%_
                          _%$%hd4532545641%_
                          _%$%tl4532645644%_
                          _%$%e4537145415%_
                          _%$%hd4537245419%_
                          _%$%tl4537345422%_
                          _%__splice4619746198%_
                          _%$%target4537445425%_
                          _%$%tl4537645428%_)
                         (_%$%g4531745388%_))))
                 (_%$%g4531745388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g4531745388%_)))))
                                     (if (gx#stx-pair? _%$%tl4532645644%_)
                                         (let ((_%$%e4537145415%_
                                                (gx#syntax-e
                                                 _%$%tl4532645644%_)))
                                           (let ((_%$%tl4537345422%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4537145415%_)))
                                                 (_%$%hd4537245419%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4537145415%_))))
                                             (if (gx#stx-pair/null?
                                                  _%$%tl4537345422%_)
                                                 (let ((_%__splice4619746198%_
                                                        (gx#syntax-split-splice->vector
                                                         _%$%tl4537345422%_
                                                         '0)))
                                                   (let ((_%$%tl4537645428%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4619746198%_
                                                             '1)))
                                                         (_%$%target4537445425%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4619746198%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%$%tl4537645428%_)
                                                         (_%__match4632146322%_
                                                          _%$%e4532145627%_
                                                          _%$%hd4532245631%_
                                                          _%$%tl4532345634%_
                                                          _%$%e4532445637%_
                                                          _%$%hd4532545641%_
                                                          _%$%tl4532645644%_
                                                          _%$%e4537145415%_
                                                          _%$%hd4537245419%_
                                                          _%$%tl4537345422%_
                                                          _%__splice4619746198%_
                                                          _%$%target4537445425%_
                                                          _%$%tl4537645428%_)
                                                         (_%$%g4531745388%_))))
                                                 (_%$%g4531745388%_))))
                                         (_%$%g4531745388%_)))
                                 (if (gx#free-identifier=?
                                      |gerbil/core/more-sugar[1]#_g46387_|
                                      _%$%hd4532845651%_)
                                     (if (gx#stx-pair? _%$%tl4532945654%_)
                                         (let ((_%$%e4535845525%_
                                                (gx#syntax-e
                                                 _%$%tl4532945654%_)))
                                           (let ((_%$%tl4536045532%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4535845525%_)))
                                                 (_%$%hd4535945529%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4535845525%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl4536045532%_)
                                                 (if (gx#stx-null?
                                                      _%$%tl4532645644%_)
                                                     (_%__match4629546296%_
                                                      _%$%e4532145627%_
                                                      _%$%hd4532245631%_
                                                      _%$%tl4532345634%_
                                                      _%$%e4532445637%_
                                                      _%$%hd4532545641%_
                                                      _%$%tl4532645644%_
                                                      _%$%e4532745647%_
                                                      _%$%hd4532845651%_
                                                      _%$%tl4532945654%_
                                                      _%$%e4535845525%_
                                                      _%$%hd4535945529%_
                                                      _%$%tl4536045532%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl4532645644%_)
                                                         (let ((_%$%e4537145415%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4532645644%_)))
                   (let ((_%$%tl4537345422%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e4537145415%_)))
                         (_%$%hd4537245419%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e4537145415%_))))
                     (if (gx#stx-pair/null? _%$%tl4537345422%_)
                         (let ((_%__splice4619746198%_
                                (gx#syntax-split-splice->vector
                                 _%$%tl4537345422%_
                                 '0)))
                           (let ((_%$%tl4537645428%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4619746198%_ '1)))
                                 (_%$%target4537445425%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4619746198%_ '0))))
                             (if (gx#stx-null? _%$%tl4537645428%_)
                                 (_%__match4632146322%_
                                  _%$%e4532145627%_
                                  _%$%hd4532245631%_
                                  _%$%tl4532345634%_
                                  _%$%e4532445637%_
                                  _%$%hd4532545641%_
                                  _%$%tl4532645644%_
                                  _%$%e4537145415%_
                                  _%$%hd4537245419%_
                                  _%$%tl4537345422%_
                                  _%__splice4619746198%_
                                  _%$%target4537445425%_
                                  _%$%tl4537645428%_)
                                 (_%$%g4531745388%_))))
                         (_%$%g4531745388%_))))
                 (_%$%g4531745388%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%$%tl4532645644%_)
                                                     (let ((_%$%e4537145415%_
                                                            (gx#syntax-e
                                                             _%$%tl4532645644%_)))
                                                       (let ((_%$%tl4537345422%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e4537145415%_)))
                     (_%$%hd4537245419%_
                      (let () (declare (not safe)) (##car _%$%e4537145415%_))))
                 (if (gx#stx-pair/null? _%$%tl4537345422%_)
                     (let ((_%__splice4619746198%_
                            (gx#syntax-split-splice->vector
                             _%$%tl4537345422%_
                             '0)))
                       (let ((_%$%tl4537645428%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4619746198%_ '1)))
                             (_%$%target4537445425%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4619746198%_ '0))))
                         (if (gx#stx-null? _%$%tl4537645428%_)
                             (_%__match4632146322%_
                              _%$%e4532145627%_
                              _%$%hd4532245631%_
                              _%$%tl4532345634%_
                              _%$%e4532445637%_
                              _%$%hd4532545641%_
                              _%$%tl4532645644%_
                              _%$%e4537145415%_
                              _%$%hd4537245419%_
                              _%$%tl4537345422%_
                              _%__splice4619746198%_
                              _%$%target4537445425%_
                              _%$%tl4537645428%_)
                             (_%$%g4531745388%_))))
                     (_%$%g4531745388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4531745388%_)))))
                                         (if (gx#stx-pair? _%$%tl4532645644%_)
                                             (let ((_%$%e4537145415%_
                                                    (gx#syntax-e
                                                     _%$%tl4532645644%_)))
                                               (let ((_%$%tl4537345422%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e4537145415%_)))
                                                     (_%$%hd4537245419%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e4537145415%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%$%tl4537345422%_)
                                                     (let ((_%__splice4619746198%_
                                                            (gx#syntax-split-splice->vector
                                                             _%$%tl4537345422%_
                                                             '0)))
                                                       (let ((_%$%tl4537645428%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4619746198%_ '1)))
                     (_%$%target4537445425%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4619746198%_ '0))))
                 (if (gx#stx-null? _%$%tl4537645428%_)
                     (_%__match4632146322%_
                      _%$%e4532145627%_
                      _%$%hd4532245631%_
                      _%$%tl4532345634%_
                      _%$%e4532445637%_
                      _%$%hd4532545641%_
                      _%$%tl4532645644%_
                      _%$%e4537145415%_
                      _%$%hd4537245419%_
                      _%$%tl4537345422%_
                      _%__splice4619746198%_
                      _%$%target4537445425%_
                      _%$%tl4537645428%_)
                     (_%$%g4531745388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4531745388%_))))
                                             (_%$%g4531745388%_)))
                                     (if (gx#stx-pair? _%$%tl4532645644%_)
                                         (let ((_%$%e4537145415%_
                                                (gx#syntax-e
                                                 _%$%tl4532645644%_)))
                                           (let ((_%$%tl4537345422%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4537145415%_)))
                                                 (_%$%hd4537245419%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4537145415%_))))
                                             (if (gx#stx-pair/null?
                                                  _%$%tl4537345422%_)
                                                 (let ((_%__splice4619746198%_
                                                        (gx#syntax-split-splice->vector
                                                         _%$%tl4537345422%_
                                                         '0)))
                                                   (let ((_%$%tl4537645428%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4619746198%_
                                                             '1)))
                                                         (_%$%target4537445425%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4619746198%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%$%tl4537645428%_)
                                                         (_%__match4632146322%_
                                                          _%$%e4532145627%_
                                                          _%$%hd4532245631%_
                                                          _%$%tl4532345634%_
                                                          _%$%e4532445637%_
                                                          _%$%hd4532545641%_
                                                          _%$%tl4532645644%_
                                                          _%$%e4537145415%_
                                                          _%$%hd4537245419%_
                                                          _%$%tl4537345422%_
                                                          _%__splice4619746198%_
                                                          _%$%target4537445425%_
                                                          _%$%tl4537645428%_)
                                                         (_%$%g4531745388%_))))
                                                 (_%$%g4531745388%_))))
                                         (_%$%g4531745388%_)))))
                         (if (gx#stx-pair? _%$%tl4532645644%_)
                             (let ((_%$%e4537145415%_
                                    (gx#syntax-e _%$%tl4532645644%_)))
                               (let ((_%$%tl4537345422%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4537145415%_)))
                                     (_%$%hd4537245419%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4537145415%_))))
                                 (if (gx#stx-pair/null? _%$%tl4537345422%_)
                                     (let ((_%__splice4619746198%_
                                            (gx#syntax-split-splice->vector
                                             _%$%tl4537345422%_
                                             '0)))
                                       (let ((_%$%tl4537645428%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4619746198%_
                                                 '1)))
                                             (_%$%target4537445425%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4619746198%_
                                                 '0))))
                                         (if (gx#stx-null? _%$%tl4537645428%_)
                                             (_%__match4632146322%_
                                              _%$%e4532145627%_
                                              _%$%hd4532245631%_
                                              _%$%tl4532345634%_
                                              _%$%e4532445637%_
                                              _%$%hd4532545641%_
                                              _%$%tl4532645644%_
                                              _%$%e4537145415%_
                                              _%$%hd4537245419%_
                                              _%$%tl4537345422%_
                                              _%__splice4619746198%_
                                              _%$%target4537445425%_
                                              _%$%tl4537645428%_)
                                             (_%$%g4531745388%_))))
                                     (_%$%g4531745388%_))))
                             (_%$%g4531745388%_)))))
                 (if (gx#stx-pair? _%$%tl4532645644%_)
                     (let ((_%$%e4537145415%_
                            (gx#syntax-e _%$%tl4532645644%_)))
                       (let ((_%$%tl4537345422%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4537145415%_)))
                             (_%$%hd4537245419%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4537145415%_))))
                         (if (gx#stx-pair/null? _%$%tl4537345422%_)
                             (let ((_%__splice4619746198%_
                                    (gx#syntax-split-splice->vector
                                     _%$%tl4537345422%_
                                     '0)))
                               (let ((_%$%tl4537645428%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4619746198%_
                                         '1)))
                                     (_%$%target4537445425%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4619746198%_
                                         '0))))
                                 (if (gx#stx-null? _%$%tl4537645428%_)
                                     (_%__match4632146322%_
                                      _%$%e4532145627%_
                                      _%$%hd4532245631%_
                                      _%$%tl4532345634%_
                                      _%$%e4532445637%_
                                      _%$%hd4532545641%_
                                      _%$%tl4532645644%_
                                      _%$%e4537145415%_
                                      _%$%hd4537245419%_
                                      _%$%tl4537345422%_
                                      _%__splice4619746198%_
                                      _%$%target4537445425%_
                                      _%$%tl4537645428%_)
                                     (_%$%g4531745388%_))))
                             (_%$%g4531745388%_))))
                     (_%$%g4531745388%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g4531745388%_))))
                                         (_%$%g4531745388%_))))))
                             (gx#syntax->list
                              (foldr (lambda (_%$%g4568945692%_
                                              _%$%g4569045695%_)
                                       (cons _%$%g4568945692%_
                                             _%$%g4569045695%_))
                                     '()
                                     _%$%clause4518945256%_)))))
                  (|gerbil/core/more-sugar[1]#stx-substitute__0|
                   _%subs45698%_
                   (cons (gx#datum->syntax '#f 'begin)
                         (foldr (lambda (_%$%g4570045703%_ _%$%g4570145706%_)
                                  (cons _%$%g4570045703%_ _%$%g4570145706%_))
                                '()
                                _%$%body4519845284%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4519345265%_
                                           _%$%target4519045259%_
                                           '()))
                                        (_%$%g4517145204%_
                                         _%$%g4517245208%_)))))
                              (_%$%g4517145204%_ _%$%g4517245208%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4518445237%_
                                                   _%$%target4518145231%_
                                                   '()))
                                                (_%$%g4517145204%_
                                                 _%$%g4517245208%_)))))
                                      (_%$%g4517145204%_ _%$%g4517245208%_))))
                              (_%$%g4517145204%_ _%$%g4517245208%_))))
                      (_%$%g4517145204%_ _%$%g4517245208%_)))))
          (_%$%g4517045709%_ _%stx45168%_))))))
