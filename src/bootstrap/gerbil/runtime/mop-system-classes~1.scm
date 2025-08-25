(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g109525_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx109152%_)
      (let* ((_%g109155109193%_
              (lambda (_%g109156109189%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g109156109189%_)))
             (_%g109154109362%_
              (lambda (_%g109156109197%_)
                (if (gx#stx-pair? _%g109156109197%_)
                    (let ((_%e109161109200%_ (gx#syntax-e _%g109156109197%_)))
                      (let ((_%hd109162109204%_
                             (let ()
                               (declare (not safe))
                               (##car _%e109161109200%_)))
                            (_%tl109163109207%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e109161109200%_))))
                        (if (gx#stx-pair? _%tl109163109207%_)
                            (let ((_%e109164109210%_
                                   (gx#syntax-e _%tl109163109207%_)))
                              (let ((_%hd109165109214%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e109164109210%_)))
                                    (_%tl109166109217%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e109164109210%_))))
                                (if (gx#stx-pair? _%hd109165109214%_)
                                    (let ((_%e109167109220%_
                                           (gx#syntax-e _%hd109165109214%_)))
                                      (let ((_%hd109168109224%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e109167109220%_)))
                                            (_%tl109169109227%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e109167109220%_))))
                                        (if (gx#stx-pair? _%tl109169109227%_)
                                            (let ((_%e109170109230%_
                                                   (gx#syntax-e
                                                    _%tl109169109227%_)))
                                              (let ((_%hd109171109234%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e109170109230%_)))
                                                    (_%tl109172109237%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e109170109230%_))))
                                                (if (gx#stx-null?
                                                     _%tl109172109237%_)
                                                    (if (gx#stx-pair?
                                                         _%tl109166109217%_)
                                                        (let ((_%e109173109240%_
                                                               (gx#syntax-e
                                                                _%tl109166109217%_)))
                                                          (let ((_%hd109174109244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e109173109240%_)))
                        (_%tl109175109247%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e109173109240%_))))
                    (if (gx#identifier? _%hd109174109244%_)
                        (if (gx#free-identifier=?
                             |[1]#_g109525_|
                             _%hd109174109244%_)
                            (if (gx#stx-pair? _%tl109175109247%_)
                                (let ((_%e109176109250%_
                                       (gx#syntax-e _%tl109175109247%_)))
                                  (let ((_%hd109177109254%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e109176109250%_)))
                                        (_%tl109178109257%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e109176109250%_))))
                                    (if (gx#stx-pair/null? _%tl109178109257%_)
                                        (let ((_g109526_
                                               (gx#syntax-split-splice
                                                _%tl109178109257%_
                                                '0)))
                                          (begin
                                            (let ((_g109527_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g109526_)
                                                         (##values-length
                                                          _g109526_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g109527_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g109527_)))
                                            (let ((_%target109179109260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g109526_
                                                      0)))
                                                  (_%tl109181109263%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g109526_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl109181109263%_)
                                                  (letrec ((_%loop109182109266%_
                                                            (lambda (_%hd109180109270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body109186109273%_)
                      (if (gx#stx-pair? _%hd109180109270%_)
                          (let ((_%e109183109276%_
                                 (gx#syntax-e _%hd109180109270%_)))
                            (let ((_%lp-hd109184109280%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e109183109276%_)))
                                  (_%lp-tl109185109283%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e109183109276%_))))
                              (_%loop109182109266%_
                               _%lp-tl109185109283%_
                               (cons _%lp-hd109184109280%_
                                     _%body109186109273%_))))
                          (let ((_%body109187109286%_
                                 (reverse _%body109186109273%_)))
                            ((lambda (_%L109290%_
                                      _%L109292%_
                                      _%L109293%_
                                      _%L109294%_)
                               (let* ((_%g109323109331%_
                                       (lambda (_%g109324109327%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g109324109327%_)))
                                      (_%g109322109358%_
                                       (lambda (_%g109324109335%_)
                                         ((lambda (_%L109338%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L109294%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L109338%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L109293%_ '())
                                                    (let ((__tmp109528
                                                           (lambda (_%g109349109352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g109350109355%_)
                     (cons _%g109349109352%_ _%g109350109355%_))))
              (declare (not safe))
              (__foldr1 __tmp109528 '() _%L109290%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g109324109335%_))))
                                 (_%g109322109358%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx109152%_
                                     _%L109292%_)))))
                             _%body109187109286%_
                             _%hd109177109254%_
                             _%hd109171109234%_
                             _%hd109168109224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop109182109266%_
                                                     _%target109179109260%_
                                                     '()))
                                                  (_%g109155109193%_
                                                   _%g109156109197%_)))))
                                        (_%g109155109193%_
                                         _%g109156109197%_))))
                                (_%g109155109193%_ _%g109156109197%_))
                            (_%g109155109193%_ _%g109156109197%_))
                        (_%g109155109193%_ _%g109156109197%_))))
                (_%g109155109193%_ _%g109156109197%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g109155109193%_
                                                     _%g109156109197%_))))
                                            (_%g109155109193%_
                                             _%g109156109197%_))))
                                    (_%g109155109193%_ _%g109156109197%_))))
                            (_%g109155109193%_ _%g109156109197%_))))
                    (_%g109155109193%_ _%g109156109197%_)))))
        (_%g109154109362%_ _%stx109152%_)))))
