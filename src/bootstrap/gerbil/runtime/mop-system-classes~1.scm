(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g98208_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx97828%_)
      (let* ((_%g9783197869%_
              (lambda (_%g9783297865%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9783297865%_)))
             (_%g9783098038%_
              (lambda (_%g9783297873%_)
                (if (gx#stx-pair? _%g9783297873%_)
                    (let ((_%e9783997876%_ (gx#syntax-e _%g9783297873%_)))
                      (let ((_%hd9783897880%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9783997876%_)))
                            (_%tl9783797883%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9783997876%_))))
                        (if (gx#stx-pair? _%tl9783797883%_)
                            (let ((_%e9784297886%_
                                   (gx#syntax-e _%tl9783797883%_)))
                              (let ((_%hd9784197890%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9784297886%_)))
                                    (_%tl9784097893%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9784297886%_))))
                                (if (gx#stx-pair? _%hd9784197890%_)
                                    (let ((_%e9784597896%_
                                           (gx#syntax-e _%hd9784197890%_)))
                                      (let ((_%hd9784497900%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9784597896%_)))
                                            (_%tl9784397903%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9784597896%_))))
                                        (if (gx#stx-pair? _%tl9784397903%_)
                                            (let ((_%e9784897906%_
                                                   (gx#syntax-e
                                                    _%tl9784397903%_)))
                                              (let ((_%hd9784797910%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9784897906%_)))
                                                    (_%tl9784697913%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9784897906%_))))
                                                (if (gx#stx-null?
                                                     _%tl9784697913%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9784097893%_)
                                                        (let ((_%e9785197916%_
                                                               (gx#syntax-e
                                                                _%tl9784097893%_)))
                                                          (let ((_%hd9785097920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e9785197916%_)))
                        (_%tl9784997923%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e9785197916%_))))
                    (if (gx#identifier? _%hd9785097920%_)
                        (if (gx#free-identifier=?
                             |[1]#_g98208_|
                             _%hd9785097920%_)
                            (if (gx#stx-pair? _%tl9784997923%_)
                                (let ((_%e9785497926%_
                                       (gx#syntax-e _%tl9784997923%_)))
                                  (let ((_%hd9785397930%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9785497926%_)))
                                        (_%tl9785297933%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9785497926%_))))
                                    (if (gx#stx-pair/null? _%tl9785297933%_)
                                        (let ((_g98209_
                                               (gx#syntax-split-splice
                                                _%tl9785297933%_
                                                '0)))
                                          (begin
                                            (let ((_g98210_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g98209_)
                                                         (##vector-length
                                                          _g98209_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g98210_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g98210_)))
                                            (let ((_%target9785597936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98209_
                                                      0)))
                                                  (_%tl9785797939%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98209_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl9785797939%_)
                                                  (letrec ((_%loop9785897942%_
                                                            (lambda (_%hd9785697946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body9786297949%_)
                      (if (gx#stx-pair? _%hd9785697946%_)
                          (let ((_%e9785997952%_
                                 (gx#syntax-e _%hd9785697946%_)))
                            (let ((_%lp-hd9786097956%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9785997952%_)))
                                  (_%lp-tl9786197959%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9785997952%_))))
                              (_%loop9785897942%_
                               _%lp-tl9786197959%_
                               (cons _%lp-hd9786097956%_ _%body9786297949%_))))
                          (let ((_%body9786397962%_
                                 (reverse _%body9786297949%_)))
                            ((lambda (_%L97966%_
                                      _%L97968%_
                                      _%L97969%_
                                      _%L97970%_)
                               (let* ((_%g9799998007%_
                                       (lambda (_%g9800098003%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9800098003%_)))
                                      (_%g9799898034%_
                                       (lambda (_%g9800098011%_)
                                         ((lambda (_%L98014%_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%L97970%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@predicate)
                                          (cons _%L98014%_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%L97969%_ '())
                                                      (let ((__tmp98211
                                                             (lambda (_%g9802598028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g9802698031%_)
                       (cons _%g9802598028%_ _%g9802698031%_))))
                (declare (not safe))
                (__foldr1 __tmp98211 '() _%L97966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9800098011%_))))
                                 (_%g9799898034%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx97828%_
                                     _%L97968%_)))))
                             _%body9786397962%_
                             _%hd9785397930%_
                             _%hd9784797910%_
                             _%hd9784497900%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop9785897942%_
                                                     _%target9785597936%_
                                                     '()))
                                                  (_%g9783197869%_
                                                   _%g9783297873%_)))))
                                        (_%g9783197869%_ _%g9783297873%_))))
                                (_%g9783197869%_ _%g9783297873%_))
                            (_%g9783197869%_ _%g9783297873%_))
                        (_%g9783197869%_ _%g9783297873%_))))
                (_%g9783197869%_ _%g9783297873%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9783197869%_
                                                     _%g9783297873%_))))
                                            (_%g9783197869%_
                                             _%g9783297873%_))))
                                    (_%g9783197869%_ _%g9783297873%_))))
                            (_%g9783197869%_ _%g9783297873%_))))
                    (_%g9783197869%_ _%g9783297873%_)))))
        (_%g9783098038%_ _%stx97828%_)))))
