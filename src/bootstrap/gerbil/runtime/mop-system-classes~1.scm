(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g112905_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx112495%_)
      (let* ((_%g112498112536%_
              (lambda (_%g112499112532%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g112499112532%_)))
             (_%g112497112703%_
              (lambda (_%g112499112540%_)
                (if (gx#stx-pair? _%g112499112540%_)
                    (let ((_%e112504112543%_ (gx#syntax-e _%g112499112540%_)))
                      (let ((_%hd112505112547%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112504112543%_)))
                            (_%tl112506112550%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112504112543%_))))
                        (if (gx#stx-pair? _%tl112506112550%_)
                            (let ((_%e112507112553%_
                                   (gx#syntax-e _%tl112506112550%_)))
                              (let ((_%hd112508112557%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e112507112553%_)))
                                    (_%tl112509112560%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e112507112553%_))))
                                (if (gx#stx-pair? _%hd112508112557%_)
                                    (let ((_%e112510112563%_
                                           (gx#syntax-e _%hd112508112557%_)))
                                      (let ((_%hd112511112567%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e112510112563%_)))
                                            (_%tl112512112570%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e112510112563%_))))
                                        (if (gx#stx-pair? _%tl112512112570%_)
                                            (let ((_%e112513112573%_
                                                   (gx#syntax-e
                                                    _%tl112512112570%_)))
                                              (let ((_%hd112514112577%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e112513112573%_)))
                                                    (_%tl112515112580%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e112513112573%_))))
                                                (if (gx#stx-null?
                                                     _%tl112515112580%_)
                                                    (if (gx#stx-pair?
                                                         _%tl112509112560%_)
                                                        (let ((_%e112516112583%_
                                                               (gx#syntax-e
                                                                _%tl112509112560%_)))
                                                          (let ((_%hd112517112587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e112516112583%_)))
                        (_%tl112518112590%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e112516112583%_))))
                    (if (gx#identifier? _%hd112517112587%_)
                        (if (gx#free-identifier=?
                             |[1]#_g112905_|
                             _%hd112517112587%_)
                            (if (gx#stx-pair? _%tl112518112590%_)
                                (let ((_%e112519112593%_
                                       (gx#syntax-e _%tl112518112590%_)))
                                  (let ((_%hd112520112597%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e112519112593%_)))
                                        (_%tl112521112600%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e112519112593%_))))
                                    (if (gx#stx-pair/null? _%tl112521112600%_)
                                        (let ((_g112906_
                                               (gx#syntax-split-splice
                                                _%tl112521112600%_
                                                '0)))
                                          (begin
                                            (let ((_g112907_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g112906_)
                                                         (##values-length
                                                          _g112906_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g112907_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g112907_)))
                                            (let ((_%target112522112603%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g112906_
                                                      0)))
                                                  (_%tl112524112606%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g112906_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl112524112606%_)
                                                  (letrec ((_%loop112525112609%_
                                                            (lambda (_%hd112523112613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body112529112616%_)
                      (if (gx#stx-pair? _%hd112523112613%_)
                          (let ((_%e112526112618%_
                                 (gx#syntax-e _%hd112523112613%_)))
                            (let ((_%lp-hd112527112622%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e112526112618%_)))
                                  (_%lp-tl112528112625%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e112526112618%_))))
                              (_%loop112525112609%_
                               _%lp-tl112528112625%_
                               (cons _%lp-hd112527112622%_
                                     _%body112529112616%_))))
                          (let ((_%body112530112628%_
                                 (reverse _%body112529112616%_)))
                            ((lambda (_%g112500112631%_
                                      _%g112501112633%_
                                      _%g112502112634%_
                                      _%g112503112635%_)
                               (let* ((_%g112664112672%_
                                       (lambda (_%g112665112668%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112665112668%_)))
                                      (_%g112663112699%_
                                       (lambda (_%g112665112676%_)
                                         ((lambda (_%g112666112679%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%g112503112635%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%g112666112679%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%g112502112634%_
                                                          '())
                                                    (let ((__tmp112908
                                                           (lambda (_%g112690112693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g112691112696%_)
                     (cons _%g112690112693%_ _%g112691112696%_))))
              (declare (not safe))
              (__foldr1 __tmp112908 '() _%g112500112631%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g112665112676%_))))
                                 (_%g112663112699%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx112495%_
                                     _%g112501112633%_)))))
                             _%body112530112628%_
                             _%hd112520112597%_
                             _%hd112514112577%_
                             _%hd112511112567%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop112525112609%_
                                                     _%target112522112603%_
                                                     '()))
                                                  (_%g112498112536%_
                                                   _%g112499112540%_)))))
                                        (_%g112498112536%_
                                         _%g112499112540%_))))
                                (_%g112498112536%_ _%g112499112540%_))
                            (_%g112498112536%_ _%g112499112540%_))
                        (_%g112498112536%_ _%g112499112540%_))))
                (_%g112498112536%_ _%g112499112540%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g112498112536%_
                                                     _%g112499112540%_))))
                                            (_%g112498112536%_
                                             _%g112499112540%_))))
                                    (_%g112498112536%_ _%g112499112540%_))))
                            (_%g112498112536%_ _%g112499112540%_))))
                    (_%g112498112536%_ _%g112499112540%_)))))
        (_%g112497112703%_ _%stx112495%_)))))
