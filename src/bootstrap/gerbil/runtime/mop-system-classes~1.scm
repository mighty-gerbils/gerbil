(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g99039_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx98666%_)
      (let* ((_%g9866998707%_
              (lambda (_%g9867098703%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9867098703%_)))
             (_%g9866898876%_
              (lambda (_%g9867098711%_)
                (if (gx#stx-pair? _%g9867098711%_)
                    (let ((_%e9867598714%_ (gx#syntax-e _%g9867098711%_)))
                      (let ((_%hd9867698718%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9867598714%_)))
                            (_%tl9867798721%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9867598714%_))))
                        (if (gx#stx-pair? _%tl9867798721%_)
                            (let ((_%e9867898724%_
                                   (gx#syntax-e _%tl9867798721%_)))
                              (let ((_%hd9867998728%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9867898724%_)))
                                    (_%tl9868098731%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9867898724%_))))
                                (if (gx#stx-pair? _%hd9867998728%_)
                                    (let ((_%e9868198734%_
                                           (gx#syntax-e _%hd9867998728%_)))
                                      (let ((_%hd9868298738%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9868198734%_)))
                                            (_%tl9868398741%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9868198734%_))))
                                        (if (gx#stx-pair? _%tl9868398741%_)
                                            (let ((_%e9868498744%_
                                                   (gx#syntax-e
                                                    _%tl9868398741%_)))
                                              (let ((_%hd9868598748%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9868498744%_)))
                                                    (_%tl9868698751%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9868498744%_))))
                                                (if (gx#stx-null?
                                                     _%tl9868698751%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9868098731%_)
                                                        (let ((_%e9868798754%_
                                                               (gx#syntax-e
                                                                _%tl9868098731%_)))
                                                          (let ((_%hd9868898758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e9868798754%_)))
                        (_%tl9868998761%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e9868798754%_))))
                    (if (gx#identifier? _%hd9868898758%_)
                        (if (gx#free-identifier=?
                             |[1]#_g99039_|
                             _%hd9868898758%_)
                            (if (gx#stx-pair? _%tl9868998761%_)
                                (let ((_%e9869098764%_
                                       (gx#syntax-e _%tl9868998761%_)))
                                  (let ((_%hd9869198768%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9869098764%_)))
                                        (_%tl9869298771%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9869098764%_))))
                                    (if (gx#stx-pair/null? _%tl9869298771%_)
                                        (let ((_g99040_
                                               (gx#syntax-split-splice
                                                _%tl9869298771%_
                                                '0)))
                                          (begin
                                            (let ((_g99041_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g99040_)
                                                         (##vector-length
                                                          _g99040_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g99041_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g99041_)))
                                            (let ((_%target9869398774%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g99040_
                                                      0)))
                                                  (_%tl9869598777%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g99040_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl9869598777%_)
                                                  (letrec ((_%loop9869698780%_
                                                            (lambda (_%hd9869498784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body9870098787%_)
                      (if (gx#stx-pair? _%hd9869498784%_)
                          (let ((_%e9869798790%_
                                 (gx#syntax-e _%hd9869498784%_)))
                            (let ((_%lp-hd9869898794%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9869798790%_)))
                                  (_%lp-tl9869998797%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9869798790%_))))
                              (_%loop9869698780%_
                               _%lp-tl9869998797%_
                               (cons _%lp-hd9869898794%_ _%body9870098787%_))))
                          (let ((_%body9870198800%_
                                 (reverse _%body9870098787%_)))
                            ((lambda (_%L98804%_
                                      _%L98806%_
                                      _%L98807%_
                                      _%L98808%_)
                               (let* ((_%g9883798845%_
                                       (lambda (_%g9883898841%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9883898841%_)))
                                      (_%g9883698872%_
                                       (lambda (_%g9883898849%_)
                                         ((lambda (_%L98852%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L98808%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L98852%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L98807%_ '())
                                                    (let ((__tmp99042
                                                           (lambda (_%g9886398866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g9886498869%_)
                     (cons _%g9886398866%_ _%g9886498869%_))))
              (declare (not safe))
              (__foldr1 __tmp99042 '() _%L98804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9883898849%_))))
                                 (_%g9883698872%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx98666%_
                                     _%L98806%_)))))
                             _%body9870198800%_
                             _%hd9869198768%_
                             _%hd9868598748%_
                             _%hd9868298738%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop9869698780%_
                                                     _%target9869398774%_
                                                     '()))
                                                  (_%g9866998707%_
                                                   _%g9867098711%_)))))
                                        (_%g9866998707%_ _%g9867098711%_))))
                                (_%g9866998707%_ _%g9867098711%_))
                            (_%g9866998707%_ _%g9867098711%_))
                        (_%g9866998707%_ _%g9867098711%_))))
                (_%g9866998707%_ _%g9867098711%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9866998707%_
                                                     _%g9867098711%_))))
                                            (_%g9866998707%_
                                             _%g9867098711%_))))
                                    (_%g9866998707%_ _%g9867098711%_))))
                            (_%g9866998707%_ _%g9867098711%_))))
                    (_%g9866998707%_ _%g9867098711%_)))))
        (_%g9866898876%_ _%stx98666%_)))))
