(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g46367_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g46370_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g46371_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g46372_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g46373_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g46388_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g46389_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g46390_|
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
      (lambda _%$args40917%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args40917%_)))
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
      (lambda _%$args40913%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args40913%_)))
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
      (lambda (_%stx40910%_)
        (if (gx#identifier? _%stx40910%_)
            (let ((__tmp46328 (gx#syntax-local-value _%stx40910%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp46328))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx40907%_)
        (if (gx#identifier? _%stx40907%_)
            (let ((__tmp46329 (gx#syntax-local-value _%stx40907%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp46329))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx40534%_)
        (let* ((_%__stx4571945720%_ _%stx40534%_)
               (_%$%g4054040603%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4571945720%_))))
          (let ((_%__kont4572245723%_
                 (lambda (_%$%g4054240884%_ _%$%g4054340886%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%$%g4054340886%_)
                    _%stx40534%_)))
                (_%__kont4572445725%_
                 (lambda (_%$%g4055640773%_
                          _%$%g4055740775%_
                          _%$%g4055840776%_)
                   (let* ((_%$%g4079840806%_
                           (lambda (_%$%g4079940802%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g4079940802%_)))
                          (_%$%g4079740833%_
                           (lambda (_%$%g4079940810%_)
                             (cons _%$%g4079940810%_
                                   (foldr (lambda (_%$%g4082440827%_
                                                   _%$%g4082540830%_)
                                            (cons _%$%g4082440827%_
                                                  _%$%g4082540830%_))
                                          (cons _%$%g4055640773%_ '())
                                          _%$%g4055740775%_)))))
                     (_%$%g4079740833%_
                      (gx#stx-identifier
                       _%$%g4055840776%_
                       _%$%g4055840776%_
                       '"-set!")))))
                (_%__kont4572845729%_
                 (lambda (_%$%g4058040685%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%$%g4058040685%_)
                    _%stx40534%_)))
                (_%__kont4573045731%_
                 (lambda (_%$%g4058740640%_ _%$%g4058840642%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%$%g4058840642%_
                               (cons _%$%g4058740640%_ '()))))))
            (let* ((_%__match4581845819%_
                    (lambda (_%$%e4058940610%_
                             _%$%hd4059040614%_
                             _%$%tl4059140617%_
                             _%$%e4059240620%_
                             _%$%hd4059340624%_
                             _%$%tl4059440627%_
                             _%$%e4059540630%_
                             _%$%hd4059640634%_
                             _%$%tl4059740637%_)
                      (let ((_%$%g4058740640%_ _%$%hd4059640634%_)
                            (_%$%g4058840642%_ _%$%hd4059340624%_))
                        (if (gx#identifier? _%$%g4058840642%_)
                            (_%__kont4573045731%_
                             _%$%g4058740640%_
                             _%$%g4058840642%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g4054040603%_))))))
                   (_%__match4579845799%_
                    (lambda (_%$%e4058140665%_
                             _%$%hd4058240669%_
                             _%$%tl4058340672%_
                             _%$%e4058440675%_
                             _%$%hd4058540679%_
                             _%$%tl4058640682%_)
                      (let ((_%$%g4058040685%_ _%$%hd4058540679%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%$%g4058040685%_)
                            (_%__kont4572845729%_ _%$%g4058040685%_)
                            (if (gx#stx-pair? _%$%tl4058640682%_)
                                (let ((_%$%e4059540630%_
                                       (gx#syntax-e _%$%tl4058640682%_)))
                                  (let ((_%$%tl4059740637%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4059540630%_)))
                                        (_%$%hd4059640634%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4059540630%_))))
                                    (if (gx#stx-null? _%$%tl4059740637%_)
                                        (_%__match4581845819%_
                                         _%$%e4058140665%_
                                         _%$%hd4058240669%_
                                         _%$%tl4058340672%_
                                         _%$%e4058440675%_
                                         _%$%hd4058540679%_
                                         _%$%tl4058640682%_
                                         _%$%e4059540630%_
                                         _%$%hd4059640634%_
                                         _%$%tl4059740637%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g4054040603%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g4054040603%_)))))))
                   (_%__match4578645787%_
                    (lambda (_%$%e4055940705%_
                             _%$%hd4056040709%_
                             _%$%tl4056140712%_
                             _%$%e4056240715%_
                             _%$%hd4056340719%_
                             _%$%tl4056440722%_
                             _%$%e4056540725%_
                             _%$%hd4056640729%_
                             _%$%tl4056740732%_
                             _%__splice4572645727%_
                             _%$%target4056840735%_
                             _%$%tl4057040738%_)
                      (letrec ((_%$%loop4057140741%_
                                (lambda (_%$%hd4056940745%_
                                         _%$%arg4057540748%_)
                                  (if (gx#stx-pair? _%$%hd4056940745%_)
                                      (let ((_%$%e4057240750%_
                                             (gx#syntax-e _%$%hd4056940745%_)))
                                        (let ((_%$%lp-tl4057440757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4057240750%_)))
                                              (_%$%lp-hd4057340754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4057240750%_))))
                                          (_%$%loop4057140741%_
                                           _%$%lp-tl4057440757%_
                                           (cons _%$%lp-hd4057340754%_
                                                 _%$%arg4057540748%_))))
                                      (let ((_%$%arg4057640760%_
                                             (reverse _%$%arg4057540748%_)))
                                        (if (gx#stx-pair? _%$%tl4056440722%_)
                                            (let ((_%$%e4057740763%_
                                                   (gx#syntax-e
                                                    _%$%tl4056440722%_)))
                                              (let ((_%$%tl4057940770%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4057740763%_)))
                                                    (_%$%hd4057840767%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4057740763%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl4057940770%_)
                                                    (let ((_%$%g4055640773%_
                                                           _%$%hd4057840767%_)
                                                          (_%$%g4055740775%_
                                                           _%$%arg4057640760%_)
                                                          (_%$%g4055840776%_
                                                           _%$%hd4056640729%_))
                                                      (if (gx#identifier?
                                                           _%$%g4055840776%_)
                                                          (_%__kont4572445725%_
                                                           _%$%g4055640773%_
                                                           _%$%g4055740775%_
                                                           _%$%g4055840776%_)
                                                          (_%__match4579845799%_
                                                           _%$%e4055940705%_
                                                           _%$%hd4056040709%_
                                                           _%$%tl4056140712%_
                                                           _%$%e4056240715%_
                                                           _%$%hd4056340719%_
                                                           _%$%tl4056440722%_)))
                                                    (_%__match4579845799%_
                                                     _%$%e4055940705%_
                                                     _%$%hd4056040709%_
                                                     _%$%tl4056140712%_
                                                     _%$%e4056240715%_
                                                     _%$%hd4056340719%_
                                                     _%$%tl4056440722%_))))
                                            (_%__match4579845799%_
                                             _%$%e4055940705%_
                                             _%$%hd4056040709%_
                                             _%$%tl4056140712%_
                                             _%$%e4056240715%_
                                             _%$%hd4056340719%_
                                             _%$%tl4056440722%_)))))))
                        (_%$%loop4057140741%_ _%$%target4056840735%_ '())))))
              (if (gx#stx-pair? _%__stx4571945720%_)
                  (let ((_%$%e4054440844%_ (gx#syntax-e _%__stx4571945720%_)))
                    (let ((_%$%tl4054640851%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4054440844%_)))
                          (_%$%hd4054540848%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4054440844%_))))
                      (if (gx#stx-pair? _%$%tl4054640851%_)
                          (let ((_%$%e4054740854%_
                                 (gx#syntax-e _%$%tl4054640851%_)))
                            (let ((_%$%tl4054940861%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e4054740854%_)))
                                  (_%$%hd4054840858%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e4054740854%_))))
                              (if (gx#stx-pair? _%$%hd4054840858%_)
                                  (let ((_%$%e4055040864%_
                                         (gx#syntax-e _%$%hd4054840858%_)))
                                    (let ((_%$%tl4055240871%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4055040864%_)))
                                          (_%$%hd4055140868%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4055040864%_))))
                                      (if (gx#stx-pair? _%$%tl4054940861%_)
                                          (let ((_%$%e4055340874%_
                                                 (gx#syntax-e
                                                  _%$%tl4054940861%_)))
                                            (let ((_%$%tl4055540881%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4055340874%_)))
                                                  (_%$%hd4055440878%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4055340874%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl4055540881%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%$%g4054240884%_
                                                             _%$%hd4055440878%_)
                                                            (_%$%g4054340886%_
                                                             _%$%hd4055140868%_))
                                                        (_%__kont4572245723%_
                                                         _%$%g4054240884%_
                                                         _%$%g4054340886%_))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl4055240871%_)
                                                          (let ((_%__splice4572645727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl4055240871%_
                          '0)))
                    (let ((_%$%tl4057040738%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4572645727%_ '1)))
                          (_%$%target4056840735%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4572645727%_ '0))))
                      (if (gx#stx-null? _%$%tl4057040738%_)
                          (_%__match4578645787%_
                           _%$%e4054440844%_
                           _%$%hd4054540848%_
                           _%$%tl4054640851%_
                           _%$%e4054740854%_
                           _%$%hd4054840858%_
                           _%$%tl4054940861%_
                           _%$%e4055040864%_
                           _%$%hd4055140868%_
                           _%$%tl4055240871%_
                           _%__splice4572645727%_
                           _%$%target4056840735%_
                           _%$%tl4057040738%_)
                          (_%__match4579845799%_
                           _%$%e4054440844%_
                           _%$%hd4054540848%_
                           _%$%tl4054640851%_
                           _%$%e4054740854%_
                           _%$%hd4054840858%_
                           _%$%tl4054940861%_))))
                  (_%__match4579845799%_
                   _%$%e4054440844%_
                   _%$%hd4054540848%_
                   _%$%tl4054640851%_
                   _%$%e4054740854%_
                   _%$%hd4054840858%_
                   _%$%tl4054940861%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl4055240871%_)
                                                      (let ((_%__splice4572645727%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl4055240871%_
                                                              '0)))
                                                        (let ((_%$%tl4057040738%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4572645727%_ '1)))
                      (_%$%target4056840735%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4572645727%_ '0))))
                  (if (gx#stx-null? _%$%tl4057040738%_)
                      (_%__match4578645787%_
                       _%$%e4054440844%_
                       _%$%hd4054540848%_
                       _%$%tl4054640851%_
                       _%$%e4054740854%_
                       _%$%hd4054840858%_
                       _%$%tl4054940861%_
                       _%$%e4055040864%_
                       _%$%hd4055140868%_
                       _%$%tl4055240871%_
                       _%__splice4572645727%_
                       _%$%target4056840735%_
                       _%$%tl4057040738%_)
                      (_%__match4579845799%_
                       _%$%e4054440844%_
                       _%$%hd4054540848%_
                       _%$%tl4054640851%_
                       _%$%e4054740854%_
                       _%$%hd4054840858%_
                       _%$%tl4054940861%_))))
              (_%__match4579845799%_
               _%$%e4054440844%_
               _%$%hd4054540848%_
               _%$%tl4054640851%_
               _%$%e4054740854%_
               _%$%hd4054840858%_
               _%$%tl4054940861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl4055240871%_)
                                              (let ((_%__splice4572645727%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl4055240871%_
                                                      '0)))
                                                (let ((_%$%tl4057040738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4572645727%_
                                                          '1)))
                                                      (_%$%target4056840735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4572645727%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl4057040738%_)
                                                      (_%__match4578645787%_
                                                       _%$%e4054440844%_
                                                       _%$%hd4054540848%_
                                                       _%$%tl4054640851%_
                                                       _%$%e4054740854%_
                                                       _%$%hd4054840858%_
                                                       _%$%tl4054940861%_
                                                       _%$%e4055040864%_
                                                       _%$%hd4055140868%_
                                                       _%$%tl4055240871%_
                                                       _%__splice4572645727%_
                                                       _%$%target4056840735%_
                                                       _%$%tl4057040738%_)
                                                      (_%__match4579845799%_
                                                       _%$%e4054440844%_
                                                       _%$%hd4054540848%_
                                                       _%$%tl4054640851%_
                                                       _%$%e4054740854%_
                                                       _%$%hd4054840858%_
                                                       _%$%tl4054940861%_))))
                                              (_%__match4579845799%_
                                               _%$%e4054440844%_
                                               _%$%hd4054540848%_
                                               _%$%tl4054640851%_
                                               _%$%e4054740854%_
                                               _%$%hd4054840858%_
                                               _%$%tl4054940861%_)))))
                                  (_%__match4579845799%_
                                   _%$%e4054440844%_
                                   _%$%hd4054540848%_
                                   _%$%tl4054640851%_
                                   _%$%e4054740854%_
                                   _%$%hd4054840858%_
                                   _%$%tl4054940861%_))))
                          (let () (declare (not safe)) (_%$%g4054040603%_)))))
                  (let () (declare (not safe)) (_%$%g4054040603%_))))))))
    (define |gerbil/core/more-sugar[1]#stx-re-source|
      (lambda (_%stx40530%_ _%src40532%_)
        (if (gx#identifier? _%stx40530%_)
            _%stx40530%_
            (gx#stx-wrap-source
             (gx#syntax-e _%stx40530%_)
             (gx#stx-source _%src40532%_)))))
    (define |gerbil/core/more-sugar[1]#stx-substitute__%|
      (lambda (_%subs40487%_ _%stx40489%_ _%id=?40490%_)
        (let _%recur40492%_ ((_%stx40495%_ _%stx40489%_))
          (if (gx#identifier? _%stx40495%_)
              (let ((_%$e40500%_
                     (assoc _%stx40495%_ _%subs40487%_ _%id=?40490%_)))
                (if _%$e40500%_ (cdr _%$e40500%_) _%stx40495%_))
              (if (gx#stx-pair? _%stx40495%_)
                  (|gerbil/core/more-sugar[1]#stx-re-source|
                   (cons (_%recur40492%_ (gx#stx-car _%stx40495%_))
                         (_%recur40492%_ (gx#stx-cdr _%stx40495%_)))
                   _%stx40495%_)
                  (if (gx#stx-vector? _%stx40495%_)
                      (|gerbil/core/more-sugar[1]#stx-re-source|
                       (vector-map _%recur40492%_ (gx#syntax-e _%stx40495%_))
                       _%stx40495%_)
                      (if (gx#stx-box? _%stx40495%_)
                          (|gerbil/core/more-sugar[1]#stx-re-source|
                           (box (_%recur40492%_
                                 (unbox (gx#syntax-e _%stx40495%_))))
                           _%stx40495%_)
                          _%stx40495%_)))))))
    (define |gerbil/core/more-sugar[1]#stx-substitute__0|
      (lambda (_%subs40518%_ _%stx40520%_)
        (let ((_%id=?40522%_ gx#bound-identifier=?))
          (|gerbil/core/more-sugar[1]#stx-substitute__%|
           _%subs40518%_
           _%stx40520%_
           _%id=?40522%_))))
    (define |gerbil/core/more-sugar[1]#stx-substitute|
      (lambda _g46330_
        (let ((_g46331_ (let () (declare (not safe)) (##length _g46330_))))
          (cond ((let () (declare (not safe)) (##fx= _g46331_ 2))
                 (apply |gerbil/core/more-sugar[1]#stx-substitute__0|
                        _g46330_))
                ((let () (declare (not safe)) (##fx= _g46331_ 3))
                 (apply |gerbil/core/more-sugar[1]#stx-substitute__%|
                        _g46330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/more-sugar[1]#stx-substitute|
                  _g46330_))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx40924%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40924%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx40927%_)
        (let* ((_%$%g4093040954%_
                (lambda (_%$%g4093140950%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4093140950%_)))
               (_%$%g4092941128%_
                (lambda (_%$%g4093140958%_)
                  (if (gx#stx-pair? _%$%g4093140958%_)
                      (let ((_%$%e4093440961%_
                             (gx#syntax-e _%$%g4093140958%_)))
                        (let ((_%$%hd4093540965%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4093440961%_)))
                              (_%$%tl4093640968%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4093440961%_))))
                          (if (gx#stx-pair/null? _%$%tl4093640968%_)
                              (if (let ((__tmp46332
                                         (gx#stx-length _%$%tl4093640968%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp46332 '1))
                                  (let ((_g46333_
                                         (gx#syntax-split-splice
                                          _%$%tl4093640968%_
                                          '1)))
                                    (begin
                                      (let ((_g46334_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g46333_)
                                                   (##values-length _g46333_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g46334_ 2)))
                                            (error "Context expects 2 values"
                                                   _g46334_)))
                                      (let ((_%$%target4093740971%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g46333_ 0)))
                                            (_%$%tl4093940974%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g46333_ 1))))
                                        (if (gx#stx-pair? _%$%tl4093940974%_)
                                            (let ((_%$%e4094640977%_
                                                   (gx#syntax-e
                                                    _%$%tl4093940974%_)))
                                              (let ((_%$%hd4094740981%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4094640977%_)))
                                                    (_%$%tl4094840984%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4094640977%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl4094840984%_)
                                                    (letrec ((_%$%loop4094040987%_
                                                              (lambda (_%$%hd4093840991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%tgt4094440994%_)
                        (if (gx#stx-pair? _%$%hd4093840991%_)
                            (let ((_%$%e4094140996%_
                                   (gx#syntax-e _%$%hd4093840991%_)))
                              (let ((_%$%lp-hd4094241000%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4094140996%_)))
                                    (_%$%lp-tl4094341003%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4094140996%_))))
                                (_%$%loop4094040987%_
                                 _%$%lp-tl4094341003%_
                                 (cons _%$%lp-hd4094241000%_
                                       _%$%tgt4094440994%_))))
                            (let* ((_%$%tgt4094541006%_
                                    (reverse _%$%tgt4094440994%_))
                                   (_%$%g4102941046%_
                                    (lambda (_%$%g4103041042%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g4103041042%_)))
                                   (_%$%g4102841116%_
                                    (lambda (_%$%g4103041050%_)
                                      (if (gx#stx-pair/null? _%$%g4103041050%_)
                                          (let ((_g46335_
                                                 (gx#syntax-split-splice
                                                  _%$%g4103041050%_
                                                  '0)))
                                            (begin
                                              (let ((_g46336_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g46335_)
                                                           (##values-length
                                                            _g46335_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g46336_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g46336_)))
                                              (let ((_%$%target4103241053%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g46335_
                                                        0)))
                                                    (_%$%tl4103441056%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g46335_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl4103441056%_)
                                                    (letrec ((_%$%loop4103541059%_
                                                              (lambda (_%$%hd4103341063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%$e4103941066%_)
                        (if (gx#stx-pair? _%$%hd4103341063%_)
                            (let ((_%$%e4103641068%_
                                   (gx#syntax-e _%$%hd4103341063%_)))
                              (let ((_%$%lp-hd4103741072%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4103641068%_)))
                                    (_%$%lp-tl4103841075%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4103641068%_))))
                                (_%$%loop4103541059%_
                                 _%$%lp-tl4103841075%_
                                 (cons _%$%lp-hd4103741072%_
                                       _%$%$e4103941066%_))))
                            (let ((_%$%$e4104041078%_
                                   (reverse _%$%$e4103941066%_)))
                              (cons (gx#datum->syntax '#f 'let-values)
                                    (cons (cons (cons (foldr (lambda (_%$%g4109641102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g4109741105%_)
                       (cons _%$%g4109641102%_ _%$%g4109741105%_))
                     '()
                     _%$%$e4104041078%_)
              (cons _%$%hd4094740981%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _%$%$e4104041078%_
                                             _%$%tgt4094541006%_)
                                            (foldr (lambda (_%$%g4109841108%_
                                                            _%$%g4109941111%_
                                                            _%$%g4110041113%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'set!)
                         (cons _%$%g4109941111%_ (cons _%$%g4109841108%_ '())))
                   _%$%g4110041113%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%$%$e4104041078%_
                                                   _%$%tgt4094541006%_)))))))))
              (_%$%loop4103541059%_ _%$%target4103241053%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4102941046%_
                                                     _%$%g4103041050%_)))))
                                          (_%$%g4102941046%_
                                           _%$%g4103041050%_)))))
                              (_%$%g4102841116%_
                               (gx#gentemps
                                (foldr (lambda (_%$%g4111941122%_
                                                _%$%g4112041125%_)
                                         (cons _%$%g4111941122%_
                                               _%$%g4112041125%_))
                                       '()
                                       _%$%tgt4094541006%_))))))))
              (_%$%loop4094040987%_ _%$%target4093740971%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4093040954%_
                                                     _%$%g4093140958%_))))
                                            (_%$%g4093040954%_
                                             _%$%g4093140958%_)))))
                                  (_%$%g4093040954%_ _%$%g4093140958%_))
                              (_%$%g4093040954%_ _%$%g4093140958%_))))
                      (_%$%g4093040954%_ _%$%g4093140958%_)))))
          (_%$%g4092941128%_ _%stx40927%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx41134%_)
        (let* ((_%__stx4582145822%_ _%$stx41134%_)
               (_%$%g4114041228%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4582145822%_))))
          (let ((_%__kont4582445825%_
                 (lambda (_%$%g4114241568%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%$%g4158441587%_
                                               _%$%g4158541590%_)
                                        (cons _%$%g4158441587%_
                                              _%$%g4158541590%_))
                                      '()
                                      _%$%g4114241568%_)))))
                (_%__kont4582845829%_
                 (lambda (_%$%g4115841478%_
                          _%$%g4115941480%_
                          _%$%g4116041481%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%$%g4150441507%_
                                                           _%$%g4150541510%_)
                                                    (cons _%$%g4150441507%_
                                                          _%$%g4150541510%_))
                                                  '()
                                                  _%$%g4115841478%_)))
                               (cons _%$%g4116041481%_
                                     (cons _%$%g4115941480%_ '()))))))
                (_%__kont4583245833%_
                 (lambda (_%$%g4118541341%_
                          _%$%g4118641343%_
                          _%$%g4118741344%_
                          _%$%g4118841345%_
                          _%$%g4118941346%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%$%g4118941346%_
                                                       (cons (foldr (lambda (_%$%g4137641381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g4137741384%_)
                              (cons _%$%g4137641381%_ _%$%g4137741384%_))
                            '()
                            _%$%g4118641343%_)
                     (foldr (lambda (_%$%g4137841387%_ _%$%g4137941390%_)
                              (cons _%$%g4137841387%_ _%$%g4137941390%_))
                            '()
                            _%$%g4118541341%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%$%g4118841345%_
                                     (cons _%$%g4118741344%_ '())))))))
            (let* ((_%__match4594245943%_
                    (lambda (_%$%e4119041235%_
                             _%$%hd4119141239%_
                             _%$%tl4119241242%_
                             _%$%e4119341245%_
                             _%$%hd4119441249%_
                             _%$%tl4119541252%_
                             _%$%e4119641255%_
                             _%$%hd4119741259%_
                             _%$%tl4119841262%_
                             _%$%e4119941265%_
                             _%$%hd4120041269%_
                             _%$%tl4120141272%_
                             _%$%e4120241275%_
                             _%$%hd4120341279%_
                             _%$%tl4120441282%_
                             _%__splice4583445835%_
                             _%$%target4120541285%_
                             _%$%tl4120741288%_)
                      (letrec ((_%$%loop4120841291%_
                                (lambda (_%$%hd4120641295%_
                                         _%$%rest4121241298%_)
                                  (if (gx#stx-pair? _%$%hd4120641295%_)
                                      (let ((_%$%e4120941300%_
                                             (gx#syntax-e _%$%hd4120641295%_)))
                                        (let ((_%$%lp-tl4121141307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4120941300%_)))
                                              (_%$%lp-hd4121041304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4120941300%_))))
                                          (_%$%loop4120841291%_
                                           _%$%lp-tl4121141307%_
                                           (cons _%$%lp-hd4121041304%_
                                                 _%$%rest4121241298%_))))
                                      (let ((_%$%rest4121341310%_
                                             (reverse _%$%rest4121241298%_)))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4119541252%_)
                                            (let ((_%__splice4583645837%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4119541252%_
                                                    '0)))
                                              (let ((_%$%tl4121641316%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4583645837%_
                                                        '1)))
                                                    (_%$%target4121441313%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4583645837%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4121641316%_)
                                                    (letrec ((_%$%loop4121741319%_
                                                              (lambda (_%$%hd4121541323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body4122141326%_)
                        (if (gx#stx-pair? _%$%hd4121541323%_)
                            (let ((_%$%e4121841328%_
                                   (gx#syntax-e _%$%hd4121541323%_)))
                              (let ((_%$%lp-tl4122041335%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4121841328%_)))
                                    (_%$%lp-hd4121941332%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4121841328%_))))
                                (_%$%loop4121741319%_
                                 _%$%lp-tl4122041335%_
                                 (cons _%$%lp-hd4121941332%_
                                       _%$%body4122141326%_))))
                            (let ((_%$%body4122241338%_
                                   (reverse _%$%body4122141326%_)))
                              (_%__kont4583245833%_
                               _%$%body4122241338%_
                               _%$%rest4121341310%_
                               _%$%hd4120341279%_
                               _%$%hd4120041269%_
                               _%$%hd4119141239%_))))))
              (_%$%loop4121741319%_ _%$%target4121441313%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4114041228%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4114041228%_))))))))
                        (_%$%loop4120841291%_ _%$%target4120541285%_ '()))))
                   (_%__match4590245903%_
                    (lambda (_%$%e4116141400%_
                             _%$%hd4116241404%_
                             _%$%tl4116341407%_
                             _%$%e4116441410%_
                             _%$%hd4116541414%_
                             _%$%tl4116641417%_
                             _%$%e4116741420%_
                             _%$%hd4116841424%_
                             _%$%tl4116941427%_
                             _%$%e4117041430%_
                             _%$%hd4117141434%_
                             _%$%tl4117241437%_
                             _%$%e4117341440%_
                             _%$%hd4117441444%_
                             _%$%tl4117541447%_
                             _%__splice4583045831%_
                             _%$%target4117641450%_
                             _%$%tl4117841453%_)
                      (letrec ((_%$%loop4117941456%_
                                (lambda (_%$%hd4117741460%_
                                         _%$%body4118341463%_)
                                  (if (gx#stx-pair? _%$%hd4117741460%_)
                                      (let ((_%$%e4118041465%_
                                             (gx#syntax-e _%$%hd4117741460%_)))
                                        (let ((_%$%lp-tl4118241472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4118041465%_)))
                                              (_%$%lp-hd4118141469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4118041465%_))))
                                          (_%$%loop4117941456%_
                                           _%$%lp-tl4118241472%_
                                           (cons _%$%lp-hd4118141469%_
                                                 _%$%body4118341463%_))))
                                      (let ((_%$%body4118441475%_
                                             (reverse _%$%body4118341463%_)))
                                        (_%__kont4582845829%_
                                         _%$%body4118441475%_
                                         _%$%hd4117441444%_
                                         _%$%hd4117141434%_))))))
                        (_%$%loop4117941456%_ _%$%target4117641450%_ '()))))
                   (_%__match4586045861%_
                    (lambda (_%$%e4114341520%_
                             _%$%hd4114441524%_
                             _%$%tl4114541527%_
                             _%$%e4114641530%_
                             _%$%hd4114741534%_
                             _%$%tl4114841537%_
                             _%__splice4582645827%_
                             _%$%target4114941540%_
                             _%$%tl4115141543%_)
                      (letrec ((_%$%loop4115241546%_
                                (lambda (_%$%hd4115041550%_
                                         _%$%body4115641553%_)
                                  (if (gx#stx-pair? _%$%hd4115041550%_)
                                      (let ((_%$%e4115341555%_
                                             (gx#syntax-e _%$%hd4115041550%_)))
                                        (let ((_%$%lp-tl4115541562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4115341555%_)))
                                              (_%$%lp-hd4115441559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4115341555%_))))
                                          (_%$%loop4115241546%_
                                           _%$%lp-tl4115541562%_
                                           (cons _%$%lp-hd4115441559%_
                                                 _%$%body4115641553%_))))
                                      (let ((_%$%body4115741565%_
                                             (reverse _%$%body4115641553%_)))
                                        (_%__kont4582445825%_
                                         _%$%body4115741565%_))))))
                        (_%$%loop4115241546%_ _%$%target4114941540%_ '())))))
              (if (gx#stx-pair? _%__stx4582145822%_)
                  (let ((_%$%e4114341520%_ (gx#syntax-e _%__stx4582145822%_)))
                    (let ((_%$%tl4114541527%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4114341520%_)))
                          (_%$%hd4114441524%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4114341520%_))))
                      (if (gx#stx-pair? _%$%tl4114541527%_)
                          (let ((_%$%e4114641530%_
                                 (gx#syntax-e _%$%tl4114541527%_)))
                            (let ((_%$%tl4114841537%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e4114641530%_)))
                                  (_%$%hd4114741534%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e4114641530%_))))
                              (if (gx#stx-null? _%$%hd4114741534%_)
                                  (if (gx#stx-pair/null? _%$%tl4114841537%_)
                                      (let ((_%__splice4582645827%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl4114841537%_
                                              '0)))
                                        (let ((_%$%tl4115141543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4582645827%_
                                                  '1)))
                                              (_%$%target4114941540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4582645827%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl4115141543%_)
                                              (_%__match4586045861%_
                                               _%$%e4114341520%_
                                               _%$%hd4114441524%_
                                               _%$%tl4114541527%_
                                               _%$%e4114641530%_
                                               _%$%hd4114741534%_
                                               _%$%tl4114841537%_
                                               _%__splice4582645827%_
                                               _%$%target4114941540%_
                                               _%$%tl4115141543%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4114041228%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4114041228%_)))
                                  (if (gx#stx-pair? _%$%hd4114741534%_)
                                      (let ((_%$%e4116741420%_
                                             (gx#syntax-e _%$%hd4114741534%_)))
                                        (let ((_%$%tl4116941427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4116741420%_)))
                                              (_%$%hd4116841424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4116741420%_))))
                                          (if (gx#stx-pair? _%$%hd4116841424%_)
                                              (let ((_%$%e4117041430%_
                                                     (gx#syntax-e
                                                      _%$%hd4116841424%_)))
                                                (let ((_%$%tl4117241437%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e4117041430%_)))
                                                      (_%$%hd4117141434%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e4117041430%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl4117241437%_)
                                                      (let ((_%$%e4117341440%_
                                                             (gx#syntax-e
                                                              _%$%tl4117241437%_)))
                                                        (let ((_%$%tl4117541447%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e4117341440%_)))
                      (_%$%hd4117441444%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e4117341440%_))))
                  (if (gx#stx-null? _%$%tl4117541447%_)
                      (if (gx#stx-null? _%$%tl4116941427%_)
                          (if (gx#stx-pair/null? _%$%tl4114841537%_)
                              (let ((_%__splice4583045831%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl4114841537%_
                                      '0)))
                                (let ((_%$%tl4117841453%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4583045831%_
                                          '1)))
                                      (_%$%target4117641450%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4583045831%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl4117841453%_)
                                      (_%__match4590245903%_
                                       _%$%e4114341520%_
                                       _%$%hd4114441524%_
                                       _%$%tl4114541527%_
                                       _%$%e4114641530%_
                                       _%$%hd4114741534%_
                                       _%$%tl4114841537%_
                                       _%$%e4116741420%_
                                       _%$%hd4116841424%_
                                       _%$%tl4116941427%_
                                       _%$%e4117041430%_
                                       _%$%hd4117141434%_
                                       _%$%tl4117241437%_
                                       _%$%e4117341440%_
                                       _%$%hd4117441444%_
                                       _%$%tl4117541447%_
                                       _%__splice4583045831%_
                                       _%$%target4117641450%_
                                       _%$%tl4117841453%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl4116941427%_)
                                          (let ((_%__splice4583445835%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl4116941427%_
                                                  '0)))
                                            (let ((_%$%tl4120741288%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4583445835%_
                                                      '1)))
                                                  (_%$%target4120541285%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4583445835%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl4120741288%_)
                                                  (_%__match4594245943%_
                                                   _%$%e4114341520%_
                                                   _%$%hd4114441524%_
                                                   _%$%tl4114541527%_
                                                   _%$%e4114641530%_
                                                   _%$%hd4114741534%_
                                                   _%$%tl4114841537%_
                                                   _%$%e4116741420%_
                                                   _%$%hd4116841424%_
                                                   _%$%tl4116941427%_
                                                   _%$%e4117041430%_
                                                   _%$%hd4117141434%_
                                                   _%$%tl4117241437%_
                                                   _%$%e4117341440%_
                                                   _%$%hd4117441444%_
                                                   _%$%tl4117541447%_
                                                   _%__splice4583445835%_
                                                   _%$%target4120541285%_
                                                   _%$%tl4120741288%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g4114041228%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g4114041228%_))))))
                              (if (gx#stx-pair/null? _%$%tl4116941427%_)
                                  (let ((_%__splice4583445835%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl4116941427%_
                                          '0)))
                                    (let ((_%$%tl4120741288%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4583445835%_
                                              '1)))
                                          (_%$%target4120541285%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4583445835%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl4120741288%_)
                                          (_%__match4594245943%_
                                           _%$%e4114341520%_
                                           _%$%hd4114441524%_
                                           _%$%tl4114541527%_
                                           _%$%e4114641530%_
                                           _%$%hd4114741534%_
                                           _%$%tl4114841537%_
                                           _%$%e4116741420%_
                                           _%$%hd4116841424%_
                                           _%$%tl4116941427%_
                                           _%$%e4117041430%_
                                           _%$%hd4117141434%_
                                           _%$%tl4117241437%_
                                           _%$%e4117341440%_
                                           _%$%hd4117441444%_
                                           _%$%tl4117541447%_
                                           _%__splice4583445835%_
                                           _%$%target4120541285%_
                                           _%$%tl4120741288%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g4114041228%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g4114041228%_))))
                          (if (gx#stx-pair/null? _%$%tl4116941427%_)
                              (let ((_%__splice4583445835%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl4116941427%_
                                      '0)))
                                (let ((_%$%tl4120741288%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4583445835%_
                                          '1)))
                                      (_%$%target4120541285%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4583445835%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl4120741288%_)
                                      (_%__match4594245943%_
                                       _%$%e4114341520%_
                                       _%$%hd4114441524%_
                                       _%$%tl4114541527%_
                                       _%$%e4114641530%_
                                       _%$%hd4114741534%_
                                       _%$%tl4114841537%_
                                       _%$%e4116741420%_
                                       _%$%hd4116841424%_
                                       _%$%tl4116941427%_
                                       _%$%e4117041430%_
                                       _%$%hd4117141434%_
                                       _%$%tl4117241437%_
                                       _%$%e4117341440%_
                                       _%$%hd4117441444%_
                                       _%$%tl4117541447%_
                                       _%__splice4583445835%_
                                       _%$%target4120541285%_
                                       _%$%tl4120741288%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4114041228%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g4114041228%_))))
                      (let () (declare (not safe)) (_%$%g4114041228%_)))))
              (let () (declare (not safe)) (_%$%g4114041228%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4114041228%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4114041228%_))))))
                          (let () (declare (not safe)) (_%$%g4114041228%_)))))
                  (let () (declare (not safe)) (_%$%g4114041228%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx41601%_)
        (let* ((_%$%g4160541629%_
                (lambda (_%$%g4160641625%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4160641625%_)))
               (_%$%g4160441712%_
                (lambda (_%$%g4160641633%_)
                  (if (gx#stx-pair? _%$%g4160641633%_)
                      (let ((_%$%e4160941636%_
                             (gx#syntax-e _%$%g4160641633%_)))
                        (let ((_%$%hd4161041640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4160941636%_)))
                              (_%$%tl4161141643%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4160941636%_))))
                          (if (gx#stx-pair? _%$%tl4161141643%_)
                              (let ((_%$%e4161241646%_
                                     (gx#syntax-e _%$%tl4161141643%_)))
                                (let ((_%$%hd4161341650%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4161241646%_)))
                                      (_%$%tl4161441653%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4161241646%_))))
                                  (if (gx#stx-pair/null? _%$%tl4161441653%_)
                                      (let ((_g46337_
                                             (gx#syntax-split-splice
                                              _%$%tl4161441653%_
                                              '0)))
                                        (begin
                                          (let ((_g46338_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46337_)
                                                       (##values-length
                                                        _g46337_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46338_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46338_)))
                                          (let ((_%$%target4161541656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46337_ 0)))
                                                (_%$%tl4161741659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46337_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4161741659%_)
                                                (letrec ((_%$%loop4161841662%_
                                                          (lambda (_%$%hd4161641666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4162241669%_)
                    (if (gx#stx-pair? _%$%hd4161641666%_)
                        (let ((_%$%e4161941671%_
                               (gx#syntax-e _%$%hd4161641666%_)))
                          (let ((_%$%lp-hd4162041675%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4161941671%_)))
                                (_%$%lp-tl4162141678%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4161941671%_))))
                            (_%$%loop4161841662%_
                             _%$%lp-tl4162141678%_
                             (cons _%$%lp-hd4162041675%_
                                   _%$%body4162241669%_))))
                        (let ((_%$%body4162341681%_
                               (reverse _%$%body4162241669%_)))
                          (if (gx#identifier? _%$%hd4161341650%_)
                              (cons (gx#datum->syntax '#f 'call/cc)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%$%hd4161341650%_
                                                            '())
                                                      (foldr (lambda (_%$%g4170341706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g4170441709%_)
                       (cons _%$%g4170341706%_ _%$%g4170441709%_))
                     '()
                     _%$%body4162341681%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (_%$%g4160541629%_ _%$%g4160641633%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4161841662%_
                                                   _%$%target4161541656%_
                                                   '()))
                                                (_%$%g4160541629%_
                                                 _%$%g4160641633%_)))))
                                      (_%$%g4160541629%_ _%$%g4160641633%_))))
                              (_%$%g4160541629%_ _%$%g4160641633%_))))
                      (_%$%g4160541629%_ _%$%g4160641633%_)))))
          (_%$%g4160441712%_ _%$stx41601%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx41717%_)
        (let* ((_%$%g4172141749%_
                (lambda (_%$%g4172241745%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4172241745%_)))
               (_%$%g4172041846%_
                (lambda (_%$%g4172241753%_)
                  (if (gx#stx-pair? _%$%g4172241753%_)
                      (let ((_%$%e4172641756%_
                             (gx#syntax-e _%$%g4172241753%_)))
                        (let ((_%$%hd4172741760%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4172641756%_)))
                              (_%$%tl4172841763%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4172641756%_))))
                          (if (gx#stx-pair? _%$%tl4172841763%_)
                              (let ((_%$%e4172941766%_
                                     (gx#syntax-e _%$%tl4172841763%_)))
                                (let ((_%$%hd4173041770%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4172941766%_)))
                                      (_%$%tl4173141773%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4172941766%_))))
                                  (if (gx#stx-pair? _%$%tl4173141773%_)
                                      (let ((_%$%e4173241776%_
                                             (gx#syntax-e _%$%tl4173141773%_)))
                                        (let ((_%$%hd4173341780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4173241776%_)))
                                              (_%$%tl4173441783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4173241776%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4173441783%_)
                                              (let ((_g46339_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4173441783%_
                                                      '0)))
                                                (begin
                                                  (let ((_g46340_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g46339_)
                                                               (##values-length
                                                                _g46339_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g46340_ 2)))
                (error "Context expects 2 values" _g46340_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4173541786%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46339_
                                                            0)))
                                                        (_%$%tl4173741789%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46339_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4173741789%_)
                                                        (letrec ((_%$%loop4173841792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4173641796%_ _%$%rest4174241799%_)
                            (if (gx#stx-pair? _%$%hd4173641796%_)
                                (let ((_%$%e4173941801%_
                                       (gx#syntax-e _%$%hd4173641796%_)))
                                  (let ((_%$%lp-hd4174041805%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4173941801%_)))
                                        (_%$%lp-tl4174141808%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4173941801%_))))
                                    (_%$%loop4173841792%_
                                     _%$%lp-tl4174141808%_
                                     (cons _%$%lp-hd4174041805%_
                                           _%$%rest4174241799%_))))
                                (let ((_%$%rest4174341811%_
                                       (reverse _%$%rest4174241799%_)))
                                  (cons (gx#datum->syntax
                                         '#f
                                         'with-unwind-protect)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%$%hd4173041770%_
                                                                '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%$%hd4173341780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr (lambda (_%$%g4183741840%_
                                              _%$%g4183841843%_)
                                       (cons _%$%g4183741840%_
                                             _%$%g4183841843%_))
                                     '()
                                     _%$%rest4174341811%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))))
                  (_%$%loop4173841792%_ _%$%target4173541786%_ '()))
                (_%$%g4172141749%_ _%$%g4172241753%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4172141749%_
                                               _%$%g4172241753%_))))
                                      (_%$%g4172141749%_ _%$%g4172241753%_))))
                              (_%$%g4172141749%_ _%$%g4172241753%_))))
                      (_%$%g4172141749%_ _%$%g4172241753%_)))))
          (_%$%g4172041846%_ _%$stx41717%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx41851%_)
        (let* ((_%$%g4185541926%_
                (lambda (_%$%g4185641922%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4185641922%_)))
               (_%$%g4185442203%_
                (lambda (_%$%g4185641930%_)
                  (if (gx#stx-pair? _%$%g4185641930%_)
                      (let ((_%$%e4186341933%_
                             (gx#syntax-e _%$%g4185641930%_)))
                        (let ((_%$%hd4186441937%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4186341933%_)))
                              (_%$%tl4186541940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4186341933%_))))
                          (if (gx#stx-pair? _%$%tl4186541940%_)
                              (let ((_%$%e4186641943%_
                                     (gx#syntax-e _%$%tl4186541940%_)))
                                (let ((_%$%hd4186741947%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4186641943%_)))
                                      (_%$%tl4186841950%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4186641943%_))))
                                  (if (gx#stx-pair/null? _%$%hd4186741947%_)
                                      (let ((_g46341_
                                             (gx#syntax-split-splice
                                              _%$%hd4186741947%_
                                              '0)))
                                        (begin
                                          (let ((_g46342_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46341_)
                                                       (##values-length
                                                        _g46341_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46342_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46342_)))
                                          (let ((_%$%target4186941953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46341_ 0)))
                                                (_%$%tl4187141956%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46341_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4187141956%_)
                                                (letrec ((_%$%loop4187241959%_
                                                          (lambda (_%$%hd4187041963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%step4187641966%_
                           _%$%init4187741967%_
                           _%$%var4187841968%_)
                    (if (gx#stx-pair? _%$%hd4187041963%_)
                        (let ((_%$%e4187341970%_
                               (gx#syntax-e _%$%hd4187041963%_)))
                          (let ((_%$%lp-hd4187441974%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4187341970%_)))
                                (_%$%lp-tl4187541977%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4187341970%_))))
                            (if (gx#stx-pair? _%$%lp-hd4187441974%_)
                                (let ((_%$%e4188241980%_
                                       (gx#syntax-e _%$%lp-hd4187441974%_)))
                                  (let ((_%$%hd4188341984%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4188241980%_)))
                                        (_%$%tl4188441987%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4188241980%_))))
                                    (if (gx#stx-pair? _%$%tl4188441987%_)
                                        (let ((_%$%e4188541990%_
                                               (gx#syntax-e
                                                _%$%tl4188441987%_)))
                                          (let ((_%$%hd4188641994%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4188541990%_)))
                                                (_%$%tl4188741997%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4188541990%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4188741997%_)
                                                (let ((_g46343_
                                                       (gx#syntax-split-splice
                                                        _%$%tl4188741997%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g46344_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g46343_)
                         (##values-length _g46343_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g46344_ 2)))
                  (error "Context expects 2 values" _g46344_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target4188842000%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g46343_
                                                              0)))
                                                          (_%$%tl4189042003%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g46343_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4189042003%_)
                                                          (letrec ((_%$%loop4189142006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd4188942010%_ _%$%step4189542013%_)
                              (if (gx#stx-pair? _%$%hd4188942010%_)
                                  (let ((_%$%e4189242015%_
                                         (gx#syntax-e _%$%hd4188942010%_)))
                                    (let ((_%$%lp-hd4189342019%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4189242015%_)))
                                          (_%$%lp-tl4189442022%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4189242015%_))))
                                      (_%$%loop4189142006%_
                                       _%$%lp-tl4189442022%_
                                       (cons _%$%lp-hd4189342019%_
                                             _%$%step4189542013%_))))
                                  (let ((_%$%step4189642025%_
                                         (reverse _%$%step4189542013%_)))
                                    (_%$%loop4187241959%_
                                     _%$%lp-tl4187541977%_
                                     (cons _%$%step4189642025%_
                                           _%$%step4187641966%_)
                                     (cons _%$%hd4188641994%_
                                           _%$%init4187741967%_)
                                     (cons _%$%hd4188341984%_
                                           _%$%var4187841968%_)))))))
                    (_%$%loop4189142006%_ _%$%target4188842000%_ '()))
                  (_%$%g4185541926%_ _%$%g4185641930%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4185541926%_
                                                 _%$%g4185641930%_))))
                                        (_%$%g4185541926%_
                                         _%$%g4185641930%_))))
                                (_%$%g4185541926%_ _%$%g4185641930%_))))
                        (let ((_%$%step4187942028%_
                               (reverse _%$%step4187641966%_))
                              (_%$%init4188042030%_
                               (reverse _%$%init4187741967%_))
                              (_%$%var4188142031%_
                               (reverse _%$%var4187841968%_)))
                          (if (gx#stx-pair? _%$%tl4186841950%_)
                              (let ((_%$%e4189742033%_
                                     (gx#syntax-e _%$%tl4186841950%_)))
                                (let ((_%$%hd4189842037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4189742033%_)))
                                      (_%$%tl4189942040%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4189742033%_))))
                                  (if (gx#stx-pair? _%$%hd4189842037%_)
                                      (let ((_%$%e4190042043%_
                                             (gx#syntax-e _%$%hd4189842037%_)))
                                        (let ((_%$%hd4190142047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4190042043%_)))
                                              (_%$%tl4190242050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4190042043%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4190242050%_)
                                              (let ((_g46345_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4190242050%_
                                                      '0)))
                                                (begin
                                                  (let ((_g46346_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g46345_)
                                                               (##values-length
                                                                _g46345_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g46346_ 2)))
                (error "Context expects 2 values" _g46346_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4190342053%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46345_
                                                            0)))
                                                        (_%$%tl4190542056%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46345_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4190542056%_)
                                                        (letrec ((_%$%loop4190642059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4190442063%_ _%$%fini4191042066%_)
                            (if (gx#stx-pair? _%$%hd4190442063%_)
                                (let ((_%$%e4190742068%_
                                       (gx#syntax-e _%$%hd4190442063%_)))
                                  (let ((_%$%lp-hd4190842072%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4190742068%_)))
                                        (_%$%lp-tl4190942075%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4190742068%_))))
                                    (_%$%loop4190642059%_
                                     _%$%lp-tl4190942075%_
                                     (cons _%$%lp-hd4190842072%_
                                           _%$%fini4191042066%_))))
                                (let ((_%$%fini4191142078%_
                                       (reverse _%$%fini4191042066%_)))
                                  (if (gx#stx-pair/null? _%$%tl4189942040%_)
                                      (let ((_g46347_
                                             (gx#syntax-split-splice
                                              _%$%tl4189942040%_
                                              '0)))
                                        (begin
                                          (let ((_g46348_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46347_)
                                                       (##values-length
                                                        _g46347_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46348_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46348_)))
                                          (let ((_%$%target4191242081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46347_ 0)))
                                                (_%$%tl4191442084%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46347_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4191442084%_)
                                                (letrec ((_%$%loop4191542087%_
                                                          (lambda (_%$%hd4191342091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4191942094%_)
                    (if (gx#stx-pair? _%$%hd4191342091%_)
                        (let ((_%$%e4191642096%_
                               (gx#syntax-e _%$%hd4191342091%_)))
                          (let ((_%$%lp-hd4191742100%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4191642096%_)))
                                (_%$%lp-tl4191842103%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4191642096%_))))
                            (_%$%loop4191542087%_
                             _%$%lp-tl4191842103%_
                             (cons _%$%lp-hd4191742100%_
                                   _%$%body4191942094%_))))
                        (let ((_%$%body4192042106%_
                               (reverse _%$%body4191942094%_)))
                          (if (gx#stx-andmap
                               gx#identifier?
                               (foldr (lambda (_%$%g4214842151%_
                                               _%$%g4214942154%_)
                                        (cons _%$%g4214842151%_
                                              _%$%g4214942154%_))
                                      '()
                                      _%$%var4188142031%_))
                              (cons (gx#datum->syntax '#f 'let)
                                    (cons (gx#datum->syntax '#f '$loop)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%init4188042030%_
                                                   _%$%var4188142031%_)
                                                  (foldr (lambda (_%$%g4215642169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4215742172%_
                          _%$%g4215842174%_)
                   (cons (cons _%$%g4215742172%_ (cons _%$%g4215642169%_ '()))
                         _%$%g4215842174%_))
                 '()
                 _%$%init4188042030%_
                 _%$%var4188142031%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%$%hd4190142047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (cons '#!void
                                            (foldr (lambda (_%$%g4215942177%_
                                                            _%$%g4216042180%_)
                                                     (cons _%$%g4215942177%_
                                                           _%$%g4216042180%_))
                                                   '()
                                                   _%$%fini4191142078%_)))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%$%g4216142183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4216242186%_)
                   (cons _%$%g4216142183%_ _%$%g4216242186%_))
                 (cons (cons (gx#datum->syntax '#f '$loop)
                             (begin
                               (gx#syntax-check-splice-targets
                                _%$%step4187942028%_
                                _%$%var4188142031%_)
                               (foldr (lambda (_%$%g4216342189%_
                                               _%$%g4216442192%_
                                               _%$%g4216542194%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%$%g4216442192%_
                                                          (foldr (lambda (_%$%g4216642197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%$%g4216742200%_)
                           (cons _%$%g4216642197%_ _%$%g4216742200%_))
                         '()
                         _%$%g4216342189%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%$%g4216542194%_))
                                      '()
                                      _%$%step4187942028%_
                                      _%$%var4188142031%_)))
                       '())
                 _%$%body4192042106%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g4185541926%_ _%$%g4185641930%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4191542087%_
                                                   _%$%target4191242081%_
                                                   '()))
                                                (_%$%g4185541926%_
                                                 _%$%g4185641930%_)))))
                                      (_%$%g4185541926%_
                                       _%$%g4185641930%_)))))))
                  (_%$%loop4190642059%_ _%$%target4190342053%_ '()))
                (_%$%g4185541926%_ _%$%g4185641930%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4185541926%_
                                               _%$%g4185641930%_))))
                                      (_%$%g4185541926%_ _%$%g4185641930%_))))
                              (_%$%g4185541926%_ _%$%g4185641930%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4187241959%_
                                                   _%$%target4186941953%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%$%g4185541926%_
                                                 _%$%g4185641930%_)))))
                                      (_%$%g4185541926%_ _%$%g4185641930%_))))
                              (_%$%g4185541926%_ _%$%g4185641930%_))))
                      (_%$%g4185541926%_ _%$%g4185641930%_)))))
          (_%$%g4185442203%_ _%$stx41851%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx42211%_)
        (let* ((_%$%g4221542286%_
                (lambda (_%$%g4221642282%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4221642282%_)))
               (_%$%g4221442563%_
                (lambda (_%$%g4221642290%_)
                  (if (gx#stx-pair? _%$%g4221642290%_)
                      (let ((_%$%e4222342293%_
                             (gx#syntax-e _%$%g4221642290%_)))
                        (let ((_%$%hd4222442297%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4222342293%_)))
                              (_%$%tl4222542300%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4222342293%_))))
                          (if (gx#stx-pair? _%$%tl4222542300%_)
                              (let ((_%$%e4222642303%_
                                     (gx#syntax-e _%$%tl4222542300%_)))
                                (let ((_%$%hd4222742307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4222642303%_)))
                                      (_%$%tl4222842310%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4222642303%_))))
                                  (if (gx#stx-pair/null? _%$%hd4222742307%_)
                                      (let ((_g46349_
                                             (gx#syntax-split-splice
                                              _%$%hd4222742307%_
                                              '0)))
                                        (begin
                                          (let ((_g46350_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46349_)
                                                       (##values-length
                                                        _g46349_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46350_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46350_)))
                                          (let ((_%$%target4222942313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46349_ 0)))
                                                (_%$%tl4223142316%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46349_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4223142316%_)
                                                (letrec ((_%$%loop4223242319%_
                                                          (lambda (_%$%hd4223042323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%step4223642326%_
                           _%$%init4223742327%_
                           _%$%var4223842328%_)
                    (if (gx#stx-pair? _%$%hd4223042323%_)
                        (let ((_%$%e4223342330%_
                               (gx#syntax-e _%$%hd4223042323%_)))
                          (let ((_%$%lp-hd4223442334%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4223342330%_)))
                                (_%$%lp-tl4223542337%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4223342330%_))))
                            (if (gx#stx-pair? _%$%lp-hd4223442334%_)
                                (let ((_%$%e4224242340%_
                                       (gx#syntax-e _%$%lp-hd4223442334%_)))
                                  (let ((_%$%hd4224342344%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4224242340%_)))
                                        (_%$%tl4224442347%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4224242340%_))))
                                    (if (gx#stx-pair? _%$%tl4224442347%_)
                                        (let ((_%$%e4224542350%_
                                               (gx#syntax-e
                                                _%$%tl4224442347%_)))
                                          (let ((_%$%hd4224642354%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4224542350%_)))
                                                (_%$%tl4224742357%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4224542350%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4224742357%_)
                                                (let ((_g46351_
                                                       (gx#syntax-split-splice
                                                        _%$%tl4224742357%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g46352_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g46351_)
                         (##values-length _g46351_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g46352_ 2)))
                  (error "Context expects 2 values" _g46352_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target4224842360%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g46351_
                                                              0)))
                                                          (_%$%tl4225042363%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g46351_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4225042363%_)
                                                          (letrec ((_%$%loop4225142366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd4224942370%_ _%$%step4225542373%_)
                              (if (gx#stx-pair? _%$%hd4224942370%_)
                                  (let ((_%$%e4225242375%_
                                         (gx#syntax-e _%$%hd4224942370%_)))
                                    (let ((_%$%lp-hd4225342379%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4225242375%_)))
                                          (_%$%lp-tl4225442382%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4225242375%_))))
                                      (_%$%loop4225142366%_
                                       _%$%lp-tl4225442382%_
                                       (cons _%$%lp-hd4225342379%_
                                             _%$%step4225542373%_))))
                                  (let ((_%$%step4225642385%_
                                         (reverse _%$%step4225542373%_)))
                                    (_%$%loop4223242319%_
                                     _%$%lp-tl4223542337%_
                                     (cons _%$%step4225642385%_
                                           _%$%step4223642326%_)
                                     (cons _%$%hd4224642354%_
                                           _%$%init4223742327%_)
                                     (cons _%$%hd4224342344%_
                                           _%$%var4223842328%_)))))))
                    (_%$%loop4225142366%_ _%$%target4224842360%_ '()))
                  (_%$%g4221542286%_ _%$%g4221642290%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4221542286%_
                                                 _%$%g4221642290%_))))
                                        (_%$%g4221542286%_
                                         _%$%g4221642290%_))))
                                (_%$%g4221542286%_ _%$%g4221642290%_))))
                        (let ((_%$%step4223942388%_
                               (reverse _%$%step4223642326%_))
                              (_%$%init4224042390%_
                               (reverse _%$%init4223742327%_))
                              (_%$%var4224142391%_
                               (reverse _%$%var4223842328%_)))
                          (if (gx#stx-pair? _%$%tl4222842310%_)
                              (let ((_%$%e4225742393%_
                                     (gx#syntax-e _%$%tl4222842310%_)))
                                (let ((_%$%hd4225842397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4225742393%_)))
                                      (_%$%tl4225942400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4225742393%_))))
                                  (if (gx#stx-pair? _%$%hd4225842397%_)
                                      (let ((_%$%e4226042403%_
                                             (gx#syntax-e _%$%hd4225842397%_)))
                                        (let ((_%$%hd4226142407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4226042403%_)))
                                              (_%$%tl4226242410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4226042403%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4226242410%_)
                                              (let ((_g46353_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4226242410%_
                                                      '0)))
                                                (begin
                                                  (let ((_g46354_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g46353_)
                                                               (##values-length
                                                                _g46353_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g46354_ 2)))
                (error "Context expects 2 values" _g46354_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4226342413%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46353_
                                                            0)))
                                                        (_%$%tl4226542416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46353_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4226542416%_)
                                                        (letrec ((_%$%loop4226642419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4226442423%_ _%$%fini4227042426%_)
                            (if (gx#stx-pair? _%$%hd4226442423%_)
                                (let ((_%$%e4226742428%_
                                       (gx#syntax-e _%$%hd4226442423%_)))
                                  (let ((_%$%lp-hd4226842432%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4226742428%_)))
                                        (_%$%lp-tl4226942435%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4226742428%_))))
                                    (_%$%loop4226642419%_
                                     _%$%lp-tl4226942435%_
                                     (cons _%$%lp-hd4226842432%_
                                           _%$%fini4227042426%_))))
                                (let ((_%$%fini4227142438%_
                                       (reverse _%$%fini4227042426%_)))
                                  (if (gx#stx-pair/null? _%$%tl4225942400%_)
                                      (let ((_g46355_
                                             (gx#syntax-split-splice
                                              _%$%tl4225942400%_
                                              '0)))
                                        (begin
                                          (let ((_g46356_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46355_)
                                                       (##values-length
                                                        _g46355_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46356_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46356_)))
                                          (let ((_%$%target4227242441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46355_ 0)))
                                                (_%$%tl4227442444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46355_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4227442444%_)
                                                (letrec ((_%$%loop4227542447%_
                                                          (lambda (_%$%hd4227342451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4227942454%_)
                    (if (gx#stx-pair? _%$%hd4227342451%_)
                        (let ((_%$%e4227642456%_
                               (gx#syntax-e _%$%hd4227342451%_)))
                          (let ((_%$%lp-hd4227742460%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4227642456%_)))
                                (_%$%lp-tl4227842463%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4227642456%_))))
                            (_%$%loop4227542447%_
                             _%$%lp-tl4227842463%_
                             (cons _%$%lp-hd4227742460%_
                                   _%$%body4227942454%_))))
                        (let ((_%$%body4228042466%_
                               (reverse _%$%body4227942454%_)))
                          (if (gx#stx-andmap
                               gx#identifier?
                               (foldr (lambda (_%$%g4250842511%_
                                               _%$%g4250942514%_)
                                        (cons _%$%g4250842511%_
                                              _%$%g4250942514%_))
                                      '()
                                      _%$%var4224142391%_))
                              (cons (gx#datum->syntax '#f 'let)
                                    (cons (gx#datum->syntax '#f '$loop)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%init4224042390%_
                                                   _%$%var4224142391%_)
                                                  (foldr (lambda (_%$%g4251642529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4251742532%_
                          _%$%g4251842534%_)
                   (cons (cons _%$%g4251742532%_ (cons _%$%g4251642529%_ '()))
                         _%$%g4251842534%_))
                 '()
                 _%$%init4224042390%_
                 _%$%var4224142391%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (foldr (lambda (_%$%g4251942537%_
                                                                _%$%g4252042540%_)
                                                         (cons _%$%g4251942537%_
                                                               _%$%g4252042540%_))
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'if)
                           (cons _%$%hd4226142407%_
                                 (cons (cons (gx#datum->syntax '#f '$loop)
                                             (begin
                                               (gx#syntax-check-splice-targets
                                                _%$%step4223942388%_
                                                _%$%var4224142391%_)
                                               (foldr (lambda (_%$%g4252142543%_
                                                               _%$%g4252242546%_
                                                               _%$%g4252342548%_)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin)
                            (cons _%$%g4252242546%_
                                  (foldr (lambda (_%$%g4252442551%_
                                                  _%$%g4252542554%_)
                                           (cons _%$%g4252442551%_
                                                 _%$%g4252542554%_))
                                         '()
                                         _%$%g4252142543%_)))
                      _%$%g4252342548%_))
              '()
              _%$%step4223942388%_
              _%$%var4224142391%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'begin)
                                                   (cons '#!void
                                                         (foldr (lambda (_%$%g4252642557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g4252742560%_)
                          (cons _%$%g4252642557%_ _%$%g4252742560%_))
                        '()
                        _%$%fini4227142438%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                     '())
               _%$%body4228042466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g4221542286%_ _%$%g4221642290%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4227542447%_
                                                   _%$%target4227242441%_
                                                   '()))
                                                (_%$%g4221542286%_
                                                 _%$%g4221642290%_)))))
                                      (_%$%g4221542286%_
                                       _%$%g4221642290%_)))))))
                  (_%$%loop4226642419%_ _%$%target4226342413%_ '()))
                (_%$%g4221542286%_ _%$%g4221642290%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4221542286%_
                                               _%$%g4221642290%_))))
                                      (_%$%g4221542286%_ _%$%g4221642290%_))))
                              (_%$%g4221542286%_ _%$%g4221642290%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4223242319%_
                                                   _%$%target4222942313%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%$%g4221542286%_
                                                 _%$%g4221642290%_)))))
                                      (_%$%g4221542286%_ _%$%g4221642290%_))))
                              (_%$%g4221542286%_ _%$%g4221642290%_))))
                      (_%$%g4221542286%_ _%$%g4221642290%_)))))
          (_%$%g4221442563%_ _%$stx42211%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx42571%_)
        (let* ((_%$%g4257542599%_
                (lambda (_%$%g4257642595%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4257642595%_)))
               (_%$%g4257442682%_
                (lambda (_%$%g4257642603%_)
                  (if (gx#stx-pair? _%$%g4257642603%_)
                      (let ((_%$%e4257942606%_
                             (gx#syntax-e _%$%g4257642603%_)))
                        (let ((_%$%hd4258042610%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4257942606%_)))
                              (_%$%tl4258142613%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4257942606%_))))
                          (if (gx#stx-pair? _%$%tl4258142613%_)
                              (let ((_%$%e4258242616%_
                                     (gx#syntax-e _%$%tl4258142613%_)))
                                (let ((_%$%hd4258342620%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4258242616%_)))
                                      (_%$%tl4258442623%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4258242616%_))))
                                  (if (gx#stx-pair/null? _%$%tl4258442623%_)
                                      (let ((_g46357_
                                             (gx#syntax-split-splice
                                              _%$%tl4258442623%_
                                              '0)))
                                        (begin
                                          (let ((_g46358_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46357_)
                                                       (##values-length
                                                        _g46357_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46358_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46358_)))
                                          (let ((_%$%target4258542626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46357_ 0)))
                                                (_%$%tl4258742629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46357_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4258742629%_)
                                                (letrec ((_%$%loop4258842632%_
                                                          (lambda (_%$%hd4258642636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4259242639%_)
                    (if (gx#stx-pair? _%$%hd4258642636%_)
                        (let ((_%$%e4258942641%_
                               (gx#syntax-e _%$%hd4258642636%_)))
                          (let ((_%$%lp-hd4259042645%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4258942641%_)))
                                (_%$%lp-tl4259142648%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4258942641%_))))
                            (_%$%loop4258842632%_
                             _%$%lp-tl4259142648%_
                             (cons _%$%lp-hd4259042645%_
                                   _%$%body4259242639%_))))
                        (let ((_%$%body4259342651%_
                               (reverse _%$%body4259242639%_)))
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (gx#datum->syntax '#f 'lp)
                                      (cons '()
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'when)
                                                        (cons _%$%hd4258342620%_
                                                              (foldr (lambda (_%$%g4267342676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%$%g4267442679%_)
                               (cons _%$%g4267342676%_ _%$%g4267442679%_))
                             (cons (cons (gx#datum->syntax '#f 'lp) '()) '())
                             _%$%body4259342651%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4258842632%_
                                                   _%$%target4258542626%_
                                                   '()))
                                                (_%$%g4257542599%_
                                                 _%$%g4257642603%_)))))
                                      (_%$%g4257542599%_ _%$%g4257642603%_))))
                              (_%$%g4257542599%_ _%$%g4257642603%_))))
                      (_%$%g4257542599%_ _%$%g4257642603%_)))))
          (_%$%g4257442682%_ _%$stx42571%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx42687%_)
        (let* ((_%$%g4269142715%_
                (lambda (_%$%g4269242711%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4269242711%_)))
               (_%$%g4269042798%_
                (lambda (_%$%g4269242719%_)
                  (if (gx#stx-pair? _%$%g4269242719%_)
                      (let ((_%$%e4269542722%_
                             (gx#syntax-e _%$%g4269242719%_)))
                        (let ((_%$%hd4269642726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4269542722%_)))
                              (_%$%tl4269742729%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4269542722%_))))
                          (if (gx#stx-pair? _%$%tl4269742729%_)
                              (let ((_%$%e4269842732%_
                                     (gx#syntax-e _%$%tl4269742729%_)))
                                (let ((_%$%hd4269942736%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4269842732%_)))
                                      (_%$%tl4270042739%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4269842732%_))))
                                  (if (gx#stx-pair/null? _%$%tl4270042739%_)
                                      (let ((_g46359_
                                             (gx#syntax-split-splice
                                              _%$%tl4270042739%_
                                              '0)))
                                        (begin
                                          (let ((_g46360_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46359_)
                                                       (##values-length
                                                        _g46359_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46360_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46360_)))
                                          (let ((_%$%target4270142742%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46359_ 0)))
                                                (_%$%tl4270342745%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46359_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4270342745%_)
                                                (letrec ((_%$%loop4270442748%_
                                                          (lambda (_%$%hd4270242752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4270842755%_)
                    (if (gx#stx-pair? _%$%hd4270242752%_)
                        (let ((_%$%e4270542757%_
                               (gx#syntax-e _%$%hd4270242752%_)))
                          (let ((_%$%lp-hd4270642761%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4270542757%_)))
                                (_%$%lp-tl4270742764%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4270542757%_))))
                            (_%$%loop4270442748%_
                             _%$%lp-tl4270742764%_
                             (cons _%$%lp-hd4270642761%_
                                   _%$%body4270842755%_))))
                        (let ((_%$%body4270942767%_
                               (reverse _%$%body4270842755%_)))
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (gx#datum->syntax '#f 'lp)
                                      (cons '()
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'unless)
                                                        (cons _%$%hd4269942736%_
                                                              (foldr (lambda (_%$%g4278942792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%$%g4279042795%_)
                               (cons _%$%g4278942792%_ _%$%g4279042795%_))
                             (cons (cons (gx#datum->syntax '#f 'lp) '()) '())
                             _%$%body4270942767%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4270442748%_
                                                   _%$%target4270142742%_
                                                   '()))
                                                (_%$%g4269142715%_
                                                 _%$%g4269242719%_)))))
                                      (_%$%g4269142715%_ _%$%g4269242719%_))))
                              (_%$%g4269142715%_ _%$%g4269242719%_))))
                      (_%$%g4269142715%_ _%$%g4269242719%_)))))
          (_%$%g4269042798%_ _%$stx42687%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx42803%_)
        (let ((_%$%g4280642813%_
               (lambda (_%$%g4280742809%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4280742809%_))))
          (_%$%g4280642813%_ _%$stx42803%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx42817%_)
        (let ((_%$%g4282042827%_
               (lambda (_%$%g4282142823%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4282142823%_))))
          (_%$%g4282042827%_ _%$stx42817%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx42831%_)
        (letrec ((_%generate-thunk42834%_
                  (lambda (_%body44153%_)
                    (if (null? _%body44153%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx42831%_)
                        (let* ((_%$%g4415644173%_
                                (lambda (_%$%g4415744169%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g4415744169%_)))
                               (_%$%g4415544232%_
                                (lambda (_%$%g4415744177%_)
                                  (if (gx#stx-pair/null? _%$%g4415744177%_)
                                      (let ((_g46361_
                                             (gx#syntax-split-splice
                                              _%$%g4415744177%_
                                              '0)))
                                        (begin
                                          (let ((_g46362_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46361_)
                                                       (##values-length
                                                        _g46361_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46362_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46362_)))
                                          (let ((_%$%target4415944180%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46361_ 0)))
                                                (_%$%tl4416144183%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46361_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4416144183%_)
                                                (letrec ((_%$%loop4416244186%_
                                                          (lambda (_%$%hd4416044190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%e4416644193%_)
                    (if (gx#stx-pair? _%$%hd4416044190%_)
                        (let ((_%$%e4416344195%_
                               (gx#syntax-e _%$%hd4416044190%_)))
                          (let ((_%$%lp-hd4416444199%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4416344195%_)))
                                (_%$%lp-tl4416544202%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4416344195%_))))
                            (_%$%loop4416244186%_
                             _%$%lp-tl4416544202%_
                             (cons _%$%lp-hd4416444199%_ _%$%e4416644193%_))))
                        (let ((_%$%e4416744205%_ (reverse _%$%e4416644193%_)))
                          (cons (gx#datum->syntax '#f 'lambda)
                                (cons '()
                                      (foldr (lambda (_%$%g4422344226%_
                                                      _%$%g4422444229%_)
                                               (cons _%$%g4422344226%_
                                                     _%$%g4422444229%_))
                                             '()
                                             _%$%e4416744205%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4416244186%_
                                                   _%$%target4415944180%_
                                                   '()))
                                                (_%$%g4415644173%_
                                                 _%$%g4415744177%_)))))
                                      (_%$%g4415644173%_ _%$%g4415744177%_)))))
                          (_%$%g4415544232%_ (reverse _%body44153%_))))))
                 (_%generate-fini42836%_
                  (lambda (_%thunk44036%_ _%fini44038%_)
                    (let* ((_%$%g4404044064%_
                            (lambda (_%$%g4404144060%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g4404144060%_)))
                           (_%$%g4403944149%_
                            (lambda (_%$%g4404144068%_)
                              (if (gx#stx-pair? _%$%g4404144068%_)
                                  (let ((_%$%e4404444071%_
                                         (gx#syntax-e _%$%g4404144068%_)))
                                    (let ((_%$%hd4404544075%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4404444071%_)))
                                          (_%$%tl4404644078%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4404444071%_))))
                                      (if (gx#stx-pair? _%$%tl4404644078%_)
                                          (let ((_%$%e4404744081%_
                                                 (gx#syntax-e
                                                  _%$%tl4404644078%_)))
                                            (let ((_%$%hd4404844085%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4404744081%_)))
                                                  (_%$%tl4404944088%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4404744081%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd4404844085%_)
                                                  (let ((_g46363_
                                                         (gx#syntax-split-splice
                                                          _%$%hd4404844085%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g46364_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g46363_)
                           (##values-length _g46363_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g46364_ 2)))
                    (error "Context expects 2 values" _g46364_)))
              (let ((_%$%target4405044091%_
                     (let () (declare (not safe)) (##values-ref _g46363_ 0)))
                    (_%$%tl4405244094%_
                     (let () (declare (not safe)) (##values-ref _g46363_ 1))))
                (if (gx#stx-null? _%$%tl4405244094%_)
                    (letrec ((_%$%loop4405344097%_
                              (lambda (_%$%hd4405144101%_ _%$%e4405744104%_)
                                (if (gx#stx-pair? _%$%hd4405144101%_)
                                    (let ((_%$%e4405444106%_
                                           (gx#syntax-e _%$%hd4405144101%_)))
                                      (let ((_%$%lp-hd4405544110%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4405444106%_)))
                                            (_%$%lp-tl4405644113%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4405444106%_))))
                                        (_%$%loop4405344097%_
                                         _%$%lp-tl4405644113%_
                                         (cons _%$%lp-hd4405544110%_
                                               _%$%e4405744104%_))))
                                    (let ((_%$%e4405844116%_
                                           (reverse _%$%e4405744104%_)))
                                      (if (gx#stx-null? _%$%tl4404944088%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'with-unwind-protect)
                                                (cons _%$%hd4404544075%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '()
                                (foldr (lambda (_%$%g4414044143%_
                                                _%$%g4414144146%_)
                                         (cons _%$%g4414044143%_
                                               _%$%g4414144146%_))
                                       '()
                                       _%$%e4405844116%_)))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g4404044064%_
                                           _%$%g4404144068%_)))))))
                      (_%$%loop4405344097%_ _%$%target4405044091%_ '()))
                    (_%$%g4404044064%_ _%$%g4404144068%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4404044064%_
                                                   _%$%g4404144068%_))))
                                          (_%$%g4404044064%_
                                           _%$%g4404144068%_))))
                                  (_%$%g4404044064%_ _%$%g4404144068%_)))))
                      (_%$%g4403944149%_
                       (list _%thunk44036%_ _%fini44038%_)))))
                 (_%generate-catch42837%_
                  (lambda (_%handlers43451%_ _%thunk43453%_)
                    (let* ((_%$%g4345543463%_
                            (lambda (_%$%g4345643459%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g4345643459%_)))
                           (_%$%g4345444032%_
                            (lambda (_%$%g4345643467%_)
                              (let _%lp43482%_ ((_%rest43485%_
                                                 _%handlers43451%_)
                                                (_%clauses43487%_ '()))
                                (let* ((_%$%rest4348843496%_ _%rest43485%_)
                                       (_%$%else4349043627%_
                                        (lambda ()
                                          (let* ((_%$%g4350843532%_
                                                  (lambda (_%$%g4350943528%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g4350943528%_)))
                                                 (_%$%g4350743623%_
                                                  (lambda (_%$%g4350943536%_)
                                                    (if (gx#stx-pair?
                                                         _%$%g4350943536%_)
                                                        (let ((_%$%e4351243539%_
                                                               (gx#syntax-e
                                                                _%$%g4350943536%_)))
                                                          (let ((_%$%hd4351343543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4351243539%_)))
                        (_%$%tl4351443546%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4351243539%_))))
                    (if (gx#stx-pair/null? _%$%hd4351343543%_)
                        (let ((_g46365_
                               (gx#syntax-split-splice _%$%hd4351343543%_ '0)))
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
                                  (error "Context expects 2 values" _g46366_)))
                            (let ((_%$%target4351543549%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g46365_ 0)))
                                  (_%$%tl4351743552%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g46365_ 1))))
                              (if (gx#stx-null? _%$%tl4351743552%_)
                                  (letrec ((_%$%loop4351843555%_
                                            (lambda (_%$%hd4351643559%_
                                                     _%$%clause4352243562%_)
                                              (if (gx#stx-pair?
                                                   _%$%hd4351643559%_)
                                                  (let ((_%$%e4351943564%_
                                                         (gx#syntax-e
                                                          _%$%hd4351643559%_)))
                                                    (let ((_%$%lp-hd4352043568%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e4351943564%_)))
                                                          (_%$%lp-tl4352143571%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e4351943564%_))))
                                                      (_%$%loop4351843555%_
                                                       _%$%lp-tl4352143571%_
                                                       (cons _%$%lp-hd4352043568%_
                                                             _%$%clause4352243562%_))))
                                                  (let ((_%$%clause4352343574%_
                                                         (reverse _%$%clause4352243562%_)))
                                                    (if (gx#stx-pair?
                                                         _%$%tl4351443546%_)
                                                        (let ((_%$%e4352443577%_
                                                               (gx#syntax-e
                                                                _%$%tl4351443546%_)))
                                                          (let ((_%$%hd4352543581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4352443577%_)))
                        (_%$%tl4352643584%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4352443577%_))))
                    (if (gx#stx-null? _%$%tl4352643584%_)
                        (cons (gx#datum->syntax '#f 'with-catch)
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons (cons _%$%g4345643467%_ '())
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'cond)
                                                            (foldr (lambda (_%$%g4361443617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%$%g4361543620%_)
                             (cons _%$%g4361443617%_ _%$%g4361543620%_))
                           (cons (cons (gx#datum->syntax '#f 'else)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'raise)
                                                   (cons _%$%g4345643467%_
                                                         '()))
                                             '()))
                                 '())
                           _%$%clause4352343574%_))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons _%$%hd4352543581%_ '())))
                        (_%$%g4350843532%_ _%$%g4350943536%_))))
                (_%$%g4350843532%_ _%$%g4350943536%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop4351843555%_
                                     _%$%target4351543549%_
                                     '()))
                                  (_%$%g4350843532%_ _%$%g4350943536%_)))))
                        (_%$%g4350843532%_ _%$%g4350943536%_))))
                (_%$%g4350843532%_ _%$%g4350943536%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g4350743623%_
                                             (list _%clauses43487%_
                                                   _%thunk43453%_)))))
                                       (_%$%K4349244016%_
                                        (lambda (_%rest43631%_ _%hd43633%_)
                                          (let* ((_%__stx4594545946%_
                                                  _%hd43633%_)
                                                 (_%$%g4363843708%_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%__stx4594545946%_))))
                                            (let ((_%__kont4594845949%_
                                                   (lambda (_%$%g4364043995%_
                                                            _%$%g4364143997%_)
                                                     (_%lp43482%_
                                                      _%rest43631%_
                                                      (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '#f
                                       '?)
                                      (cons _%$%g4364143997%_ '()))
                                (cons _%$%g4345643467%_ '()))
                          (cons (gx#datum->syntax '#f '=>)
                                (cons _%$%g4364043995%_ '())))
                    _%clauses43487%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4595045951%_
                                                   (lambda (_%$%g4365143927%_
                                                            _%$%g4365243929%_
                                                            _%$%g4365343930%_)
                                                     (_%lp43482%_
                                                      _%rest43631%_
                                                      (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '#f
                                       '?)
                                      (cons _%$%g4365343930%_ '()))
                                (cons _%$%g4345643467%_ '()))
                          (cons (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _%$%g4365243929%_
                                                        (cons _%$%g4345643467%_
                                                              '()))
                                                  '())
                                            (foldr (lambda (_%$%g4394943952%_
                                                            _%$%g4395043955%_)
                                                     (cons _%$%g4394943952%_
                                                           _%$%g4395043955%_))
                                                   '()
                                                   _%$%g4365143927%_)))
                                '()))
                    _%clauses43487%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4595445955%_
                                                   (lambda (_%$%g4367243835%_
                                                            _%$%g4367343837%_)
                                                     (_%lp43482%_
                                                      _%rest43631%_
                                                      (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _%$%g4367343837%_
                                                        (cons _%$%g4345643467%_
                                                              '()))
                                                  '())
                                            (foldr (lambda (_%$%g4385343856%_
                                                            _%$%g4385443859%_)
                                                     (cons _%$%g4385343856%_
                                                           _%$%g4385443859%_))
                                                   '()
                                                   _%$%g4367243835%_)))
                                '()))
                    _%clauses43487%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4595845959%_
                                                   (lambda (_%$%g4368943753%_
                                                            _%$%g4369043755%_)
                                                     (_%lp43482%_
                                                      _%rest43631%_
                                                      (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (foldr (lambda (_%$%g4377143774%_
                                                      _%$%g4377243777%_)
                                               (cons _%$%g4377143774%_
                                                     _%$%g4377243777%_))
                                             '()
                                             _%$%g4368943753%_))
                                '()))
                    _%clauses43487%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let* ((_%__match4605046051%_
                                                      (lambda (_%$%e4369143715%_
                                                               _%$%hd4369243719%_
                                                               _%$%tl4369343722%_
                                                               _%__splice4596045961%_
                                                               _%$%target4369443725%_
                                                               _%$%tl4369643728%_)
                                                        (letrec ((_%$%loop4369743731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4369543735%_ _%$%body4370143738%_)
                            (if (gx#stx-pair? _%$%hd4369543735%_)
                                (let ((_%$%e4369843740%_
                                       (gx#syntax-e _%$%hd4369543735%_)))
                                  (let ((_%$%lp-tl4370043747%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4369843740%_)))
                                        (_%$%lp-hd4369943744%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4369843740%_))))
                                    (_%$%loop4369743731%_
                                     _%$%lp-tl4370043747%_
                                     (cons _%$%lp-hd4369943744%_
                                           _%$%body4370143738%_))))
                                (let ((_%$%body4370243750%_
                                       (reverse _%$%body4370143738%_)))
                                  (let ((_%$%g4368943753%_
                                         _%$%body4370243750%_)
                                        (_%$%g4369043755%_ _%$%hd4369243719%_))
                                    (if (gx#underscore? _%$%g4369043755%_)
                                        (_%__kont4595845959%_
                                         _%$%g4368943753%_
                                         _%$%g4369043755%_)
                                        (_%$%g4363843708%_))))))))
                  (_%$%loop4369743731%_ _%$%target4369443725%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__match4603646037%_
                                                      (lambda (_%$%e4367443787%_
                                                               _%$%hd4367543791%_
                                                               _%$%tl4367643794%_
                                                               _%$%e4367743797%_
                                                               _%$%hd4367843801%_
                                                               _%$%tl4367943804%_
                                                               _%__splice4595645957%_
                                                               _%$%target4368043807%_
                                                               _%$%tl4368243810%_)
                                                        (letrec ((_%$%loop4368343813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4368143817%_ _%$%body4368743820%_)
                            (if (gx#stx-pair? _%$%hd4368143817%_)
                                (let ((_%$%e4368443822%_
                                       (gx#syntax-e _%$%hd4368143817%_)))
                                  (let ((_%$%lp-tl4368643829%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4368443822%_)))
                                        (_%$%lp-hd4368543826%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4368443822%_))))
                                    (_%$%loop4368343813%_
                                     _%$%lp-tl4368643829%_
                                     (cons _%$%lp-hd4368543826%_
                                           _%$%body4368743820%_))))
                                (let ((_%$%body4368843832%_
                                       (reverse _%$%body4368743820%_)))
                                  (let ((_%$%g4367243835%_
                                         _%$%body4368843832%_)
                                        (_%$%g4367343837%_ _%$%hd4367843801%_))
                                    (if (gx#identifier? _%$%g4367343837%_)
                                        (_%__kont4595445955%_
                                         _%$%g4367243835%_
                                         _%$%g4367343837%_)
                                        (_%__match4605046051%_
                                         _%$%e4367443787%_
                                         _%$%hd4367543791%_
                                         _%$%tl4367643794%_
                                         _%__splice4595645957%_
                                         _%$%target4368043807%_
                                         _%$%tl4368243810%_))))))))
                  (_%$%loop4368343813%_ _%$%target4368043807%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__match4601446015%_
                                                      (lambda (_%$%e4365443869%_
                                                               _%$%hd4365543873%_
                                                               _%$%tl4365643876%_
                                                               _%$%e4365743879%_
                                                               _%$%hd4365843883%_
                                                               _%$%tl4365943886%_
                                                               _%$%e4366043889%_
                                                               _%$%hd4366143893%_
                                                               _%$%tl4366243896%_
                                                               _%__splice4595245953%_
                                                               _%$%target4366343899%_
                                                               _%$%tl4366543902%_)
                                                        (letrec ((_%$%loop4366643905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4366443909%_ _%$%body4367043912%_)
                            (if (gx#stx-pair? _%$%hd4366443909%_)
                                (let ((_%$%e4366743914%_
                                       (gx#syntax-e _%$%hd4366443909%_)))
                                  (let ((_%$%lp-tl4366943921%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4366743914%_)))
                                        (_%$%lp-hd4366843918%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4366743914%_))))
                                    (_%$%loop4366643905%_
                                     _%$%lp-tl4366943921%_
                                     (cons _%$%lp-hd4366843918%_
                                           _%$%body4367043912%_))))
                                (let ((_%$%body4367143924%_
                                       (reverse _%$%body4367043912%_)))
                                  (let ((_%$%g4365143927%_
                                         _%$%body4367143924%_)
                                        (_%$%g4365243929%_ _%$%hd4366143893%_)
                                        (_%$%g4365343930%_ _%$%hd4365843883%_))
                                    (if (gx#identifier? _%$%g4365243929%_)
                                        (_%__kont4595045951%_
                                         _%$%g4365143927%_
                                         _%$%g4365243929%_
                                         _%$%g4365343930%_)
                                        (_%__match4605046051%_
                                         _%$%e4365443869%_
                                         _%$%hd4365543873%_
                                         _%$%tl4365643876%_
                                         _%__splice4595245953%_
                                         _%$%target4366343899%_
                                         _%$%tl4366543902%_))))))))
                  (_%$%loop4366643905%_ _%$%target4366343899%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx4594545946%_)
                                                    (let ((_%$%e4364243965%_
                                                           (gx#syntax-e
                                                            _%__stx4594545946%_)))
                                                      (let ((_%$%tl4364443972%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e4364243965%_)))
                    (_%$%hd4364343969%_
                     (let () (declare (not safe)) (##car _%$%e4364243965%_))))
                (if (gx#stx-pair? _%$%tl4364443972%_)
                    (let ((_%$%e4364543975%_ (gx#syntax-e _%$%tl4364443972%_)))
                      (let ((_%$%tl4364743982%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e4364543975%_)))
                            (_%$%hd4364643979%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e4364543975%_))))
                        (if (gx#identifier? _%$%hd4364643979%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/more-sugar[1]#_g46367_|
                                 _%$%hd4364643979%_)
                                (if (gx#stx-pair? _%$%tl4364743982%_)
                                    (let ((_%$%e4364843985%_
                                           (gx#syntax-e _%$%tl4364743982%_)))
                                      (let ((_%$%tl4365043992%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4364843985%_)))
                                            (_%$%hd4364943989%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4364843985%_))))
                                        (if (gx#stx-null? _%$%tl4365043992%_)
                                            (_%__kont4594845949%_
                                             _%$%hd4364943989%_
                                             _%$%hd4364343969%_)
                                            (if (gx#stx-pair?
                                                 _%$%hd4364343969%_)
                                                (let ((_%$%e4365743879%_
                                                       (gx#syntax-e
                                                        _%$%hd4364343969%_)))
                                                  (let ((_%$%tl4365943886%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4365743879%_)))
                                                        (_%$%hd4365843883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4365743879%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl4365943886%_)
                                                        (let ((_%$%e4366043889%_
                                                               (gx#syntax-e
                                                                _%$%tl4365943886%_)))
                                                          (let ((_%$%tl4366243896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4366043889%_)))
                        (_%$%hd4366143893%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4366043889%_))))
                    (if (gx#stx-null? _%$%tl4366243896%_)
                        (if (gx#stx-pair/null? _%$%tl4364443972%_)
                            (let ((_%__splice4595245953%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl4364443972%_
                                    '0)))
                              (let ((_%$%tl4366543902%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4595245953%_
                                        '1)))
                                    (_%$%target4366343899%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4595245953%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl4366543902%_)
                                    (_%__match4601446015%_
                                     _%$%e4364243965%_
                                     _%$%hd4364343969%_
                                     _%$%tl4364443972%_
                                     _%$%e4365743879%_
                                     _%$%hd4365843883%_
                                     _%$%tl4365943886%_
                                     _%$%e4366043889%_
                                     _%$%hd4366143893%_
                                     _%$%tl4366243896%_
                                     _%__splice4595245953%_
                                     _%$%target4366343899%_
                                     _%$%tl4366543902%_)
                                    (_%$%g4363843708%_))))
                            (_%$%g4363843708%_))
                        (if (gx#stx-pair/null? _%$%tl4364443972%_)
                            (let ((_%__splice4596045961%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl4364443972%_
                                    '0)))
                              (let ((_%$%tl4369643728%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4596045961%_
                                        '1)))
                                    (_%$%target4369443725%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4596045961%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl4369643728%_)
                                    (_%__match4605046051%_
                                     _%$%e4364243965%_
                                     _%$%hd4364343969%_
                                     _%$%tl4364443972%_
                                     _%__splice4596045961%_
                                     _%$%target4369443725%_
                                     _%$%tl4369643728%_)
                                    (_%$%g4363843708%_))))
                            (_%$%g4363843708%_)))))
                (if (gx#stx-null? _%$%tl4365943886%_)
                    (if (gx#stx-pair/null? _%$%tl4364443972%_)
                        (let ((_%__splice4595645957%_
                               (gx#syntax-split-splice->vector
                                _%$%tl4364443972%_
                                '0)))
                          (let ((_%$%tl4368243810%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4595645957%_ '1)))
                                (_%$%target4368043807%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4595645957%_ '0))))
                            (if (gx#stx-null? _%$%tl4368243810%_)
                                (_%__match4603646037%_
                                 _%$%e4364243965%_
                                 _%$%hd4364343969%_
                                 _%$%tl4364443972%_
                                 _%$%e4365743879%_
                                 _%$%hd4365843883%_
                                 _%$%tl4365943886%_
                                 _%__splice4595645957%_
                                 _%$%target4368043807%_
                                 _%$%tl4368243810%_)
                                (_%$%g4363843708%_))))
                        (_%$%g4363843708%_))
                    (if (gx#stx-pair/null? _%$%tl4364443972%_)
                        (let ((_%__splice4596045961%_
                               (gx#syntax-split-splice->vector
                                _%$%tl4364443972%_
                                '0)))
                          (let ((_%$%tl4369643728%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4596045961%_ '1)))
                                (_%$%target4369443725%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4596045961%_ '0))))
                            (if (gx#stx-null? _%$%tl4369643728%_)
                                (_%__match4605046051%_
                                 _%$%e4364243965%_
                                 _%$%hd4364343969%_
                                 _%$%tl4364443972%_
                                 _%__splice4596045961%_
                                 _%$%target4369443725%_
                                 _%$%tl4369643728%_)
                                (_%$%g4363843708%_))))
                        (_%$%g4363843708%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4364443972%_)
                                                    (let ((_%__splice4596045961%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4364443972%_
                                                            '0)))
                                                      (let ((_%$%tl4369643728%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4596045961%_ '1)))
                    (_%$%target4369443725%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4596045961%_ '0))))
                (if (gx#stx-null? _%$%tl4369643728%_)
                    (_%__match4605046051%_
                     _%$%e4364243965%_
                     _%$%hd4364343969%_
                     _%$%tl4364443972%_
                     _%__splice4596045961%_
                     _%$%target4369443725%_
                     _%$%tl4369643728%_)
                    (_%$%g4363843708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4363843708%_))))))
                                    (if (gx#stx-pair? _%$%hd4364343969%_)
                                        (let ((_%$%e4365743879%_
                                               (gx#syntax-e
                                                _%$%hd4364343969%_)))
                                          (let ((_%$%tl4365943886%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4365743879%_)))
                                                (_%$%hd4365843883%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4365743879%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl4365943886%_)
                                                (let ((_%$%e4366043889%_
                                                       (gx#syntax-e
                                                        _%$%tl4365943886%_)))
                                                  (let ((_%$%tl4366243896%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4366043889%_)))
                                                        (_%$%hd4366143893%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4366043889%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4366243896%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl4364443972%_)
                                                            (let ((_%__splice4595245953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%$%tl4364443972%_
                            '0)))
                      (let ((_%$%tl4366543902%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4595245953%_ '1)))
                            (_%$%target4366343899%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4595245953%_ '0))))
                        (if (gx#stx-null? _%$%tl4366543902%_)
                            (_%__match4601446015%_
                             _%$%e4364243965%_
                             _%$%hd4364343969%_
                             _%$%tl4364443972%_
                             _%$%e4365743879%_
                             _%$%hd4365843883%_
                             _%$%tl4365943886%_
                             _%$%e4366043889%_
                             _%$%hd4366143893%_
                             _%$%tl4366243896%_
                             _%__splice4595245953%_
                             _%$%target4366343899%_
                             _%$%tl4366543902%_)
                            (_%$%g4363843708%_))))
                    (_%$%g4363843708%_))
                (if (gx#stx-pair/null? _%$%tl4364443972%_)
                    (let ((_%__splice4596045961%_
                           (gx#syntax-split-splice->vector
                            _%$%tl4364443972%_
                            '0)))
                      (let ((_%$%tl4369643728%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4596045961%_ '1)))
                            (_%$%target4369443725%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4596045961%_ '0))))
                        (if (gx#stx-null? _%$%tl4369643728%_)
                            (_%__match4605046051%_
                             _%$%e4364243965%_
                             _%$%hd4364343969%_
                             _%$%tl4364443972%_
                             _%__splice4596045961%_
                             _%$%target4369443725%_
                             _%$%tl4369643728%_)
                            (_%$%g4363843708%_))))
                    (_%$%g4363843708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%$%tl4365943886%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4364443972%_)
                                                        (let ((_%__splice4595645957%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4364443972%_
                                                                '0)))
                                                          (let ((_%$%tl4368243810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4595645957%_ '1)))
                        (_%$%target4368043807%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4595645957%_ '0))))
                    (if (gx#stx-null? _%$%tl4368243810%_)
                        (_%__match4603646037%_
                         _%$%e4364243965%_
                         _%$%hd4364343969%_
                         _%$%tl4364443972%_
                         _%$%e4365743879%_
                         _%$%hd4365843883%_
                         _%$%tl4365943886%_
                         _%__splice4595645957%_
                         _%$%target4368043807%_
                         _%$%tl4368243810%_)
                        (_%$%g4363843708%_))))
                (_%$%g4363843708%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4364443972%_)
                                                        (let ((_%__splice4596045961%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4364443972%_
                                                                '0)))
                                                          (let ((_%$%tl4369643728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4596045961%_ '1)))
                        (_%$%target4369443725%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4596045961%_ '0))))
                    (if (gx#stx-null? _%$%tl4369643728%_)
                        (_%__match4605046051%_
                         _%$%e4364243965%_
                         _%$%hd4364343969%_
                         _%$%tl4364443972%_
                         _%__splice4596045961%_
                         _%$%target4369443725%_
                         _%$%tl4369643728%_)
                        (_%$%g4363843708%_))))
                (_%$%g4363843708%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (gx#stx-pair/null?
                                             _%$%tl4364443972%_)
                                            (let ((_%__splice4596045961%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4364443972%_
                                                    '0)))
                                              (let ((_%$%tl4369643728%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4596045961%_
                                                        '1)))
                                                    (_%$%target4369443725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4596045961%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4369643728%_)
                                                    (_%__match4605046051%_
                                                     _%$%e4364243965%_
                                                     _%$%hd4364343969%_
                                                     _%$%tl4364443972%_
                                                     _%__splice4596045961%_
                                                     _%$%target4369443725%_
                                                     _%$%tl4369643728%_)
                                                    (_%$%g4363843708%_))))
                                            (_%$%g4363843708%_))))
                                (if (gx#stx-pair? _%$%hd4364343969%_)
                                    (let ((_%$%e4365743879%_
                                           (gx#syntax-e _%$%hd4364343969%_)))
                                      (let ((_%$%tl4365943886%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4365743879%_)))
                                            (_%$%hd4365843883%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4365743879%_))))
                                        (if (gx#stx-pair? _%$%tl4365943886%_)
                                            (let ((_%$%e4366043889%_
                                                   (gx#syntax-e
                                                    _%$%tl4365943886%_)))
                                              (let ((_%$%tl4366243896%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4366043889%_)))
                                                    (_%$%hd4366143893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4366043889%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl4366243896%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4364443972%_)
                                                        (let ((_%__splice4595245953%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4364443972%_
                                                                '0)))
                                                          (let ((_%$%tl4366543902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4595245953%_ '1)))
                        (_%$%target4366343899%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4595245953%_ '0))))
                    (if (gx#stx-null? _%$%tl4366543902%_)
                        (_%__match4601446015%_
                         _%$%e4364243965%_
                         _%$%hd4364343969%_
                         _%$%tl4364443972%_
                         _%$%e4365743879%_
                         _%$%hd4365843883%_
                         _%$%tl4365943886%_
                         _%$%e4366043889%_
                         _%$%hd4366143893%_
                         _%$%tl4366243896%_
                         _%__splice4595245953%_
                         _%$%target4366343899%_
                         _%$%tl4366543902%_)
                        (_%$%g4363843708%_))))
                (_%$%g4363843708%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4364443972%_)
                                                        (let ((_%__splice4596045961%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4364443972%_
                                                                '0)))
                                                          (let ((_%$%tl4369643728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4596045961%_ '1)))
                        (_%$%target4369443725%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4596045961%_ '0))))
                    (if (gx#stx-null? _%$%tl4369643728%_)
                        (_%__match4605046051%_
                         _%$%e4364243965%_
                         _%$%hd4364343969%_
                         _%$%tl4364443972%_
                         _%__splice4596045961%_
                         _%$%target4369443725%_
                         _%$%tl4369643728%_)
                        (_%$%g4363843708%_))))
                (_%$%g4363843708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-null?
                                                 _%$%tl4365943886%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4364443972%_)
                                                    (let ((_%__splice4595645957%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4364443972%_
                                                            '0)))
                                                      (let ((_%$%tl4368243810%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4595645957%_ '1)))
                    (_%$%target4368043807%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4595645957%_ '0))))
                (if (gx#stx-null? _%$%tl4368243810%_)
                    (_%__match4603646037%_
                     _%$%e4364243965%_
                     _%$%hd4364343969%_
                     _%$%tl4364443972%_
                     _%$%e4365743879%_
                     _%$%hd4365843883%_
                     _%$%tl4365943886%_
                     _%__splice4595645957%_
                     _%$%target4368043807%_
                     _%$%tl4368243810%_)
                    (_%$%g4363843708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4363843708%_))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4364443972%_)
                                                    (let ((_%__splice4596045961%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4364443972%_
                                                            '0)))
                                                      (let ((_%$%tl4369643728%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4596045961%_ '1)))
                    (_%$%target4369443725%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4596045961%_ '0))))
                (if (gx#stx-null? _%$%tl4369643728%_)
                    (_%__match4605046051%_
                     _%$%e4364243965%_
                     _%$%hd4364343969%_
                     _%$%tl4364443972%_
                     _%__splice4596045961%_
                     _%$%target4369443725%_
                     _%$%tl4369643728%_)
                    (_%$%g4363843708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4363843708%_))))))
                                    (if (gx#stx-pair/null? _%$%tl4364443972%_)
                                        (let ((_%__splice4596045961%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4364443972%_
                                                '0)))
                                          (let ((_%$%tl4369643728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4596045961%_
                                                    '1)))
                                                (_%$%target4369443725%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4596045961%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4369643728%_)
                                                (_%__match4605046051%_
                                                 _%$%e4364243965%_
                                                 _%$%hd4364343969%_
                                                 _%$%tl4364443972%_
                                                 _%__splice4596045961%_
                                                 _%$%target4369443725%_
                                                 _%$%tl4369643728%_)
                                                (_%$%g4363843708%_))))
                                        (_%$%g4363843708%_))))
                            (if (gx#stx-pair? _%$%hd4364343969%_)
                                (let ((_%$%e4365743879%_
                                       (gx#syntax-e _%$%hd4364343969%_)))
                                  (let ((_%$%tl4365943886%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4365743879%_)))
                                        (_%$%hd4365843883%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4365743879%_))))
                                    (if (gx#stx-pair? _%$%tl4365943886%_)
                                        (let ((_%$%e4366043889%_
                                               (gx#syntax-e
                                                _%$%tl4365943886%_)))
                                          (let ((_%$%tl4366243896%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4366043889%_)))
                                                (_%$%hd4366143893%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4366043889%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl4366243896%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4364443972%_)
                                                    (let ((_%__splice4595245953%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4364443972%_
                                                            '0)))
                                                      (let ((_%$%tl4366543902%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4595245953%_ '1)))
                    (_%$%target4366343899%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4595245953%_ '0))))
                (if (gx#stx-null? _%$%tl4366543902%_)
                    (_%__match4601446015%_
                     _%$%e4364243965%_
                     _%$%hd4364343969%_
                     _%$%tl4364443972%_
                     _%$%e4365743879%_
                     _%$%hd4365843883%_
                     _%$%tl4365943886%_
                     _%$%e4366043889%_
                     _%$%hd4366143893%_
                     _%$%tl4366243896%_
                     _%__splice4595245953%_
                     _%$%target4366343899%_
                     _%$%tl4366543902%_)
                    (_%$%g4363843708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4363843708%_))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4364443972%_)
                                                    (let ((_%__splice4596045961%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4364443972%_
                                                            '0)))
                                                      (let ((_%$%tl4369643728%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4596045961%_ '1)))
                    (_%$%target4369443725%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4596045961%_ '0))))
                (if (gx#stx-null? _%$%tl4369643728%_)
                    (_%__match4605046051%_
                     _%$%e4364243965%_
                     _%$%hd4364343969%_
                     _%$%tl4364443972%_
                     _%__splice4596045961%_
                     _%$%target4369443725%_
                     _%$%tl4369643728%_)
                    (_%$%g4363843708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4363843708%_)))))
                                        (if (gx#stx-null? _%$%tl4365943886%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4364443972%_)
                                                (let ((_%__splice4595645957%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4364443972%_
                                                        '0)))
                                                  (let ((_%$%tl4368243810%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4595645957%_
                                                            '1)))
                                                        (_%$%target4368043807%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4595645957%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4368243810%_)
                                                        (_%__match4603646037%_
                                                         _%$%e4364243965%_
                                                         _%$%hd4364343969%_
                                                         _%$%tl4364443972%_
                                                         _%$%e4365743879%_
                                                         _%$%hd4365843883%_
                                                         _%$%tl4365943886%_
                                                         _%__splice4595645957%_
                                                         _%$%target4368043807%_
                                                         _%$%tl4368243810%_)
                                                        (_%$%g4363843708%_))))
                                                (_%$%g4363843708%_))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4364443972%_)
                                                (let ((_%__splice4596045961%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4364443972%_
                                                        '0)))
                                                  (let ((_%$%tl4369643728%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4596045961%_
                                                            '1)))
                                                        (_%$%target4369443725%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4596045961%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4369643728%_)
                                                        (_%__match4605046051%_
                                                         _%$%e4364243965%_
                                                         _%$%hd4364343969%_
                                                         _%$%tl4364443972%_
                                                         _%__splice4596045961%_
                                                         _%$%target4369443725%_
                                                         _%$%tl4369643728%_)
                                                        (_%$%g4363843708%_))))
                                                (_%$%g4363843708%_))))))
                                (if (gx#stx-pair/null? _%$%tl4364443972%_)
                                    (let ((_%__splice4596045961%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl4364443972%_
                                            '0)))
                                      (let ((_%$%tl4369643728%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4596045961%_
                                                '1)))
                                            (_%$%target4369443725%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4596045961%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl4369643728%_)
                                            (_%__match4605046051%_
                                             _%$%e4364243965%_
                                             _%$%hd4364343969%_
                                             _%$%tl4364443972%_
                                             _%__splice4596045961%_
                                             _%$%target4369443725%_
                                             _%$%tl4369643728%_)
                                            (_%$%g4363843708%_))))
                                    (_%$%g4363843708%_))))))
                    (if (gx#stx-pair? _%$%hd4364343969%_)
                        (let ((_%$%e4365743879%_
                               (gx#syntax-e _%$%hd4364343969%_)))
                          (let ((_%$%tl4365943886%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4365743879%_)))
                                (_%$%hd4365843883%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4365743879%_))))
                            (if (gx#stx-pair? _%$%tl4365943886%_)
                                (let ((_%$%e4366043889%_
                                       (gx#syntax-e _%$%tl4365943886%_)))
                                  (let ((_%$%tl4366243896%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4366043889%_)))
                                        (_%$%hd4366143893%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4366043889%_))))
                                    (if (gx#stx-null? _%$%tl4366243896%_)
                                        (if (gx#stx-pair/null?
                                             _%$%tl4364443972%_)
                                            (let ((_%__splice4595245953%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4364443972%_
                                                    '0)))
                                              (let ((_%$%tl4366543902%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4595245953%_
                                                        '1)))
                                                    (_%$%target4366343899%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4595245953%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4366543902%_)
                                                    (_%__match4601446015%_
                                                     _%$%e4364243965%_
                                                     _%$%hd4364343969%_
                                                     _%$%tl4364443972%_
                                                     _%$%e4365743879%_
                                                     _%$%hd4365843883%_
                                                     _%$%tl4365943886%_
                                                     _%$%e4366043889%_
                                                     _%$%hd4366143893%_
                                                     _%$%tl4366243896%_
                                                     _%__splice4595245953%_
                                                     _%$%target4366343899%_
                                                     _%$%tl4366543902%_)
                                                    (_%$%g4363843708%_))))
                                            (_%$%g4363843708%_))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4364443972%_)
                                            (let ((_%__splice4596045961%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4364443972%_
                                                    '0)))
                                              (let ((_%$%tl4369643728%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4596045961%_
                                                        '1)))
                                                    (_%$%target4369443725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4596045961%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4369643728%_)
                                                    (_%__match4605046051%_
                                                     _%$%e4364243965%_
                                                     _%$%hd4364343969%_
                                                     _%$%tl4364443972%_
                                                     _%__splice4596045961%_
                                                     _%$%target4369443725%_
                                                     _%$%tl4369643728%_)
                                                    (_%$%g4363843708%_))))
                                            (_%$%g4363843708%_)))))
                                (if (gx#stx-null? _%$%tl4365943886%_)
                                    (if (gx#stx-pair/null? _%$%tl4364443972%_)
                                        (let ((_%__splice4595645957%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4364443972%_
                                                '0)))
                                          (let ((_%$%tl4368243810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4595645957%_
                                                    '1)))
                                                (_%$%target4368043807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4595645957%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4368243810%_)
                                                (_%__match4603646037%_
                                                 _%$%e4364243965%_
                                                 _%$%hd4364343969%_
                                                 _%$%tl4364443972%_
                                                 _%$%e4365743879%_
                                                 _%$%hd4365843883%_
                                                 _%$%tl4365943886%_
                                                 _%__splice4595645957%_
                                                 _%$%target4368043807%_
                                                 _%$%tl4368243810%_)
                                                (_%$%g4363843708%_))))
                                        (_%$%g4363843708%_))
                                    (if (gx#stx-pair/null? _%$%tl4364443972%_)
                                        (let ((_%__splice4596045961%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4364443972%_
                                                '0)))
                                          (let ((_%$%tl4369643728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4596045961%_
                                                    '1)))
                                                (_%$%target4369443725%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4596045961%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4369643728%_)
                                                (_%__match4605046051%_
                                                 _%$%e4364243965%_
                                                 _%$%hd4364343969%_
                                                 _%$%tl4364443972%_
                                                 _%__splice4596045961%_
                                                 _%$%target4369443725%_
                                                 _%$%tl4369643728%_)
                                                (_%$%g4363843708%_))))
                                        (_%$%g4363843708%_))))))
                        (if (gx#stx-pair/null? _%$%tl4364443972%_)
                            (let ((_%__splice4596045961%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl4364443972%_
                                    '0)))
                              (let ((_%$%tl4369643728%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4596045961%_
                                        '1)))
                                    (_%$%target4369443725%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4596045961%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl4369643728%_)
                                    (_%__match4605046051%_
                                     _%$%e4364243965%_
                                     _%$%hd4364343969%_
                                     _%$%tl4364443972%_
                                     _%__splice4596045961%_
                                     _%$%target4369443725%_
                                     _%$%tl4369643728%_)
                                    (_%$%g4363843708%_))))
                            (_%$%g4363843708%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4363843708%_))))))))
                                  (if (pair? _%$%rest4348843496%_)
                                      (let ((_%$%hd4349344020%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%rest4348843496%_)))
                                            (_%$%tl4349444023%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%rest4348843496%_))))
                                        (let* ((_%hd44026%_ _%$%hd4349344020%_)
                                               (_%rest44029%_
                                                _%$%tl4349444023%_))
                                          (_%$%K4349244016%_
                                           _%rest44029%_
                                           _%hd44026%_)))
                                      (_%$%else4349043627%_)))))))
                      (_%$%g4345444032%_ (gx#genident))))))
          (let* ((_%$%g4283942859%_
                  (lambda (_%$%g4284042855%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g4284042855%_)))
                 (_%$%g4283843447%_
                  (lambda (_%$%g4284042863%_)
                    (if (gx#stx-pair? _%$%g4284042863%_)
                        (let ((_%$%e4284242866%_
                               (gx#syntax-e _%$%g4284042863%_)))
                          (let ((_%$%hd4284342870%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4284242866%_)))
                                (_%$%tl4284442873%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4284242866%_))))
                            (if (gx#stx-pair/null? _%$%tl4284442873%_)
                                (let ((_g46368_
                                       (gx#syntax-split-splice
                                        _%$%tl4284442873%_
                                        '0)))
                                  (begin
                                    (let ((_g46369_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g46368_)
                                                 (##values-length _g46368_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g46369_ 2)))
                                          (error "Context expects 2 values"
                                                 _g46369_)))
                                    (let ((_%$%target4284542876%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g46368_ 0)))
                                          (_%$%tl4284742879%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g46368_ 1))))
                                      (if (gx#stx-null? _%$%tl4284742879%_)
                                          (letrec ((_%$%loop4284842882%_
                                                    (lambda (_%$%hd4284642886%_
                                                             _%$%e4285242889%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd4284642886%_)
                                                          (let ((_%$%e4284942891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd4284642886%_)))
                    (let ((_%$%lp-hd4285042895%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4284942891%_)))
                          (_%$%lp-tl4285142898%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4284942891%_))))
                      (_%$%loop4284842882%_
                       _%$%lp-tl4285142898%_
                       (cons _%$%lp-hd4285042895%_ _%$%e4285242889%_))))
                  (let ((_%$%e4285342901%_ (reverse _%$%e4285242889%_)))
                    (let _%lp42921%_ ((_%rest42924%_
                                       (foldr (lambda (_%$%g4343843441%_
                                                       _%$%g4343943444%_)
                                                (cons _%$%g4343843441%_
                                                      _%$%g4343943444%_))
                                              '()
                                              _%$%e4285342901%_))
                                      (_%body42926%_ '()))
                      (let* ((_%__stx4617146172%_ _%rest42924%_)
                             (_%$%g4292942941%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx4617146172%_))))
                        (let ((_%__kont4617446175%_
                               (lambda (_%$%g4293142969%_ _%$%g4293242971%_)
                                 (let* ((_%__stx4611946120%_ _%$%g4293242971%_)
                                        (_%$%g4298843021%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx4611946120%_))))
                                   (let ((_%__kont4612246123%_
                                          (lambda (_%$%g4299043408%_)
                                            (if (gx#stx-null?
                                                 _%$%g4293142969%_)
                                                (_%generate-fini42836%_
                                                 (_%generate-thunk42834%_
                                                  _%body42926%_)
                                                 (foldr (lambda (_%$%g4342243425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g4342343428%_)
                  (cons _%$%g4342243425%_ _%$%g4342343428%_))
                '()
                _%$%g4299043408%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced finally clause"
                                                 _%stx42831%_))))
                                         (_%__kont4612646127%_
                                          (lambda (_%$%g4300343077%_)
                                            (let _%lp43094%_ ((_%rest43097%_
                                                               _%$%g4293142969%_)
                                                              (_%handlers43099%_
                                                               (cons (foldr (lambda (_%$%g4335443357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%$%g4335543360%_)
                                      (cons _%$%g4335443357%_
                                            _%$%g4335543360%_))
                                    '()
                                    _%$%g4300343077%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let* ((_%__stx4605346054%_
                                                      _%rest43097%_)
                                                     (_%$%g4310343143%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx4605346054%_))))
                                                (let ((_%__kont4605646057%_
                                                       (lambda (_%$%g4310543324%_
                                                                _%$%g4310643326%_)
                                                         (_%lp43094%_
                                                          _%$%g4310543324%_
                                                          (cons (foldr (lambda (_%$%g4334243345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _%$%g4334343348%_)
                                 (cons _%$%g4334243345%_ _%$%g4334343348%_))
                               '()
                               _%$%g4310643326%_)
                        _%handlers43099%_))))
              (_%__kont4606046061%_
               (lambda (_%$%g4312243209%_)
                 (let* ((_%$%g4323043238%_
                         (lambda (_%$%g4323143234%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g4323143234%_)))
                        (_%$%g4322943265%_
                         (lambda (_%$%g4323143242%_)
                           (_%generate-fini42836%_
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons '() (cons _%$%g4323143242%_ '())))
                            (foldr (lambda (_%$%g4325643259%_
                                            _%$%g4325743262%_)
                                     (cons _%$%g4325643259%_
                                           _%$%g4325743262%_))
                                   '()
                                   _%$%g4312243209%_)))))
                   (_%$%g4322943265%_
                    (_%generate-catch42837%_
                     _%handlers43099%_
                     (_%generate-thunk42834%_ _%body42926%_))))))
              (_%__kont4606446065%_
               (lambda ()
                 (_%generate-catch42837%_
                  _%handlers43099%_
                  (_%generate-thunk42834%_ _%body42926%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%$%g4310243154%_
                                                          (lambda ()
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%__stx4605346054%_)
                        (_%__kont4606446065%_)
                        (_%$%g4310343143%_))))
                 (_%__match4611446115%_
                  (lambda (_%$%e4312343161%_
                           _%$%hd4312443165%_
                           _%$%tl4312543168%_
                           _%$%e4312643171%_
                           _%$%hd4312743175%_
                           _%$%tl4312843178%_
                           _%__splice4606246063%_
                           _%$%target4312943181%_
                           _%$%tl4313143184%_)
                    (letrec ((_%$%loop4313243187%_
                              (lambda (_%$%hd4313043191%_ _%$%fini4313643194%_)
                                (if (gx#stx-pair? _%$%hd4313043191%_)
                                    (let ((_%$%e4313343196%_
                                           (gx#syntax-e _%$%hd4313043191%_)))
                                      (let ((_%$%lp-tl4313543203%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4313343196%_)))
                                            (_%$%lp-hd4313443200%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4313343196%_))))
                                        (_%$%loop4313243187%_
                                         _%$%lp-tl4313543203%_
                                         (cons _%$%lp-hd4313443200%_
                                               _%$%fini4313643194%_))))
                                    (let ((_%$%fini4313743206%_
                                           (reverse _%$%fini4313643194%_)))
                                      (if (gx#stx-null? _%$%tl4312543168%_)
                                          (_%__kont4606046061%_
                                           _%$%fini4313743206%_)
                                          (_%$%g4310343143%_)))))))
                      (_%$%loop4313243187%_ _%$%target4312943181%_ '()))))
                 (_%__match4609046091%_
                  (lambda (_%$%e4310743276%_
                           _%$%hd4310843280%_
                           _%$%tl4310943283%_
                           _%$%e4311043286%_
                           _%$%hd4311143290%_
                           _%$%tl4311243293%_
                           _%__splice4605846059%_
                           _%$%target4311343296%_
                           _%$%tl4311543299%_)
                    (letrec ((_%$%loop4311643302%_
                              (lambda (_%$%hd4311443306%_
                                       _%$%handler4312043309%_)
                                (if (gx#stx-pair? _%$%hd4311443306%_)
                                    (let ((_%$%e4311743311%_
                                           (gx#syntax-e _%$%hd4311443306%_)))
                                      (let ((_%$%lp-tl4311943318%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4311743311%_)))
                                            (_%$%lp-hd4311843315%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4311743311%_))))
                                        (_%$%loop4311643302%_
                                         _%$%lp-tl4311943318%_
                                         (cons _%$%lp-hd4311843315%_
                                               _%$%handler4312043309%_))))
                                    (let ((_%$%handler4312143321%_
                                           (reverse _%$%handler4312043309%_)))
                                      (_%__kont4605646057%_
                                       _%$%tl4310943283%_
                                       _%$%handler4312143321%_))))))
                      (_%$%loop4311643302%_ _%$%target4311343296%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _%__stx4605346054%_)
                                                        (let ((_%$%e4310743276%_
                                                               (gx#syntax-e
                                                                _%__stx4605346054%_)))
                                                          (let ((_%$%tl4310943283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4310743276%_)))
                        (_%$%hd4310843280%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4310743276%_))))
                    (if (gx#stx-pair? _%$%hd4310843280%_)
                        (let ((_%$%e4311043286%_
                               (gx#syntax-e _%$%hd4310843280%_)))
                          (let ((_%$%tl4311243293%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4311043286%_)))
                                (_%$%hd4311143290%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4311043286%_))))
                            (if (gx#identifier? _%$%hd4311143290%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/more-sugar[1]#_g46370_|
                                     _%$%hd4311143290%_)
                                    (if (gx#stx-pair/null? _%$%tl4311243293%_)
                                        (let ((_%__splice4605846059%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4311243293%_
                                                '0)))
                                          (let ((_%$%tl4311543299%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4605846059%_
                                                    '1)))
                                                (_%$%target4311343296%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4605846059%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4311543299%_)
                                                (_%__match4609046091%_
                                                 _%$%e4310743276%_
                                                 _%$%hd4310843280%_
                                                 _%$%tl4310943283%_
                                                 _%$%e4311043286%_
                                                 _%$%hd4311143290%_
                                                 _%$%tl4311243293%_
                                                 _%__splice4605846059%_
                                                 _%$%target4311343296%_
                                                 _%$%tl4311543299%_)
                                                (_%$%g4310343143%_))))
                                        (_%$%g4310343143%_))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/more-sugar[1]#_g46371_|
                                         _%$%hd4311143290%_)
                                        (if (gx#stx-pair/null?
                                             _%$%tl4311243293%_)
                                            (let ((_%__splice4606246063%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4311243293%_
                                                    '0)))
                                              (let ((_%$%tl4313143184%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4606246063%_
                                                        '1)))
                                                    (_%$%target4312943181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4606246063%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4313143184%_)
                                                    (_%__match4611446115%_
                                                     _%$%e4310743276%_
                                                     _%$%hd4310843280%_
                                                     _%$%tl4310943283%_
                                                     _%$%e4311043286%_
                                                     _%$%hd4311143290%_
                                                     _%$%tl4311243293%_
                                                     _%__splice4606246063%_
                                                     _%$%target4312943181%_
                                                     _%$%tl4313143184%_)
                                                    (_%$%g4310343143%_))))
                                            (_%$%g4310343143%_))
                                        (_%$%g4310343143%_)))
                                (_%$%g4310343143%_))))
                        (_%$%g4310343143%_))))
                (_%$%g4310243154%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont4613046131%_
                                          (lambda ()
                                            (_%lp42921%_
                                             _%$%g4293142969%_
                                             (cons _%$%g4293242971%_
                                                   _%body42926%_)))))
                                     (let* ((_%__match4616846169%_
                                             (lambda (_%$%e4300443039%_
                                                      _%$%hd4300543043%_
                                                      _%$%tl4300643046%_
                                                      _%__splice4612846129%_
                                                      _%$%target4300743049%_
                                                      _%$%tl4300943052%_)
                                               (letrec ((_%$%loop4301043055%_
                                                         (lambda (_%$%hd4300843059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%handler4301443062%_)
                   (if (gx#stx-pair? _%$%hd4300843059%_)
                       (let ((_%$%e4301143064%_
                              (gx#syntax-e _%$%hd4300843059%_)))
                         (let ((_%$%lp-tl4301343071%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4301143064%_)))
                               (_%$%lp-hd4301243068%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4301143064%_))))
                           (_%$%loop4301043055%_
                            _%$%lp-tl4301343071%_
                            (cons _%$%lp-hd4301243068%_
                                  _%$%handler4301443062%_))))
                       (let ((_%$%handler4301543074%_
                              (reverse _%$%handler4301443062%_)))
                         (_%__kont4612646127%_ _%$%handler4301543074%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4301043055%_
                                                  _%$%target4300743049%_
                                                  '()))))
                                            (_%__match4615046151%_
                                             (lambda (_%$%e4299143370%_
                                                      _%$%hd4299243374%_
                                                      _%$%tl4299343377%_
                                                      _%__splice4612446125%_
                                                      _%$%target4299443380%_
                                                      _%$%tl4299643383%_)
                                               (letrec ((_%$%loop4299743386%_
                                                         (lambda (_%$%hd4299543390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%fini4300143393%_)
                   (if (gx#stx-pair? _%$%hd4299543390%_)
                       (let ((_%$%e4299843395%_
                              (gx#syntax-e _%$%hd4299543390%_)))
                         (let ((_%$%lp-tl4300043402%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4299843395%_)))
                               (_%$%lp-hd4299943399%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4299843395%_))))
                           (_%$%loop4299743386%_
                            _%$%lp-tl4300043402%_
                            (cons _%$%lp-hd4299943399%_
                                  _%$%fini4300143393%_))))
                       (let ((_%$%fini4300243405%_
                              (reverse _%$%fini4300143393%_)))
                         (_%__kont4612246123%_ _%$%fini4300243405%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4299743386%_
                                                  _%$%target4299443380%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx4611946120%_)
                                           (let ((_%$%e4299143370%_
                                                  (gx#syntax-e
                                                   _%__stx4611946120%_)))
                                             (let ((_%$%tl4299343377%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e4299143370%_)))
                                                   (_%$%hd4299243374%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e4299143370%_))))
                                               (if (gx#identifier?
                                                    _%$%hd4299243374%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/more-sugar[1]#_g46372_|
                                                        _%$%hd4299243374%_)
                                                       (if (gx#stx-pair/null?
                                                            _%$%tl4299343377%_)
                                                           (let ((_%__splice4612446125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%$%tl4299343377%_
                           '0)))
                     (let ((_%$%tl4299643383%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4612446125%_ '1)))
                           (_%$%target4299443380%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4612446125%_ '0))))
                       (if (gx#stx-null? _%$%tl4299643383%_)
                           (_%__match4615046151%_
                            _%$%e4299143370%_
                            _%$%hd4299243374%_
                            _%$%tl4299343377%_
                            _%__splice4612446125%_
                            _%$%target4299443380%_
                            _%$%tl4299643383%_)
                           (_%__kont4613046131%_))))
                   (_%__kont4613046131%_))
               (if (gx#free-identifier=?
                    |gerbil/core/more-sugar[1]#_g46373_|
                    _%$%hd4299243374%_)
                   (if (gx#stx-pair/null? _%$%tl4299343377%_)
                       (let ((_%__splice4612846129%_
                              (gx#syntax-split-splice->vector
                               _%$%tl4299343377%_
                               '0)))
                         (let ((_%$%tl4300943052%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4612846129%_ '1)))
                               (_%$%target4300743049%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4612846129%_ '0))))
                           (if (gx#stx-null? _%$%tl4300943052%_)
                               (_%__match4616846169%_
                                _%$%e4299143370%_
                                _%$%hd4299243374%_
                                _%$%tl4299343377%_
                                _%__splice4612846129%_
                                _%$%target4300743049%_
                                _%$%tl4300943052%_)
                               (_%__kont4613046131%_))))
                       (_%__kont4613046131%_))
                   (_%__kont4613046131%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont4613046131%_))))
                                           (_%__kont4613046131%_)))))))
                              (_%__kont4617646177%_
                               (lambda ()
                                 (cons 'begin (reverse _%body42926%_)))))
                          (let ((_%$%g4292842952%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx4617146172%_)
                                       (_%__kont4617646177%_)
                                       (_%$%g4292942941%_)))))
                            (if (gx#stx-pair? _%__stx4617146172%_)
                                (let ((_%$%e4293342959%_
                                       (gx#syntax-e _%__stx4617146172%_)))
                                  (let ((_%$%tl4293542966%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4293342959%_)))
                                        (_%$%hd4293442963%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4293342959%_))))
                                    (_%__kont4617446175%_
                                     _%$%tl4293542966%_
                                     _%$%hd4293442963%_)))
                                (_%$%g4292842952%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop4284842882%_
                                             _%$%target4284542876%_
                                             '()))
                                          (_%$%g4283942859%_
                                           _%$%g4284042863%_)))))
                                (_%$%g4283942859%_ _%$%g4284042863%_))))
                        (_%$%g4283942859%_ _%$%g4284042863%_)))))
            (_%$%g4283843447%_ _%stx42831%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx44247%_)
        (let* ((_%$%g4425144280%_
                (lambda (_%$%g4425244276%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4425244276%_)))
               (_%$%g4425044376%_
                (lambda (_%$%g4425244284%_)
                  (if (gx#stx-pair? _%$%g4425244284%_)
                      (let ((_%$%e4425544287%_
                             (gx#syntax-e _%$%g4425244284%_)))
                        (let ((_%$%hd4425644291%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4425544287%_)))
                              (_%$%tl4425744294%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4425544287%_))))
                          (if (gx#stx-pair/null? _%$%tl4425744294%_)
                              (let ((_g46374_
                                     (gx#syntax-split-splice
                                      _%$%tl4425744294%_
                                      '0)))
                                (begin
                                  (let ((_g46375_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g46374_)
                                               (##values-length _g46374_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g46375_ 2)))
                                        (error "Context expects 2 values"
                                               _g46375_)))
                                  (let ((_%$%target4425844297%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46374_ 0)))
                                        (_%$%tl4426044300%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46374_ 1))))
                                    (if (gx#stx-null? _%$%tl4426044300%_)
                                        (letrec ((_%$%loop4426144303%_
                                                  (lambda (_%$%hd4425944307%_
                                                           _%$%val4426544310%_
                                                           _%$%key4426644311%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4425944307%_)
                                                        (let ((_%$%e4426244313%_
                                                               (gx#syntax-e
                                                                _%$%hd4425944307%_)))
                                                          (let ((_%$%lp-hd4426344317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4426244313%_)))
                        (_%$%lp-tl4426444320%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4426244313%_))))
                    (if (gx#stx-pair? _%$%lp-hd4426344317%_)
                        (let ((_%$%e4426944323%_
                               (gx#syntax-e _%$%lp-hd4426344317%_)))
                          (let ((_%$%hd4427044327%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4426944323%_)))
                                (_%$%tl4427144330%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4426944323%_))))
                            (if (gx#stx-pair? _%$%tl4427144330%_)
                                (let ((_%$%e4427244333%_
                                       (gx#syntax-e _%$%tl4427144330%_)))
                                  (let ((_%$%hd4427344337%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4427244333%_)))
                                        (_%$%tl4427444340%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4427244333%_))))
                                    (if (gx#stx-null? _%$%tl4427444340%_)
                                        (_%$%loop4426144303%_
                                         _%$%lp-tl4426444320%_
                                         (cons _%$%hd4427344337%_
                                               _%$%val4426544310%_)
                                         (cons _%$%hd4427044327%_
                                               _%$%key4426644311%_))
                                        (_%$%g4425144280%_
                                         _%$%g4425244284%_))))
                                (_%$%g4425144280%_ _%$%g4425244284%_))))
                        (_%$%g4425144280%_ _%$%g4425244284%_))))
                (let ((_%$%val4426744343%_ (reverse _%$%val4426544310%_))
                      (_%$%key4426844345%_ (reverse _%$%key4426644311%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%$%val4426744343%_
                                 _%$%key4426844345%_)
                                (foldr (lambda (_%$%g4436444368%_
                                                _%$%g4436544371%_
                                                _%$%g4436644373%_)
                                         (cons (cons _%$%g4436544371%_
                                                     (cons _%$%g4436444368%_
                                                           '()))
                                               _%$%g4436644373%_))
                                       '()
                                       _%$%val4426744343%_
                                       _%$%key4426844345%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4426144303%_
                                           _%$%target4425844297%_
                                           '()
                                           '()))
                                        (_%$%g4425144280%_
                                         _%$%g4425244284%_)))))
                              (_%$%g4425144280%_ _%$%g4425244284%_))))
                      (_%$%g4425144280%_ _%$%g4425244284%_)))))
          (_%$%g4425044376%_ _%$stx44247%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx44381%_)
        (let* ((_%$%g4438544414%_
                (lambda (_%$%g4438644410%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4438644410%_)))
               (_%$%g4438444510%_
                (lambda (_%$%g4438644418%_)
                  (if (gx#stx-pair? _%$%g4438644418%_)
                      (let ((_%$%e4438944421%_
                             (gx#syntax-e _%$%g4438644418%_)))
                        (let ((_%$%hd4439044425%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4438944421%_)))
                              (_%$%tl4439144428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4438944421%_))))
                          (if (gx#stx-pair/null? _%$%tl4439144428%_)
                              (let ((_g46376_
                                     (gx#syntax-split-splice
                                      _%$%tl4439144428%_
                                      '0)))
                                (begin
                                  (let ((_g46377_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g46376_)
                                               (##values-length _g46376_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g46377_ 2)))
                                        (error "Context expects 2 values"
                                               _g46377_)))
                                  (let ((_%$%target4439244431%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46376_ 0)))
                                        (_%$%tl4439444434%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46376_ 1))))
                                    (if (gx#stx-null? _%$%tl4439444434%_)
                                        (letrec ((_%$%loop4439544437%_
                                                  (lambda (_%$%hd4439344441%_
                                                           _%$%val4439944444%_
                                                           _%$%key4440044445%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4439344441%_)
                                                        (let ((_%$%e4439644447%_
                                                               (gx#syntax-e
                                                                _%$%hd4439344441%_)))
                                                          (let ((_%$%lp-hd4439744451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4439644447%_)))
                        (_%$%lp-tl4439844454%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4439644447%_))))
                    (if (gx#stx-pair? _%$%lp-hd4439744451%_)
                        (let ((_%$%e4440344457%_
                               (gx#syntax-e _%$%lp-hd4439744451%_)))
                          (let ((_%$%hd4440444461%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4440344457%_)))
                                (_%$%tl4440544464%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4440344457%_))))
                            (if (gx#stx-pair? _%$%tl4440544464%_)
                                (let ((_%$%e4440644467%_
                                       (gx#syntax-e _%$%tl4440544464%_)))
                                  (let ((_%$%hd4440744471%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4440644467%_)))
                                        (_%$%tl4440844474%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4440644467%_))))
                                    (if (gx#stx-null? _%$%tl4440844474%_)
                                        (_%$%loop4439544437%_
                                         _%$%lp-tl4439844454%_
                                         (cons _%$%hd4440744471%_
                                               _%$%val4439944444%_)
                                         (cons _%$%hd4440444461%_
                                               _%$%key4440044445%_))
                                        (_%$%g4438544414%_
                                         _%$%g4438644418%_))))
                                (_%$%g4438544414%_ _%$%g4438644418%_))))
                        (_%$%g4438544414%_ _%$%g4438644418%_))))
                (let ((_%$%val4440144477%_ (reverse _%$%val4439944444%_))
                      (_%$%key4440244479%_ (reverse _%$%key4440044445%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%$%val4440144477%_
                                 _%$%key4440244479%_)
                                (foldr (lambda (_%$%g4449844502%_
                                                _%$%g4449944505%_
                                                _%$%g4450044507%_)
                                         (cons (cons _%$%g4449944505%_
                                                     (cons _%$%g4449844502%_
                                                           '()))
                                               _%$%g4450044507%_))
                                       '()
                                       _%$%val4440144477%_
                                       _%$%key4440244479%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4439544437%_
                                           _%$%target4439244431%_
                                           '()
                                           '()))
                                        (_%$%g4438544414%_
                                         _%$%g4438644418%_)))))
                              (_%$%g4438544414%_ _%$%g4438644418%_))))
                      (_%$%g4438544414%_ _%$%g4438644418%_)))))
          (_%$%g4438444510%_ _%$stx44381%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx44515%_)
        (let* ((_%$%g4451944548%_
                (lambda (_%$%g4452044544%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4452044544%_)))
               (_%$%g4451844644%_
                (lambda (_%$%g4452044552%_)
                  (if (gx#stx-pair? _%$%g4452044552%_)
                      (let ((_%$%e4452344555%_
                             (gx#syntax-e _%$%g4452044552%_)))
                        (let ((_%$%hd4452444559%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4452344555%_)))
                              (_%$%tl4452544562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4452344555%_))))
                          (if (gx#stx-pair/null? _%$%tl4452544562%_)
                              (let ((_g46378_
                                     (gx#syntax-split-splice
                                      _%$%tl4452544562%_
                                      '0)))
                                (begin
                                  (let ((_g46379_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g46378_)
                                               (##values-length _g46378_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g46379_ 2)))
                                        (error "Context expects 2 values"
                                               _g46379_)))
                                  (let ((_%$%target4452644565%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46378_ 0)))
                                        (_%$%tl4452844568%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46378_ 1))))
                                    (if (gx#stx-null? _%$%tl4452844568%_)
                                        (letrec ((_%$%loop4452944571%_
                                                  (lambda (_%$%hd4452744575%_
                                                           _%$%val4453344578%_
                                                           _%$%key4453444579%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4452744575%_)
                                                        (let ((_%$%e4453044581%_
                                                               (gx#syntax-e
                                                                _%$%hd4452744575%_)))
                                                          (let ((_%$%lp-hd4453144585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4453044581%_)))
                        (_%$%lp-tl4453244588%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4453044581%_))))
                    (if (gx#stx-pair? _%$%lp-hd4453144585%_)
                        (let ((_%$%e4453744591%_
                               (gx#syntax-e _%$%lp-hd4453144585%_)))
                          (let ((_%$%hd4453844595%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4453744591%_)))
                                (_%$%tl4453944598%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4453744591%_))))
                            (if (gx#stx-pair? _%$%tl4453944598%_)
                                (let ((_%$%e4454044601%_
                                       (gx#syntax-e _%$%tl4453944598%_)))
                                  (let ((_%$%hd4454144605%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4454044601%_)))
                                        (_%$%tl4454244608%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4454044601%_))))
                                    (if (gx#stx-null? _%$%tl4454244608%_)
                                        (_%$%loop4452944571%_
                                         _%$%lp-tl4453244588%_
                                         (cons _%$%hd4454144605%_
                                               _%$%val4453344578%_)
                                         (cons _%$%hd4453844595%_
                                               _%$%key4453444579%_))
                                        (_%$%g4451944548%_
                                         _%$%g4452044552%_))))
                                (_%$%g4451944548%_ _%$%g4452044552%_))))
                        (_%$%g4451944548%_ _%$%g4452044552%_))))
                (let ((_%$%val4453544611%_ (reverse _%$%val4453344578%_))
                      (_%$%key4453644613%_ (reverse _%$%key4453444579%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%$%val4453544611%_
                                 _%$%key4453644613%_)
                                (foldr (lambda (_%$%g4463244636%_
                                                _%$%g4463344639%_
                                                _%$%g4463444641%_)
                                         (cons (cons _%$%g4463344639%_
                                                     (cons _%$%g4463244636%_
                                                           '()))
                                               _%$%g4463444641%_))
                                       '()
                                       _%$%val4453544611%_
                                       _%$%key4453644613%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4452944571%_
                                           _%$%target4452644565%_
                                           '()
                                           '()))
                                        (_%$%g4451944548%_
                                         _%$%g4452044552%_)))))
                              (_%$%g4451944548%_ _%$%g4452044552%_))))
                      (_%$%g4451944548%_ _%$%g4452044552%_)))))
          (_%$%g4451844644%_ _%$stx44515%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx44649%_)
        (let* ((_%$%g4465244676%_
                (lambda (_%$%g4465344672%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4465344672%_)))
               (_%$%g4465144917%_
                (lambda (_%$%g4465344680%_)
                  (if (gx#stx-pair? _%$%g4465344680%_)
                      (let ((_%$%e4465644683%_
                             (gx#syntax-e _%$%g4465344680%_)))
                        (let ((_%$%hd4465744687%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4465644683%_)))
                              (_%$%tl4465844690%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4465644683%_))))
                          (if (gx#stx-pair? _%$%tl4465844690%_)
                              (let ((_%$%e4465944693%_
                                     (gx#syntax-e _%$%tl4465844690%_)))
                                (let ((_%$%hd4466044697%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4465944693%_)))
                                      (_%$%tl4466144700%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4465944693%_))))
                                  (if (gx#stx-pair/null? _%$%tl4466144700%_)
                                      (let ((_g46380_
                                             (gx#syntax-split-splice
                                              _%$%tl4466144700%_
                                              '0)))
                                        (begin
                                          (let ((_g46381_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46380_)
                                                       (##values-length
                                                        _g46380_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46381_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46381_)))
                                          (let ((_%$%target4466244703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46380_ 0)))
                                                (_%$%tl4466444706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46380_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4466444706%_)
                                                (letrec ((_%$%loop4466544709%_
                                                          (lambda (_%$%hd4466344713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%entry4466944716%_)
                    (if (gx#stx-pair? _%$%hd4466344713%_)
                        (let ((_%$%e4466644718%_
                               (gx#syntax-e _%$%hd4466344713%_)))
                          (let ((_%$%lp-hd4466744722%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4466644718%_)))
                                (_%$%lp-tl4466844725%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4466644718%_))))
                            (_%$%loop4466544709%_
                             _%$%lp-tl4466844725%_
                             (cons _%$%lp-hd4466744722%_
                                   _%$%entry4466944716%_))))
                        (let* ((_%$%entry4467044728%_
                                (reverse _%$%entry4466944716%_))
                               (_%$%g4475144759%_
                                (lambda (_%$%g4475244755%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g4475244755%_)))
                               (_%$%g4475044905%_
                                (lambda (_%$%g4475244763%_)
                                  (let* ((_%$%g4477844804%_
                                          (lambda (_%$%g4477944800%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g4477944800%_)))
                                         (_%$%g4477744893%_
                                          (lambda (_%$%g4477944808%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%g4477944808%_)
                                                (let ((_g46382_
                                                       (gx#syntax-split-splice
                                                        _%$%g4477944808%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g46383_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g46382_)
                         (##values-length _g46382_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g46383_ 2)))
                  (error "Context expects 2 values" _g46383_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target4478244811%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g46382_
                                                              0)))
                                                          (_%$%tl4478444814%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g46382_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4478444814%_)
                                                          (letrec ((_%$%loop4478544817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd4478344821%_
                                     _%$%val4478944824%_
                                     _%$%key4479044825%_)
                              (if (gx#stx-pair? _%$%hd4478344821%_)
                                  (let ((_%$%e4478644827%_
                                         (gx#syntax-e _%$%hd4478344821%_)))
                                    (let ((_%$%lp-hd4478744831%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4478644827%_)))
                                          (_%$%lp-tl4478844834%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4478644827%_))))
                                      (if (gx#stx-pair? _%$%lp-hd4478744831%_)
                                          (let ((_%$%e4479344837%_
                                                 (gx#syntax-e
                                                  _%$%lp-hd4478744831%_)))
                                            (let ((_%$%hd4479444841%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4479344837%_)))
                                                  (_%$%tl4479544844%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4479344837%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl4479544844%_)
                                                  (let ((_%$%e4479644847%_
                                                         (gx#syntax-e
                                                          _%$%tl4479544844%_)))
                                                    (let ((_%$%hd4479744851%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e4479644847%_)))
                                                          (_%$%tl4479844854%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e4479644847%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4479844854%_)
                                                          (_%$%loop4478544817%_
                                                           _%$%lp-tl4478844834%_
                                                           (cons _%$%hd4479744851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%val4478944824%_)
                   (cons _%$%hd4479444841%_ _%$%key4479044825%_))
                  (_%$%g4477844804%_ _%$%g4477944808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4477844804%_
                                                   _%$%g4477944808%_))))
                                          (_%$%g4477844804%_
                                           _%$%g4477944808%_))))
                                  (let ((_%$%val4479144857%_
                                         (reverse _%$%val4478944824%_))
                                        (_%$%key4479244859%_
                                         (reverse _%$%key4479044825%_)))
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'ht)
                                                      (cons (cons _%$%hd4466044697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'size: (cons _%$%g4475244763%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%val4479144857%_
                                                   _%$%key4479244859%_)
                                                  (foldr (lambda (_%$%g4488144885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4488244888%_
                          _%$%g4488344890%_)
                   (cons (cons (gx#datum->syntax '#f 'hash-put!)
                               (cons (gx#datum->syntax '#f 'ht)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quasiquote)
                                                 (cons _%$%g4488244888%_ '()))
                                           (cons _%$%g4488144885%_ '()))))
                         _%$%g4488344890%_))
                 (cons (gx#datum->syntax '#f 'ht) '())
                 _%$%val4479144857%_
                 _%$%key4479244859%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (_%$%loop4478544817%_ _%$%target4478244811%_ '() '()))
                  (_%$%g4477844804%_ _%$%g4477944808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4477844804%_
                                                 _%$%g4477944808%_)))))
                                    (_%$%g4477744893%_
                                     (foldr (lambda (_%$%g4489644899%_
                                                     _%$%g4489744902%_)
                                              (cons _%$%g4489644899%_
                                                    _%$%g4489744902%_))
                                            '()
                                            _%$%entry4467044728%_))))))
                          (_%$%g4475044905%_
                           (gx#stx-length
                            (foldr (lambda (_%$%g4490844911%_
                                            _%$%g4490944914%_)
                                     (cons _%$%g4490844911%_
                                           _%$%g4490944914%_))
                                   '()
                                   _%$%entry4467044728%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4466544709%_
                                                   _%$%target4466244703%_
                                                   '()))
                                                (_%$%g4465244676%_
                                                 _%$%g4465344680%_)))))
                                      (_%$%g4465244676%_ _%$%g4465344680%_))))
                              (_%$%g4465244676%_ _%$%g4465344680%_))))
                      (_%$%g4465244676%_ _%$%g4465344680%_)))))
          (_%$%g4465144917%_ _%stx44649%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx44923%_)
        (let* ((_%$%g4492644940%_
                (lambda (_%$%g4492744936%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4492744936%_)))
               (_%$%g4492545012%_
                (lambda (_%$%g4492744944%_)
                  (if (gx#stx-pair? _%$%g4492744944%_)
                      (let ((_%$%e4492944947%_
                             (gx#syntax-e _%$%g4492744944%_)))
                        (let ((_%$%hd4493044951%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4492944947%_)))
                              (_%$%tl4493144954%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4492944947%_))))
                          (if (gx#stx-pair? _%$%tl4493144954%_)
                              (let ((_%$%e4493244957%_
                                     (gx#syntax-e _%$%tl4493144954%_)))
                                (let ((_%$%hd4493344961%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4493244957%_)))
                                      (_%$%tl4493444964%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4493244957%_))))
                                  (if (gx#stx-null? _%$%tl4493444964%_)
                                      (if (gx#stx-string? _%$%hd4493344961%_)
                                          (let* ((_%$%g4498144989%_
                                                  (lambda (_%$%g4498244985%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g4498244985%_)))
                                                 (_%$%g4498045008%_
                                                  (lambda (_%$%g4498244993%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%$%g4498244993%_
                                                                '())))))
                                            (_%$%g4498045008%_
                                             (string->bytes
                                              (gx#stx-e _%$%hd4493344961%_))))
                                          (_%$%g4492644940%_
                                           _%$%g4492744944%_))
                                      (_%$%g4492644940%_ _%$%g4492744944%_))))
                              (_%$%g4492644940%_ _%$%g4492744944%_))))
                      (_%$%g4492644940%_ _%$%g4492744944%_)))))
          (_%$%g4492545012%_ _%stx44923%_))))
    (define |gerbil/core/more-sugar[:0:]#@eval|
      (lambda (_%stx45016%_)
        (let* ((_%$%g4501945033%_
                (lambda (_%$%g4502045029%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4502045029%_)))
               (_%$%g4501845105%_
                (lambda (_%$%g4502045037%_)
                  (if (gx#stx-pair? _%$%g4502045037%_)
                      (let ((_%$%e4502245040%_
                             (gx#syntax-e _%$%g4502045037%_)))
                        (let ((_%$%hd4502345044%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4502245040%_)))
                              (_%$%tl4502445047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4502245040%_))))
                          (if (gx#stx-pair? _%$%tl4502445047%_)
                              (let ((_%$%e4502545050%_
                                     (gx#syntax-e _%$%tl4502445047%_)))
                                (let ((_%$%hd4502645054%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4502545050%_)))
                                      (_%$%tl4502745057%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4502545050%_))))
                                  (if (gx#stx-null? _%$%tl4502745057%_)
                                      (let* ((_%$%g4507445082%_
                                              (lambda (_%$%g4507545078%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g4507545078%_)))
                                             (_%$%g4507345101%_
                                              (lambda (_%$%g4507545086%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _%$%g4507545086%_
                                                            '())))))
                                        (_%$%g4507345101%_
                                         (gx#eval-syntax+1
                                          _%$%hd4502645054%_)))
                                      (_%$%g4501945033%_ _%$%g4502045037%_))))
                              (_%$%g4501945033%_ _%$%g4502045037%_))))
                      (_%$%g4501945033%_ _%$%g4502045037%_)))))
          (_%$%g4501845105%_ _%stx45016%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx45109%_)
        (let* ((_%$%g4511245126%_
                (lambda (_%$%g4511345122%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4511345122%_)))
               (_%$%g4511145167%_
                (lambda (_%$%g4511345130%_)
                  (if (gx#stx-pair? _%$%g4511345130%_)
                      (let ((_%$%e4511545133%_
                             (gx#syntax-e _%$%g4511345130%_)))
                        (let ((_%$%hd4511645137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4511545133%_)))
                              (_%$%tl4511745140%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4511545133%_))))
                          (if (gx#stx-pair? _%$%tl4511745140%_)
                              (let ((_%$%e4511845143%_
                                     (gx#syntax-e _%$%tl4511745140%_)))
                                (let ((_%$%hd4511945147%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4511845143%_)))
                                      (_%$%tl4512045150%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4511845143%_))))
                                  (if (gx#stx-null? _%$%tl4512045150%_)
                                      (let ()
                                        (if (gx#current-expander-compiling?)
                                            (gx#eval-syntax _%$%hd4511945147%_)
                                            '#!void)
                                        (cons (gx#datum->syntax '#f 'void)
                                              '()))
                                      (_%$%g4511245126%_ _%$%g4511345130%_))))
                              (_%$%g4511245126%_ _%$%g4511345130%_))))
                      (_%$%g4511245126%_ _%$%g4511345130%_)))))
          (_%$%g4511145167%_ _%stx45109%_))))
    (define |gerbil/core/more-sugar[:0:]#with-id|
      (lambda (_%stx45171%_)
        (let* ((_%$%g4517445207%_
                (lambda (_%$%g4517545203%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4517545203%_)))
               (_%$%g4517345712%_
                (lambda (_%$%g4517545211%_)
                  (if (gx#stx-pair? _%$%g4517545211%_)
                      (let ((_%$%e4517845214%_
                             (gx#syntax-e _%$%g4517545211%_)))
                        (let ((_%$%hd4517945218%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4517845214%_)))
                              (_%$%tl4518045221%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4517845214%_))))
                          (if (gx#stx-pair? _%$%tl4518045221%_)
                              (let ((_%$%e4518145224%_
                                     (gx#syntax-e _%$%tl4518045221%_)))
                                (let ((_%$%hd4518245228%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4518145224%_)))
                                      (_%$%tl4518345231%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4518145224%_))))
                                  (if (gx#stx-pair/null? _%$%hd4518245228%_)
                                      (let ((_g46384_
                                             (gx#syntax-split-splice
                                              _%$%hd4518245228%_
                                              '0)))
                                        (begin
                                          (let ((_g46385_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46384_)
                                                       (##values-length
                                                        _g46384_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46385_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46385_)))
                                          (let ((_%$%target4518445234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46384_ 0)))
                                                (_%$%tl4518645237%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46384_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4518645237%_)
                                                (letrec ((_%$%loop4518745240%_
                                                          (lambda (_%$%hd4518545244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause4519145247%_)
                    (if (gx#stx-pair? _%$%hd4518545244%_)
                        (let ((_%$%e4518845249%_
                               (gx#syntax-e _%$%hd4518545244%_)))
                          (let ((_%$%lp-hd4518945253%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4518845249%_)))
                                (_%$%lp-tl4519045256%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4518845249%_))))
                            (_%$%loop4518745240%_
                             _%$%lp-tl4519045256%_
                             (cons _%$%lp-hd4518945253%_
                                   _%$%clause4519145247%_))))
                        (let ((_%$%clause4519245259%_
                               (reverse _%$%clause4519145247%_)))
                          (if (gx#stx-pair/null? _%$%tl4518345231%_)
                              (let ((_g46386_
                                     (gx#syntax-split-splice
                                      _%$%tl4518345231%_
                                      '0)))
                                (begin
                                  (let ((_g46387_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g46386_)
                                               (##values-length _g46386_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g46387_ 2)))
                                        (error "Context expects 2 values"
                                               _g46387_)))
                                  (let ((_%$%target4519345262%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46386_ 0)))
                                        (_%$%tl4519545265%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46386_ 1))))
                                    (if (gx#stx-null? _%$%tl4519545265%_)
                                        (letrec ((_%$%loop4519645268%_
                                                  (lambda (_%$%hd4519445272%_
                                                           _%$%body4520045275%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4519445272%_)
                                                        (let ((_%$%e4519745277%_
                                                               (gx#syntax-e
                                                                _%$%hd4519445272%_)))
                                                          (let ((_%$%lp-hd4519845281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4519745277%_)))
                        (_%$%lp-tl4519945284%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4519745277%_))))
                    (_%$%loop4519645268%_
                     _%$%lp-tl4519945284%_
                     (cons _%$%lp-hd4519845281%_ _%$%body4520045275%_))))
                (let* ((_%$%body4520145287%_ (reverse _%$%body4520045275%_))
                       (_%subs45701%_
                        (map (lambda (_%clause45314%_)
                               (let* ((_%__stx4618946190%_ _%clause45314%_)
                                      (_%$%g4532045391%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4618946190%_))))
                                 (let ((_%__kont4619246193%_
                                        (lambda (_%$%g4532245670%_
                                                 _%$%g4532345672%_)
                                          (cons _%$%g4532345672%_
                                                (gx#syntax-local-temp
                                                 (gx#stx-e
                                                  _%$%g4532245670%_)))))
                                       (_%__kont4619446195%_
                                        (lambda (_%$%g4533645604%_
                                                 _%$%g4533745606%_)
                                          (cons _%$%g4533745606%_
                                                (gx#genident 'local-id))))
                                       (_%__kont4619646197%_
                                        (lambda (_%$%g4535045538%_
                                                 _%$%g4535145540%_)
                                          (cons _%$%g4535145540%_
                                                (gx#syntax-local-introduce
                                                 _%$%g4535045538%_))))
                                       (_%__kont4619846199%_
                                        (lambda (_%$%g4536445456%_
                                                 _%$%g4536545458%_
                                                 _%$%g4536645459%_
                                                 _%$%g4536745460%_)
                                          (cons _%$%g4536745460%_
                                                (gx#stx-identifier
                                                 _%$%g4536645459%_
                                                 (cons _%$%g4536545458%_
                                                       (foldr (lambda (_%$%g4548245485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g4548345488%_)
                        (cons _%$%g4548245485%_ _%$%g4548345488%_))
                      '()
                      _%$%g4536445456%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_%__match4632446325%_
                                           (lambda (_%$%e4536845398%_
                                                    _%$%hd4536945402%_
                                                    _%$%tl4537045405%_
                                                    _%$%e4537145408%_
                                                    _%$%hd4537245412%_
                                                    _%$%tl4537345415%_
                                                    _%$%e4537445418%_
                                                    _%$%hd4537545422%_
                                                    _%$%tl4537645425%_
                                                    _%__splice4620046201%_
                                                    _%$%target4537745428%_
                                                    _%$%tl4537945431%_)
                                             (letrec ((_%$%loop4538045434%_
                                                       (lambda (_%$%hd4537845438%_
                                                                _%$%components4538445441%_)
                                                         (if (gx#stx-pair?
                                                              _%$%hd4537845438%_)
                                                             (let ((_%$%e4538145443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%$%hd4537845438%_)))
                       (let ((_%$%lp-tl4538345450%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4538145443%_)))
                             (_%$%lp-hd4538245447%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4538145443%_))))
                         (_%$%loop4538045434%_
                          _%$%lp-tl4538345450%_
                          (cons _%$%lp-hd4538245447%_
                                _%$%components4538445441%_))))
                     (let ((_%$%components4538545453%_
                            (reverse _%$%components4538445441%_)))
                       (let ((_%$%g4536445456%_ _%$%components4538545453%_)
                             (_%$%g4536545458%_ _%$%hd4537545422%_)
                             (_%$%g4536645459%_ _%$%hd4537245412%_)
                             (_%$%g4536745460%_ _%$%hd4536945402%_))
                         (if (gx#identifier? _%$%g4536745460%_)
                             (_%__kont4619846199%_
                              _%$%g4536445456%_
                              _%$%g4536545458%_
                              _%$%g4536645459%_
                              _%$%g4536745460%_)
                             (_%$%g4532045391%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop4538045434%_
                                                _%$%target4537745428%_
                                                '()))))
                                          (_%__match4629846299%_
                                           (lambda (_%$%e4535245498%_
                                                    _%$%hd4535345502%_
                                                    _%$%tl4535445505%_
                                                    _%$%e4535545508%_
                                                    _%$%hd4535645512%_
                                                    _%$%tl4535745515%_
                                                    _%$%e4535845518%_
                                                    _%$%hd4535945522%_
                                                    _%$%tl4536045525%_
                                                    _%$%e4536145528%_
                                                    _%$%hd4536245532%_
                                                    _%$%tl4536345535%_)
                                             (let ((_%$%g4535045538%_
                                                    _%$%hd4536245532%_)
                                                   (_%$%g4535145540%_
                                                    _%$%hd4535345502%_))
                                               (if (and (gx#identifier?
                                                         _%$%g4535145540%_)
                                                        (gx#identifier?
                                                         _%$%g4535045538%_))
                                                   (_%__kont4619646197%_
                                                    _%$%g4535045538%_
                                                    _%$%g4535145540%_)
                                                   (_%$%g4532045391%_)))))
                                          (_%__match4626646267%_
                                           (lambda (_%$%e4533845564%_
                                                    _%$%hd4533945568%_
                                                    _%$%tl4534045571%_
                                                    _%$%e4534145574%_
                                                    _%$%hd4534245578%_
                                                    _%$%tl4534345581%_
                                                    _%$%e4534445584%_
                                                    _%$%hd4534545588%_
                                                    _%$%tl4534645591%_
                                                    _%$%e4534745594%_
                                                    _%$%hd4534845598%_
                                                    _%$%tl4534945601%_)
                                             (let ((_%$%g4533645604%_
                                                    _%$%hd4534845598%_)
                                                   (_%$%g4533745606%_
                                                    _%$%hd4533945568%_))
                                               (if (and (gx#identifier?
                                                         _%$%g4533745606%_)
                                                        (gx#identifier?
                                                         _%$%g4533645604%_))
                                                   (_%__kont4619446195%_
                                                    _%$%g4533645604%_
                                                    _%$%g4533745606%_)
                                                   (_%$%g4532045391%_)))))
                                          (_%__match4623446235%_
                                           (lambda (_%$%e4532445630%_
                                                    _%$%hd4532545634%_
                                                    _%$%tl4532645637%_
                                                    _%$%e4532745640%_
                                                    _%$%hd4532845644%_
                                                    _%$%tl4532945647%_
                                                    _%$%e4533045650%_
                                                    _%$%hd4533145654%_
                                                    _%$%tl4533245657%_
                                                    _%$%e4533345660%_
                                                    _%$%hd4533445664%_
                                                    _%$%tl4533545667%_)
                                             (let ((_%$%g4532245670%_
                                                    _%$%hd4533445664%_)
                                                   (_%$%g4532345672%_
                                                    _%$%hd4532545634%_))
                                               (if (and (gx#identifier?
                                                         _%$%g4532345672%_)
                                                        (gx#identifier?
                                                         _%$%g4532245670%_))
                                                   (_%__kont4619246193%_
                                                    _%$%g4532245670%_
                                                    _%$%g4532345672%_)
                                                   (_%$%g4532045391%_))))))
                                     (if (gx#stx-pair? _%__stx4618946190%_)
                                         (let ((_%$%e4532445630%_
                                                (gx#syntax-e
                                                 _%__stx4618946190%_)))
                                           (let ((_%$%tl4532645637%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4532445630%_)))
                                                 (_%$%hd4532545634%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4532445630%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl4532645637%_)
                                                 (let ((_%$%e4532745640%_
                                                        (gx#syntax-e
                                                         _%$%tl4532645637%_)))
                                                   (let ((_%$%tl4532945647%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e4532745640%_)))
                                                         (_%$%hd4532845644%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e4532745640%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%hd4532845644%_)
                                                         (let ((_%$%e4533045650%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd4532845644%_)))
                   (let ((_%$%tl4533245657%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e4533045650%_)))
                         (_%$%hd4533145654%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e4533045650%_))))
                     (if (gx#identifier? _%$%hd4533145654%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/more-sugar[1]#_g46388_|
                              _%$%hd4533145654%_)
                             (if (gx#stx-pair? _%$%tl4533245657%_)
                                 (let ((_%$%e4533345660%_
                                        (gx#syntax-e _%$%tl4533245657%_)))
                                   (let ((_%$%tl4533545667%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e4533345660%_)))
                                         (_%$%hd4533445664%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e4533345660%_))))
                                     (if (gx#stx-null? _%$%tl4533545667%_)
                                         (if (gx#stx-null? _%$%tl4532945647%_)
                                             (_%__match4623446235%_
                                              _%$%e4532445630%_
                                              _%$%hd4532545634%_
                                              _%$%tl4532645637%_
                                              _%$%e4532745640%_
                                              _%$%hd4532845644%_
                                              _%$%tl4532945647%_
                                              _%$%e4533045650%_
                                              _%$%hd4533145654%_
                                              _%$%tl4533245657%_
                                              _%$%e4533345660%_
                                              _%$%hd4533445664%_
                                              _%$%tl4533545667%_)
                                             (if (gx#stx-pair?
                                                  _%$%tl4532945647%_)
                                                 (let ((_%$%e4537445418%_
                                                        (gx#syntax-e
                                                         _%$%tl4532945647%_)))
                                                   (let ((_%$%tl4537645425%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e4537445418%_)))
                                                         (_%$%hd4537545422%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e4537445418%_))))
                                                     (if (gx#stx-pair/null?
                                                          _%$%tl4537645425%_)
                                                         (let ((_%__splice4620046201%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4537645425%_
                         '0)))
                   (let ((_%$%tl4537945431%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4620046201%_ '1)))
                         (_%$%target4537745428%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4620046201%_ '0))))
                     (if (gx#stx-null? _%$%tl4537945431%_)
                         (_%__match4632446325%_
                          _%$%e4532445630%_
                          _%$%hd4532545634%_
                          _%$%tl4532645637%_
                          _%$%e4532745640%_
                          _%$%hd4532845644%_
                          _%$%tl4532945647%_
                          _%$%e4537445418%_
                          _%$%hd4537545422%_
                          _%$%tl4537645425%_
                          _%__splice4620046201%_
                          _%$%target4537745428%_
                          _%$%tl4537945431%_)
                         (_%$%g4532045391%_))))
                 (_%$%g4532045391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g4532045391%_)))
                                         (if (gx#stx-pair? _%$%tl4532945647%_)
                                             (let ((_%$%e4537445418%_
                                                    (gx#syntax-e
                                                     _%$%tl4532945647%_)))
                                               (let ((_%$%tl4537645425%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e4537445418%_)))
                                                     (_%$%hd4537545422%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e4537445418%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%$%tl4537645425%_)
                                                     (let ((_%__splice4620046201%_
                                                            (gx#syntax-split-splice->vector
                                                             _%$%tl4537645425%_
                                                             '0)))
                                                       (let ((_%$%tl4537945431%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4620046201%_ '1)))
                     (_%$%target4537745428%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4620046201%_ '0))))
                 (if (gx#stx-null? _%$%tl4537945431%_)
                     (_%__match4632446325%_
                      _%$%e4532445630%_
                      _%$%hd4532545634%_
                      _%$%tl4532645637%_
                      _%$%e4532745640%_
                      _%$%hd4532845644%_
                      _%$%tl4532945647%_
                      _%$%e4537445418%_
                      _%$%hd4537545422%_
                      _%$%tl4537645425%_
                      _%__splice4620046201%_
                      _%$%target4537745428%_
                      _%$%tl4537945431%_)
                     (_%$%g4532045391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4532045391%_))))
                                             (_%$%g4532045391%_)))))
                                 (if (gx#stx-pair? _%$%tl4532945647%_)
                                     (let ((_%$%e4537445418%_
                                            (gx#syntax-e _%$%tl4532945647%_)))
                                       (let ((_%$%tl4537645425%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4537445418%_)))
                                             (_%$%hd4537545422%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4537445418%_))))
                                         (if (gx#stx-pair/null?
                                              _%$%tl4537645425%_)
                                             (let ((_%__splice4620046201%_
                                                    (gx#syntax-split-splice->vector
                                                     _%$%tl4537645425%_
                                                     '0)))
                                               (let ((_%$%tl4537945431%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4620046201%_
                                                         '1)))
                                                     (_%$%target4537745428%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4620046201%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%$%tl4537945431%_)
                                                     (_%__match4632446325%_
                                                      _%$%e4532445630%_
                                                      _%$%hd4532545634%_
                                                      _%$%tl4532645637%_
                                                      _%$%e4532745640%_
                                                      _%$%hd4532845644%_
                                                      _%$%tl4532945647%_
                                                      _%$%e4537445418%_
                                                      _%$%hd4537545422%_
                                                      _%$%tl4537645425%_
                                                      _%__splice4620046201%_
                                                      _%$%target4537745428%_
                                                      _%$%tl4537945431%_)
                                                     (_%$%g4532045391%_))))
                                             (_%$%g4532045391%_))))
                                     (_%$%g4532045391%_)))
                             (if (gx#free-identifier=?
                                  |gerbil/core/more-sugar[1]#_g46389_|
                                  _%$%hd4533145654%_)
                                 (if (gx#stx-pair? _%$%tl4533245657%_)
                                     (let ((_%$%e4534745594%_
                                            (gx#syntax-e _%$%tl4533245657%_)))
                                       (let ((_%$%tl4534945601%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4534745594%_)))
                                             (_%$%hd4534845598%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4534745594%_))))
                                         (if (gx#stx-null? _%$%tl4534945601%_)
                                             (if (gx#stx-null?
                                                  _%$%tl4532945647%_)
                                                 (_%__match4626646267%_
                                                  _%$%e4532445630%_
                                                  _%$%hd4532545634%_
                                                  _%$%tl4532645637%_
                                                  _%$%e4532745640%_
                                                  _%$%hd4532845644%_
                                                  _%$%tl4532945647%_
                                                  _%$%e4533045650%_
                                                  _%$%hd4533145654%_
                                                  _%$%tl4533245657%_
                                                  _%$%e4534745594%_
                                                  _%$%hd4534845598%_
                                                  _%$%tl4534945601%_)
                                                 (if (gx#stx-pair?
                                                      _%$%tl4532945647%_)
                                                     (let ((_%$%e4537445418%_
                                                            (gx#syntax-e
                                                             _%$%tl4532945647%_)))
                                                       (let ((_%$%tl4537645425%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e4537445418%_)))
                     (_%$%hd4537545422%_
                      (let () (declare (not safe)) (##car _%$%e4537445418%_))))
                 (if (gx#stx-pair/null? _%$%tl4537645425%_)
                     (let ((_%__splice4620046201%_
                            (gx#syntax-split-splice->vector
                             _%$%tl4537645425%_
                             '0)))
                       (let ((_%$%tl4537945431%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4620046201%_ '1)))
                             (_%$%target4537745428%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4620046201%_ '0))))
                         (if (gx#stx-null? _%$%tl4537945431%_)
                             (_%__match4632446325%_
                              _%$%e4532445630%_
                              _%$%hd4532545634%_
                              _%$%tl4532645637%_
                              _%$%e4532745640%_
                              _%$%hd4532845644%_
                              _%$%tl4532945647%_
                              _%$%e4537445418%_
                              _%$%hd4537545422%_
                              _%$%tl4537645425%_
                              _%__splice4620046201%_
                              _%$%target4537745428%_
                              _%$%tl4537945431%_)
                             (_%$%g4532045391%_))))
                     (_%$%g4532045391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4532045391%_)))
                                             (if (gx#stx-pair?
                                                  _%$%tl4532945647%_)
                                                 (let ((_%$%e4537445418%_
                                                        (gx#syntax-e
                                                         _%$%tl4532945647%_)))
                                                   (let ((_%$%tl4537645425%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e4537445418%_)))
                                                         (_%$%hd4537545422%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e4537445418%_))))
                                                     (if (gx#stx-pair/null?
                                                          _%$%tl4537645425%_)
                                                         (let ((_%__splice4620046201%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4537645425%_
                         '0)))
                   (let ((_%$%tl4537945431%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4620046201%_ '1)))
                         (_%$%target4537745428%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4620046201%_ '0))))
                     (if (gx#stx-null? _%$%tl4537945431%_)
                         (_%__match4632446325%_
                          _%$%e4532445630%_
                          _%$%hd4532545634%_
                          _%$%tl4532645637%_
                          _%$%e4532745640%_
                          _%$%hd4532845644%_
                          _%$%tl4532945647%_
                          _%$%e4537445418%_
                          _%$%hd4537545422%_
                          _%$%tl4537645425%_
                          _%__splice4620046201%_
                          _%$%target4537745428%_
                          _%$%tl4537945431%_)
                         (_%$%g4532045391%_))))
                 (_%$%g4532045391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g4532045391%_)))))
                                     (if (gx#stx-pair? _%$%tl4532945647%_)
                                         (let ((_%$%e4537445418%_
                                                (gx#syntax-e
                                                 _%$%tl4532945647%_)))
                                           (let ((_%$%tl4537645425%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4537445418%_)))
                                                 (_%$%hd4537545422%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4537445418%_))))
                                             (if (gx#stx-pair/null?
                                                  _%$%tl4537645425%_)
                                                 (let ((_%__splice4620046201%_
                                                        (gx#syntax-split-splice->vector
                                                         _%$%tl4537645425%_
                                                         '0)))
                                                   (let ((_%$%tl4537945431%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4620046201%_
                                                             '1)))
                                                         (_%$%target4537745428%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4620046201%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%$%tl4537945431%_)
                                                         (_%__match4632446325%_
                                                          _%$%e4532445630%_
                                                          _%$%hd4532545634%_
                                                          _%$%tl4532645637%_
                                                          _%$%e4532745640%_
                                                          _%$%hd4532845644%_
                                                          _%$%tl4532945647%_
                                                          _%$%e4537445418%_
                                                          _%$%hd4537545422%_
                                                          _%$%tl4537645425%_
                                                          _%__splice4620046201%_
                                                          _%$%target4537745428%_
                                                          _%$%tl4537945431%_)
                                                         (_%$%g4532045391%_))))
                                                 (_%$%g4532045391%_))))
                                         (_%$%g4532045391%_)))
                                 (if (gx#free-identifier=?
                                      |gerbil/core/more-sugar[1]#_g46390_|
                                      _%$%hd4533145654%_)
                                     (if (gx#stx-pair? _%$%tl4533245657%_)
                                         (let ((_%$%e4536145528%_
                                                (gx#syntax-e
                                                 _%$%tl4533245657%_)))
                                           (let ((_%$%tl4536345535%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4536145528%_)))
                                                 (_%$%hd4536245532%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4536145528%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl4536345535%_)
                                                 (if (gx#stx-null?
                                                      _%$%tl4532945647%_)
                                                     (_%__match4629846299%_
                                                      _%$%e4532445630%_
                                                      _%$%hd4532545634%_
                                                      _%$%tl4532645637%_
                                                      _%$%e4532745640%_
                                                      _%$%hd4532845644%_
                                                      _%$%tl4532945647%_
                                                      _%$%e4533045650%_
                                                      _%$%hd4533145654%_
                                                      _%$%tl4533245657%_
                                                      _%$%e4536145528%_
                                                      _%$%hd4536245532%_
                                                      _%$%tl4536345535%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl4532945647%_)
                                                         (let ((_%$%e4537445418%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4532945647%_)))
                   (let ((_%$%tl4537645425%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e4537445418%_)))
                         (_%$%hd4537545422%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e4537445418%_))))
                     (if (gx#stx-pair/null? _%$%tl4537645425%_)
                         (let ((_%__splice4620046201%_
                                (gx#syntax-split-splice->vector
                                 _%$%tl4537645425%_
                                 '0)))
                           (let ((_%$%tl4537945431%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4620046201%_ '1)))
                                 (_%$%target4537745428%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4620046201%_ '0))))
                             (if (gx#stx-null? _%$%tl4537945431%_)
                                 (_%__match4632446325%_
                                  _%$%e4532445630%_
                                  _%$%hd4532545634%_
                                  _%$%tl4532645637%_
                                  _%$%e4532745640%_
                                  _%$%hd4532845644%_
                                  _%$%tl4532945647%_
                                  _%$%e4537445418%_
                                  _%$%hd4537545422%_
                                  _%$%tl4537645425%_
                                  _%__splice4620046201%_
                                  _%$%target4537745428%_
                                  _%$%tl4537945431%_)
                                 (_%$%g4532045391%_))))
                         (_%$%g4532045391%_))))
                 (_%$%g4532045391%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%$%tl4532945647%_)
                                                     (let ((_%$%e4537445418%_
                                                            (gx#syntax-e
                                                             _%$%tl4532945647%_)))
                                                       (let ((_%$%tl4537645425%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e4537445418%_)))
                     (_%$%hd4537545422%_
                      (let () (declare (not safe)) (##car _%$%e4537445418%_))))
                 (if (gx#stx-pair/null? _%$%tl4537645425%_)
                     (let ((_%__splice4620046201%_
                            (gx#syntax-split-splice->vector
                             _%$%tl4537645425%_
                             '0)))
                       (let ((_%$%tl4537945431%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4620046201%_ '1)))
                             (_%$%target4537745428%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4620046201%_ '0))))
                         (if (gx#stx-null? _%$%tl4537945431%_)
                             (_%__match4632446325%_
                              _%$%e4532445630%_
                              _%$%hd4532545634%_
                              _%$%tl4532645637%_
                              _%$%e4532745640%_
                              _%$%hd4532845644%_
                              _%$%tl4532945647%_
                              _%$%e4537445418%_
                              _%$%hd4537545422%_
                              _%$%tl4537645425%_
                              _%__splice4620046201%_
                              _%$%target4537745428%_
                              _%$%tl4537945431%_)
                             (_%$%g4532045391%_))))
                     (_%$%g4532045391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4532045391%_)))))
                                         (if (gx#stx-pair? _%$%tl4532945647%_)
                                             (let ((_%$%e4537445418%_
                                                    (gx#syntax-e
                                                     _%$%tl4532945647%_)))
                                               (let ((_%$%tl4537645425%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e4537445418%_)))
                                                     (_%$%hd4537545422%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e4537445418%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%$%tl4537645425%_)
                                                     (let ((_%__splice4620046201%_
                                                            (gx#syntax-split-splice->vector
                                                             _%$%tl4537645425%_
                                                             '0)))
                                                       (let ((_%$%tl4537945431%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4620046201%_ '1)))
                     (_%$%target4537745428%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4620046201%_ '0))))
                 (if (gx#stx-null? _%$%tl4537945431%_)
                     (_%__match4632446325%_
                      _%$%e4532445630%_
                      _%$%hd4532545634%_
                      _%$%tl4532645637%_
                      _%$%e4532745640%_
                      _%$%hd4532845644%_
                      _%$%tl4532945647%_
                      _%$%e4537445418%_
                      _%$%hd4537545422%_
                      _%$%tl4537645425%_
                      _%__splice4620046201%_
                      _%$%target4537745428%_
                      _%$%tl4537945431%_)
                     (_%$%g4532045391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4532045391%_))))
                                             (_%$%g4532045391%_)))
                                     (if (gx#stx-pair? _%$%tl4532945647%_)
                                         (let ((_%$%e4537445418%_
                                                (gx#syntax-e
                                                 _%$%tl4532945647%_)))
                                           (let ((_%$%tl4537645425%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4537445418%_)))
                                                 (_%$%hd4537545422%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4537445418%_))))
                                             (if (gx#stx-pair/null?
                                                  _%$%tl4537645425%_)
                                                 (let ((_%__splice4620046201%_
                                                        (gx#syntax-split-splice->vector
                                                         _%$%tl4537645425%_
                                                         '0)))
                                                   (let ((_%$%tl4537945431%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4620046201%_
                                                             '1)))
                                                         (_%$%target4537745428%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4620046201%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%$%tl4537945431%_)
                                                         (_%__match4632446325%_
                                                          _%$%e4532445630%_
                                                          _%$%hd4532545634%_
                                                          _%$%tl4532645637%_
                                                          _%$%e4532745640%_
                                                          _%$%hd4532845644%_
                                                          _%$%tl4532945647%_
                                                          _%$%e4537445418%_
                                                          _%$%hd4537545422%_
                                                          _%$%tl4537645425%_
                                                          _%__splice4620046201%_
                                                          _%$%target4537745428%_
                                                          _%$%tl4537945431%_)
                                                         (_%$%g4532045391%_))))
                                                 (_%$%g4532045391%_))))
                                         (_%$%g4532045391%_)))))
                         (if (gx#stx-pair? _%$%tl4532945647%_)
                             (let ((_%$%e4537445418%_
                                    (gx#syntax-e _%$%tl4532945647%_)))
                               (let ((_%$%tl4537645425%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4537445418%_)))
                                     (_%$%hd4537545422%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4537445418%_))))
                                 (if (gx#stx-pair/null? _%$%tl4537645425%_)
                                     (let ((_%__splice4620046201%_
                                            (gx#syntax-split-splice->vector
                                             _%$%tl4537645425%_
                                             '0)))
                                       (let ((_%$%tl4537945431%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4620046201%_
                                                 '1)))
                                             (_%$%target4537745428%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4620046201%_
                                                 '0))))
                                         (if (gx#stx-null? _%$%tl4537945431%_)
                                             (_%__match4632446325%_
                                              _%$%e4532445630%_
                                              _%$%hd4532545634%_
                                              _%$%tl4532645637%_
                                              _%$%e4532745640%_
                                              _%$%hd4532845644%_
                                              _%$%tl4532945647%_
                                              _%$%e4537445418%_
                                              _%$%hd4537545422%_
                                              _%$%tl4537645425%_
                                              _%__splice4620046201%_
                                              _%$%target4537745428%_
                                              _%$%tl4537945431%_)
                                             (_%$%g4532045391%_))))
                                     (_%$%g4532045391%_))))
                             (_%$%g4532045391%_)))))
                 (if (gx#stx-pair? _%$%tl4532945647%_)
                     (let ((_%$%e4537445418%_
                            (gx#syntax-e _%$%tl4532945647%_)))
                       (let ((_%$%tl4537645425%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4537445418%_)))
                             (_%$%hd4537545422%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4537445418%_))))
                         (if (gx#stx-pair/null? _%$%tl4537645425%_)
                             (let ((_%__splice4620046201%_
                                    (gx#syntax-split-splice->vector
                                     _%$%tl4537645425%_
                                     '0)))
                               (let ((_%$%tl4537945431%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4620046201%_
                                         '1)))
                                     (_%$%target4537745428%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4620046201%_
                                         '0))))
                                 (if (gx#stx-null? _%$%tl4537945431%_)
                                     (_%__match4632446325%_
                                      _%$%e4532445630%_
                                      _%$%hd4532545634%_
                                      _%$%tl4532645637%_
                                      _%$%e4532745640%_
                                      _%$%hd4532845644%_
                                      _%$%tl4532945647%_
                                      _%$%e4537445418%_
                                      _%$%hd4537545422%_
                                      _%$%tl4537645425%_
                                      _%__splice4620046201%_
                                      _%$%target4537745428%_
                                      _%$%tl4537945431%_)
                                     (_%$%g4532045391%_))))
                             (_%$%g4532045391%_))))
                     (_%$%g4532045391%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g4532045391%_))))
                                         (_%$%g4532045391%_))))))
                             (gx#syntax->list
                              (foldr (lambda (_%$%g4569245695%_
                                              _%$%g4569345698%_)
                                       (cons _%$%g4569245695%_
                                             _%$%g4569345698%_))
                                     '()
                                     _%$%clause4519245259%_)))))
                  (|gerbil/core/more-sugar[1]#stx-substitute__0|
                   _%subs45701%_
                   (cons (gx#datum->syntax '#f 'begin)
                         (foldr (lambda (_%$%g4570345706%_ _%$%g4570445709%_)
                                  (cons _%$%g4570345706%_ _%$%g4570445709%_))
                                '()
                                _%$%body4520145287%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4519645268%_
                                           _%$%target4519345262%_
                                           '()))
                                        (_%$%g4517445207%_
                                         _%$%g4517545211%_)))))
                              (_%$%g4517445207%_ _%$%g4517545211%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4518745240%_
                                                   _%$%target4518445234%_
                                                   '()))
                                                (_%$%g4517445207%_
                                                 _%$%g4517545211%_)))))
                                      (_%$%g4517445207%_ _%$%g4517545211%_))))
                              (_%$%g4517445207%_ _%$%g4517545211%_))))
                      (_%$%g4517445207%_ _%$%g4517545211%_)))))
          (_%$%g4517345712%_ _%stx45171%_))))))
