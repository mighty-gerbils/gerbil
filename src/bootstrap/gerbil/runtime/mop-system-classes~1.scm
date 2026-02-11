(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g137724_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx137296%_)
      (let* ((_%g137299137337%_
              (lambda (_%g137300137333%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g137300137333%_)))
             (_%g137298137504%_
              (lambda (_%g137300137341%_)
                (if (gx#stx-pair? _%g137300137341%_)
                    (let ((_%e137305137344%_ (gx#syntax-e _%g137300137341%_)))
                      (let ((_%hd137306137348%_
                             (let ()
                               (declare (not safe))
                               (##car _%e137305137344%_)))
                            (_%tl137307137351%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e137305137344%_))))
                        (if (gx#stx-pair? _%tl137307137351%_)
                            (let ((_%e137308137354%_
                                   (gx#syntax-e _%tl137307137351%_)))
                              (let ((_%hd137309137358%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e137308137354%_)))
                                    (_%tl137310137361%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e137308137354%_))))
                                (if (gx#stx-pair? _%hd137309137358%_)
                                    (let ((_%e137311137364%_
                                           (gx#syntax-e _%hd137309137358%_)))
                                      (let ((_%hd137312137368%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e137311137364%_)))
                                            (_%tl137313137371%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e137311137364%_))))
                                        (if (gx#stx-pair? _%tl137313137371%_)
                                            (let ((_%e137314137374%_
                                                   (gx#syntax-e
                                                    _%tl137313137371%_)))
                                              (let ((_%hd137315137378%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e137314137374%_)))
                                                    (_%tl137316137381%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e137314137374%_))))
                                                (if (gx#stx-null?
                                                     _%tl137316137381%_)
                                                    (if (gx#stx-pair?
                                                         _%tl137310137361%_)
                                                        (let ((_%e137317137384%_
                                                               (gx#syntax-e
                                                                _%tl137310137361%_)))
                                                          (let ((_%hd137318137388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e137317137384%_)))
                        (_%tl137319137391%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e137317137384%_))))
                    (if (gx#identifier? _%hd137318137388%_)
                        (if (gx#free-identifier=?
                             |[1]#_g137724_|
                             _%hd137318137388%_)
                            (if (gx#stx-pair? _%tl137319137391%_)
                                (let ((_%e137320137394%_
                                       (gx#syntax-e _%tl137319137391%_)))
                                  (let ((_%hd137321137398%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137320137394%_)))
                                        (_%tl137322137401%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137320137394%_))))
                                    (if (gx#stx-pair/null? _%tl137322137401%_)
                                        (let ((_g137725_
                                               (gx#syntax-split-splice
                                                _%tl137322137401%_
                                                '0)))
                                          (begin
                                            (let ((_g137726_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g137725_)
                                                         (##values-length
                                                          _g137725_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g137726_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g137726_)))
                                            (let ((_%target137323137404%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g137725_
                                                      0)))
                                                  (_%tl137325137407%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g137725_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl137325137407%_)
                                                  (letrec ((_%loop137326137410%_
                                                            (lambda (_%hd137324137414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body137330137417%_)
                      (if (gx#stx-pair? _%hd137324137414%_)
                          (let ((_%e137327137419%_
                                 (gx#syntax-e _%hd137324137414%_)))
                            (let ((_%lp-hd137328137423%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e137327137419%_)))
                                  (_%lp-tl137329137426%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e137327137419%_))))
                              (_%loop137326137410%_
                               _%lp-tl137329137426%_
                               (cons _%lp-hd137328137423%_
                                     _%body137330137417%_))))
                          (let ((_%body137331137429%_
                                 (reverse _%body137330137417%_)))
                            ((lambda (_%g137301137432%_
                                      _%g137302137434%_
                                      _%g137303137435%_
                                      _%g137304137436%_)
                               (let* ((_%g137465137473%_
                                       (lambda (_%g137466137469%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g137466137469%_)))
                                      (_%g137464137500%_
                                       (lambda (_%g137466137477%_)
                                         ((lambda (_%g137467137480%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%g137304137436%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%g137467137480%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%g137303137435%_
                                                          '())
                                                    (let ((__tmp137727
                                                           (lambda (_%g137491137494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g137492137497%_)
                     (cons _%g137491137494%_ _%g137492137497%_))))
              (declare (not safe))
              (foldr__0 __tmp137727 '() _%g137301137432%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g137466137477%_))))
                                 (_%g137464137500%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx137296%_
                                     _%g137302137434%_)))))
                             _%body137331137429%_
                             _%hd137321137398%_
                             _%hd137315137378%_
                             _%hd137312137368%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop137326137410%_
                                                     _%target137323137404%_
                                                     '()))
                                                  (_%g137299137337%_
                                                   _%g137300137341%_)))))
                                        (_%g137299137337%_
                                         _%g137300137341%_))))
                                (_%g137299137337%_ _%g137300137341%_))
                            (_%g137299137337%_ _%g137300137341%_))
                        (_%g137299137337%_ _%g137300137341%_))))
                (_%g137299137337%_ _%g137300137341%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g137299137337%_
                                                     _%g137300137341%_))))
                                            (_%g137299137337%_
                                             _%g137300137341%_))))
                                    (_%g137299137337%_ _%g137300137341%_))))
                            (_%g137299137337%_ _%g137300137341%_))))
                    (_%g137299137337%_ _%g137300137341%_)))))
        (_%g137298137504%_ _%stx137296%_)))))
