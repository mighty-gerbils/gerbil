(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g98335_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx97962%_)
      (let* ((_%g9796598003%_
              (lambda (_%g9796697999%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9796697999%_)))
             (_%g9796498172%_
              (lambda (_%g9796698007%_)
                (if (gx#stx-pair? _%g9796698007%_)
                    (let ((_%e9797398010%_ (gx#syntax-e _%g9796698007%_)))
                      (let ((_%hd9797298014%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9797398010%_)))
                            (_%tl9797198017%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9797398010%_))))
                        (if (gx#stx-pair? _%tl9797198017%_)
                            (let ((_%e9797698020%_
                                   (gx#syntax-e _%tl9797198017%_)))
                              (let ((_%hd9797598024%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9797698020%_)))
                                    (_%tl9797498027%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9797698020%_))))
                                (if (gx#stx-pair? _%hd9797598024%_)
                                    (let ((_%e9797998030%_
                                           (gx#syntax-e _%hd9797598024%_)))
                                      (let ((_%hd9797898034%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9797998030%_)))
                                            (_%tl9797798037%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9797998030%_))))
                                        (if (gx#stx-pair? _%tl9797798037%_)
                                            (let ((_%e9798298040%_
                                                   (gx#syntax-e
                                                    _%tl9797798037%_)))
                                              (let ((_%hd9798198044%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9798298040%_)))
                                                    (_%tl9798098047%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9798298040%_))))
                                                (if (gx#stx-null?
                                                     _%tl9798098047%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9797498027%_)
                                                        (let ((_%e9798598050%_
                                                               (gx#syntax-e
                                                                _%tl9797498027%_)))
                                                          (let ((_%hd9798498054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e9798598050%_)))
                        (_%tl9798398057%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e9798598050%_))))
                    (if (gx#identifier? _%hd9798498054%_)
                        (if (gx#free-identifier=?
                             |[1]#_g98335_|
                             _%hd9798498054%_)
                            (if (gx#stx-pair? _%tl9798398057%_)
                                (let ((_%e9798898060%_
                                       (gx#syntax-e _%tl9798398057%_)))
                                  (let ((_%hd9798798064%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9798898060%_)))
                                        (_%tl9798698067%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9798898060%_))))
                                    (if (gx#stx-pair/null? _%tl9798698067%_)
                                        (let ((_g98336_
                                               (gx#syntax-split-splice
                                                _%tl9798698067%_
                                                '0)))
                                          (begin
                                            (let ((_g98337_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g98336_)
                                                         (##vector-length
                                                          _g98336_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g98337_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g98337_)))
                                            (let ((_%target9798998070%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98336_
                                                      0)))
                                                  (_%tl9799198073%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98336_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl9799198073%_)
                                                  (letrec ((_%loop9799298076%_
                                                            (lambda (_%hd9799098080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body9799698083%_)
                      (if (gx#stx-pair? _%hd9799098080%_)
                          (let ((_%e9799398086%_
                                 (gx#syntax-e _%hd9799098080%_)))
                            (let ((_%lp-hd9799498090%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9799398086%_)))
                                  (_%lp-tl9799598093%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9799398086%_))))
                              (_%loop9799298076%_
                               _%lp-tl9799598093%_
                               (cons _%lp-hd9799498090%_ _%body9799698083%_))))
                          (let ((_%body9799798096%_
                                 (reverse _%body9799698083%_)))
                            ((lambda (_%L98100%_
                                      _%L98102%_
                                      _%L98103%_
                                      _%L98104%_)
                               (let* ((_%g9813398141%_
                                       (lambda (_%g9813498137%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9813498137%_)))
                                      (_%g9813298168%_
                                       (lambda (_%g9813498145%_)
                                         ((lambda (_%L98148%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L98104%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L98148%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L98103%_ '())
                                                    (let ((__tmp98338
                                                           (lambda (_%g9815998162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g9816098165%_)
                     (cons _%g9815998162%_ _%g9816098165%_))))
              (declare (not safe))
              (__foldr1 __tmp98338 '() _%L98100%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9813498145%_))))
                                 (_%g9813298168%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx97962%_
                                     _%L98102%_)))))
                             _%body9799798096%_
                             _%hd9798798064%_
                             _%hd9798198044%_
                             _%hd9797898034%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop9799298076%_
                                                     _%target9798998070%_
                                                     '()))
                                                  (_%g9796598003%_
                                                   _%g9796698007%_)))))
                                        (_%g9796598003%_ _%g9796698007%_))))
                                (_%g9796598003%_ _%g9796698007%_))
                            (_%g9796598003%_ _%g9796698007%_))
                        (_%g9796598003%_ _%g9796698007%_))))
                (_%g9796598003%_ _%g9796698007%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9796598003%_
                                                     _%g9796698007%_))))
                                            (_%g9796598003%_
                                             _%g9796698007%_))))
                                    (_%g9796598003%_ _%g9796698007%_))))
                            (_%g9796598003%_ _%g9796698007%_))))
                    (_%g9796598003%_ _%g9796698007%_)))))
        (_%g9796498172%_ _%stx97962%_)))))
