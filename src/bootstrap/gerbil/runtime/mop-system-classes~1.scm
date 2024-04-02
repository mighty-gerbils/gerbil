(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g98094_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx97714%_)
      (let* ((_%g9771797755%_
              (lambda (_%g9771897751%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9771897751%_)))
             (_%g9771697924%_
              (lambda (_%g9771897759%_)
                (if (gx#stx-pair? _%g9771897759%_)
                    (let ((_%e9772597762%_ (gx#syntax-e _%g9771897759%_)))
                      (let ((_%hd9772497766%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9772597762%_)))
                            (_%tl9772397769%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9772597762%_))))
                        (if (gx#stx-pair? _%tl9772397769%_)
                            (let ((_%e9772897772%_
                                   (gx#syntax-e _%tl9772397769%_)))
                              (let ((_%hd9772797776%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9772897772%_)))
                                    (_%tl9772697779%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9772897772%_))))
                                (if (gx#stx-pair? _%hd9772797776%_)
                                    (let ((_%e9773197782%_
                                           (gx#syntax-e _%hd9772797776%_)))
                                      (let ((_%hd9773097786%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9773197782%_)))
                                            (_%tl9772997789%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9773197782%_))))
                                        (if (gx#stx-pair? _%tl9772997789%_)
                                            (let ((_%e9773497792%_
                                                   (gx#syntax-e
                                                    _%tl9772997789%_)))
                                              (let ((_%hd9773397796%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9773497792%_)))
                                                    (_%tl9773297799%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9773497792%_))))
                                                (if (gx#stx-null?
                                                     _%tl9773297799%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9772697779%_)
                                                        (let ((_%e9773797802%_
                                                               (gx#syntax-e
                                                                _%tl9772697779%_)))
                                                          (let ((_%hd9773697806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e9773797802%_)))
                        (_%tl9773597809%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e9773797802%_))))
                    (if (gx#identifier? _%hd9773697806%_)
                        (if (gx#free-identifier=?
                             |[1]#_g98094_|
                             _%hd9773697806%_)
                            (if (gx#stx-pair? _%tl9773597809%_)
                                (let ((_%e9774097812%_
                                       (gx#syntax-e _%tl9773597809%_)))
                                  (let ((_%hd9773997816%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9774097812%_)))
                                        (_%tl9773897819%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9774097812%_))))
                                    (if (gx#stx-pair/null? _%tl9773897819%_)
                                        (let ((_g98095_
                                               (gx#syntax-split-splice
                                                _%tl9773897819%_
                                                '0)))
                                          (begin
                                            (let ((_g98096_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g98095_)
                                                         (##vector-length
                                                          _g98095_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g98096_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g98096_)))
                                            (let ((_%target9774197822%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98095_
                                                      0)))
                                                  (_%tl9774397825%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98095_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl9774397825%_)
                                                  (letrec ((_%loop9774497828%_
                                                            (lambda (_%hd9774297832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body9774897835%_)
                      (if (gx#stx-pair? _%hd9774297832%_)
                          (let ((_%e9774597838%_
                                 (gx#syntax-e _%hd9774297832%_)))
                            (let ((_%lp-hd9774697842%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9774597838%_)))
                                  (_%lp-tl9774797845%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9774597838%_))))
                              (_%loop9774497828%_
                               _%lp-tl9774797845%_
                               (cons _%lp-hd9774697842%_ _%body9774897835%_))))
                          (let ((_%body9774997848%_
                                 (reverse _%body9774897835%_)))
                            ((lambda (_%L97852%_
                                      _%L97854%_
                                      _%L97855%_
                                      _%L97856%_)
                               (let* ((_%g9788597893%_
                                       (lambda (_%g9788697889%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9788697889%_)))
                                      (_%g9788497920%_
                                       (lambda (_%g9788697897%_)
                                         ((lambda (_%L97900%_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%L97856%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@predicate)
                                          (cons _%L97900%_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%L97855%_ '())
                                                      (let ((__tmp98097
                                                             (lambda (_%g9791197914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g9791297917%_)
                       (cons _%g9791197914%_ _%g9791297917%_))))
                (declare (not safe))
                (__foldr1 __tmp98097 '() _%L97852%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9788697897%_))))
                                 (_%g9788497920%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx97714%_
                                     _%L97854%_)))))
                             _%body9774997848%_
                             _%hd9773997816%_
                             _%hd9773397796%_
                             _%hd9773097786%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop9774497828%_
                                                     _%target9774197822%_
                                                     '()))
                                                  (_%g9771797755%_
                                                   _%g9771897759%_)))))
                                        (_%g9771797755%_ _%g9771897759%_))))
                                (_%g9771797755%_ _%g9771897759%_))
                            (_%g9771797755%_ _%g9771897759%_))
                        (_%g9771797755%_ _%g9771897759%_))))
                (_%g9771797755%_ _%g9771897759%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9771797755%_
                                                     _%g9771897759%_))))
                                            (_%g9771797755%_
                                             _%g9771897759%_))))
                                    (_%g9771797755%_ _%g9771897759%_))))
                            (_%g9771797755%_ _%g9771897759%_))))
                    (_%g9771797755%_ _%g9771897759%_)))))
        (_%g9771697924%_ _%stx97714%_)))))
