(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g98243_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx97863%_)
      (let* ((_%g9786697904%_
              (lambda (_%g9786797900%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9786797900%_)))
             (_%g9786598073%_
              (lambda (_%g9786797908%_)
                (if (gx#stx-pair? _%g9786797908%_)
                    (let ((_%e9787497911%_ (gx#syntax-e _%g9786797908%_)))
                      (let ((_%hd9787397915%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9787497911%_)))
                            (_%tl9787297918%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9787497911%_))))
                        (if (gx#stx-pair? _%tl9787297918%_)
                            (let ((_%e9787797921%_
                                   (gx#syntax-e _%tl9787297918%_)))
                              (let ((_%hd9787697925%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9787797921%_)))
                                    (_%tl9787597928%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9787797921%_))))
                                (if (gx#stx-pair? _%hd9787697925%_)
                                    (let ((_%e9788097931%_
                                           (gx#syntax-e _%hd9787697925%_)))
                                      (let ((_%hd9787997935%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9788097931%_)))
                                            (_%tl9787897938%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9788097931%_))))
                                        (if (gx#stx-pair? _%tl9787897938%_)
                                            (let ((_%e9788397941%_
                                                   (gx#syntax-e
                                                    _%tl9787897938%_)))
                                              (let ((_%hd9788297945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9788397941%_)))
                                                    (_%tl9788197948%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9788397941%_))))
                                                (if (gx#stx-null?
                                                     _%tl9788197948%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9787597928%_)
                                                        (let ((_%e9788697951%_
                                                               (gx#syntax-e
                                                                _%tl9787597928%_)))
                                                          (let ((_%hd9788597955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e9788697951%_)))
                        (_%tl9788497958%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e9788697951%_))))
                    (if (gx#identifier? _%hd9788597955%_)
                        (if (gx#free-identifier=?
                             |[1]#_g98243_|
                             _%hd9788597955%_)
                            (if (gx#stx-pair? _%tl9788497958%_)
                                (let ((_%e9788997961%_
                                       (gx#syntax-e _%tl9788497958%_)))
                                  (let ((_%hd9788897965%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9788997961%_)))
                                        (_%tl9788797968%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9788997961%_))))
                                    (if (gx#stx-pair/null? _%tl9788797968%_)
                                        (let ((_g98244_
                                               (gx#syntax-split-splice
                                                _%tl9788797968%_
                                                '0)))
                                          (begin
                                            (let ((_g98245_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g98244_)
                                                         (##vector-length
                                                          _g98244_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g98245_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g98245_)))
                                            (let ((_%target9789097971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98244_
                                                      0)))
                                                  (_%tl9789297974%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98244_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl9789297974%_)
                                                  (letrec ((_%loop9789397977%_
                                                            (lambda (_%hd9789197981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body9789797984%_)
                      (if (gx#stx-pair? _%hd9789197981%_)
                          (let ((_%e9789497987%_
                                 (gx#syntax-e _%hd9789197981%_)))
                            (let ((_%lp-hd9789597991%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9789497987%_)))
                                  (_%lp-tl9789697994%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9789497987%_))))
                              (_%loop9789397977%_
                               _%lp-tl9789697994%_
                               (cons _%lp-hd9789597991%_ _%body9789797984%_))))
                          (let ((_%body9789897997%_
                                 (reverse _%body9789797984%_)))
                            ((lambda (_%L98001%_
                                      _%L98003%_
                                      _%L98004%_
                                      _%L98005%_)
                               (let* ((_%g9803498042%_
                                       (lambda (_%g9803598038%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9803598038%_)))
                                      (_%g9803398069%_
                                       (lambda (_%g9803598046%_)
                                         ((lambda (_%L98049%_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%L98005%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@predicate)
                                          (cons _%L98049%_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%L98004%_ '())
                                                      (let ((__tmp98246
                                                             (lambda (_%g9806098063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g9806198066%_)
                       (cons _%g9806098063%_ _%g9806198066%_))))
                (declare (not safe))
                (__foldr1 __tmp98246 '() _%L98001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9803598046%_))))
                                 (_%g9803398069%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx97863%_
                                     _%L98003%_)))))
                             _%body9789897997%_
                             _%hd9788897965%_
                             _%hd9788297945%_
                             _%hd9787997935%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop9789397977%_
                                                     _%target9789097971%_
                                                     '()))
                                                  (_%g9786697904%_
                                                   _%g9786797908%_)))))
                                        (_%g9786697904%_ _%g9786797908%_))))
                                (_%g9786697904%_ _%g9786797908%_))
                            (_%g9786697904%_ _%g9786797908%_))
                        (_%g9786697904%_ _%g9786797908%_))))
                (_%g9786697904%_ _%g9786797908%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9786697904%_
                                                     _%g9786797908%_))))
                                            (_%g9786697904%_
                                             _%g9786797908%_))))
                                    (_%g9786697904%_ _%g9786797908%_))))
                            (_%g9786697904%_ _%g9786797908%_))))
                    (_%g9786697904%_ _%g9786797908%_)))))
        (_%g9786598073%_ _%stx97863%_)))))
