(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g101990_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx101617%_)
      (let* ((_%g101620101658%_
              (lambda (_%g101621101654%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g101621101654%_)))
             (_%g101619101827%_
              (lambda (_%g101621101662%_)
                (if (gx#stx-pair? _%g101621101662%_)
                    (let ((_%e101626101665%_ (gx#syntax-e _%g101621101662%_)))
                      (let ((_%hd101627101669%_
                             (let ()
                               (declare (not safe))
                               (##car _%e101626101665%_)))
                            (_%tl101628101672%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e101626101665%_))))
                        (if (gx#stx-pair? _%tl101628101672%_)
                            (let ((_%e101629101675%_
                                   (gx#syntax-e _%tl101628101672%_)))
                              (let ((_%hd101630101679%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e101629101675%_)))
                                    (_%tl101631101682%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e101629101675%_))))
                                (if (gx#stx-pair? _%hd101630101679%_)
                                    (let ((_%e101632101685%_
                                           (gx#syntax-e _%hd101630101679%_)))
                                      (let ((_%hd101633101689%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e101632101685%_)))
                                            (_%tl101634101692%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e101632101685%_))))
                                        (if (gx#stx-pair? _%tl101634101692%_)
                                            (let ((_%e101635101695%_
                                                   (gx#syntax-e
                                                    _%tl101634101692%_)))
                                              (let ((_%hd101636101699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e101635101695%_)))
                                                    (_%tl101637101702%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e101635101695%_))))
                                                (if (gx#stx-null?
                                                     _%tl101637101702%_)
                                                    (if (gx#stx-pair?
                                                         _%tl101631101682%_)
                                                        (let ((_%e101638101705%_
                                                               (gx#syntax-e
                                                                _%tl101631101682%_)))
                                                          (let ((_%hd101639101709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e101638101705%_)))
                        (_%tl101640101712%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e101638101705%_))))
                    (if (gx#identifier? _%hd101639101709%_)
                        (if (gx#free-identifier=?
                             |[1]#_g101990_|
                             _%hd101639101709%_)
                            (if (gx#stx-pair? _%tl101640101712%_)
                                (let ((_%e101641101715%_
                                       (gx#syntax-e _%tl101640101712%_)))
                                  (let ((_%hd101642101719%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e101641101715%_)))
                                        (_%tl101643101722%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e101641101715%_))))
                                    (if (gx#stx-pair/null? _%tl101643101722%_)
                                        (let ((_g101991_
                                               (gx#syntax-split-splice
                                                _%tl101643101722%_
                                                '0)))
                                          (begin
                                            (let ((_g101992_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g101991_)
                                                         (##vector-length
                                                          _g101991_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g101992_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g101992_)))
                                            (let ((_%target101644101725%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g101991_
                                                      0)))
                                                  (_%tl101646101728%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g101991_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl101646101728%_)
                                                  (letrec ((_%loop101647101731%_
                                                            (lambda (_%hd101645101735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body101651101738%_)
                      (if (gx#stx-pair? _%hd101645101735%_)
                          (let ((_%e101648101741%_
                                 (gx#syntax-e _%hd101645101735%_)))
                            (let ((_%lp-hd101649101745%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e101648101741%_)))
                                  (_%lp-tl101650101748%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e101648101741%_))))
                              (_%loop101647101731%_
                               _%lp-tl101650101748%_
                               (cons _%lp-hd101649101745%_
                                     _%body101651101738%_))))
                          (let ((_%body101652101751%_
                                 (reverse _%body101651101738%_)))
                            ((lambda (_%L101755%_
                                      _%L101757%_
                                      _%L101758%_
                                      _%L101759%_)
                               (let* ((_%g101788101796%_
                                       (lambda (_%g101789101792%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g101789101792%_)))
                                      (_%g101787101823%_
                                       (lambda (_%g101789101800%_)
                                         ((lambda (_%L101803%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L101759%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L101803%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L101758%_ '())
                                                    (let ((__tmp101993
                                                           (lambda (_%g101814101817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g101815101820%_)
                     (cons _%g101814101817%_ _%g101815101820%_))))
              (declare (not safe))
              (__foldr1 __tmp101993 '() _%L101755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g101789101800%_))))
                                 (_%g101787101823%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx101617%_
                                     _%L101757%_)))))
                             _%body101652101751%_
                             _%hd101642101719%_
                             _%hd101636101699%_
                             _%hd101633101689%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop101647101731%_
                                                     _%target101644101725%_
                                                     '()))
                                                  (_%g101620101658%_
                                                   _%g101621101662%_)))))
                                        (_%g101620101658%_
                                         _%g101621101662%_))))
                                (_%g101620101658%_ _%g101621101662%_))
                            (_%g101620101658%_ _%g101621101662%_))
                        (_%g101620101658%_ _%g101621101662%_))))
                (_%g101620101658%_ _%g101621101662%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g101620101658%_
                                                     _%g101621101662%_))))
                                            (_%g101620101658%_
                                             _%g101621101662%_))))
                                    (_%g101620101658%_ _%g101621101662%_))))
                            (_%g101620101658%_ _%g101621101662%_))))
                    (_%g101620101658%_ _%g101621101662%_)))))
        (_%g101619101827%_ _%stx101617%_)))))
