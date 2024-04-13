(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
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
    (lambda _%$args40290%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setq-macro::t|
             _%$args40290%_)))
  (define |gerbil/core/more-sugar[1]#setq-macro-macro|
    (make-class-slot-accessor
     |gerbil/core/more-sugar[1]#setq-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
    (make-class-slot-mutator |gerbil/core/more-sugar[1]#setq-macro::t| 'macro))
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
    (lambda _%$args40286%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setf-macro::t|
             _%$args40286%_)))
  (define |gerbil/core/more-sugar[1]#setf-macro-macro|
    (make-class-slot-accessor
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
    (make-class-slot-mutator |gerbil/core/more-sugar[1]#setf-macro::t| 'macro))
  (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
    (make-class-slot-unchecked-accessor
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
    (make-class-slot-unchecked-mutator
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
    (lambda (_%stx40283%_)
      (if (gx#identifier? _%stx40283%_)
          (let ((__tmp41508 (gx#syntax-local-value _%stx40283%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setf-macro::t|
             __tmp41508))
          '#f)))
  (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
    (lambda (_%stx40280%_)
      (if (gx#identifier? _%stx40280%_)
          (let ((__tmp41509 (gx#syntax-local-value _%stx40280%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setq-macro::t|
             __tmp41509))
          '#f)))
  (define |gerbil/core/more-sugar[1]#expand-set!|
    (lambda (_%stx39905%_)
      (let* ((_%__stx4134741348%_ _%stx39905%_)
             (_%g3991139974%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4134741348%_))))
        (let ((_%__kont4135041351%_
               (lambda (_%L40257%_ _%L40259%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40259%_)
                  _%stx39905%_)))
              (_%__kont4135241353%_
               (lambda (_%L40146%_ _%L40148%_ _%L40149%_)
                 (let* ((_%g4017140179%_
                         (lambda (_%g4017240175%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4017240175%_)))
                        (_%g4017040206%_
                         (lambda (_%g4017240183%_)
                           ((lambda (_%L40186%_)
                              (cons _%L40186%_
                                    (foldr (lambda (_%g4019740200%_
                                                    _%g4019840203%_)
                                             (cons _%g4019740200%_
                                                   _%g4019840203%_))
                                           (cons _%L40146%_ '())
                                           _%L40148%_)))
                            _%g4017240183%_))))
                   (_%g4017040206%_
                    (gx#stx-identifier _%L40149%_ _%L40149%_ '"-set!")))))
              (_%__kont4135641357%_
               (lambda (_%L40056%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40056%_)
                  _%stx39905%_)))
              (_%__kont4135841359%_
               (lambda (_%L40011%_ _%L40013%_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _%L40013%_ (cons _%L40011%_ '()))))))
          (let* ((_%__match4144641447%_
                  (lambda (_%e3996039981%_
                           _%hd3996139985%_
                           _%tl3996239988%_
                           _%e3996339991%_
                           _%hd3996439995%_
                           _%tl3996539998%_
                           _%e3996640001%_
                           _%hd3996740005%_
                           _%tl3996840008%_)
                    (let ((_%L40011%_ _%hd3996740005%_)
                          (_%L40013%_ _%hd3996439995%_))
                      (if (gx#identifier? _%L40013%_)
                          (_%__kont4135841359%_ _%L40011%_ _%L40013%_)
                          (let () (declare (not safe)) (_%g3991139974%_))))))
                 (_%__match4142641427%_
                  (lambda (_%e3995240036%_
                           _%hd3995340040%_
                           _%tl3995440043%_
                           _%e3995540046%_
                           _%hd3995640050%_
                           _%tl3995740053%_)
                    (let ((_%L40056%_ _%hd3995640050%_))
                      (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                           _%L40056%_)
                          (_%__kont4135641357%_ _%L40056%_)
                          (if (gx#stx-pair? _%tl3995740053%_)
                              (let ((_%e3996640001%_
                                     (gx#syntax-e _%tl3995740053%_)))
                                (let ((_%tl3996840008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3996640001%_)))
                                      (_%hd3996740005%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3996640001%_))))
                                  (if (gx#stx-null? _%tl3996840008%_)
                                      (_%__match4144641447%_
                                       _%e3995240036%_
                                       _%hd3995340040%_
                                       _%tl3995440043%_
                                       _%e3995540046%_
                                       _%hd3995640050%_
                                       _%tl3995740053%_
                                       _%e3996640001%_
                                       _%hd3996740005%_
                                       _%tl3996840008%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3991139974%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3991139974%_)))))))
                 (_%__match4141441415%_
                  (lambda (_%e3993040076%_
                           _%hd3993140080%_
                           _%tl3993240083%_
                           _%e3993340086%_
                           _%hd3993440090%_
                           _%tl3993540093%_
                           _%e3993640096%_
                           _%hd3993740100%_
                           _%tl3993840103%_
                           _%__splice4135441355%_
                           _%target3993940106%_
                           _%tl3994140109%_)
                    (letrec ((_%loop3994240112%_
                              (lambda (_%hd3994040116%_ _%arg3994640119%_)
                                (if (gx#stx-pair? _%hd3994040116%_)
                                    (let ((_%e3994340122%_
                                           (gx#syntax-e _%hd3994040116%_)))
                                      (let ((_%lp-tl3994540129%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3994340122%_)))
                                            (_%lp-hd3994440126%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3994340122%_))))
                                        (_%loop3994240112%_
                                         _%lp-tl3994540129%_
                                         (cons _%lp-hd3994440126%_
                                               _%arg3994640119%_))))
                                    (let ((_%arg3994740132%_
                                           (reverse _%arg3994640119%_)))
                                      (if (gx#stx-pair? _%tl3993540093%_)
                                          (let ((_%e3994840136%_
                                                 (gx#syntax-e
                                                  _%tl3993540093%_)))
                                            (let ((_%tl3995040143%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3994840136%_)))
                                                  (_%hd3994940140%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3994840136%_))))
                                              (if (gx#stx-null?
                                                   _%tl3995040143%_)
                                                  (let ((_%L40146%_
                                                         _%hd3994940140%_)
                                                        (_%L40148%_
                                                         _%arg3994740132%_)
                                                        (_%L40149%_
                                                         _%hd3993740100%_))
                                                    (if (gx#identifier?
                                                         _%L40149%_)
                                                        (_%__kont4135241353%_
                                                         _%L40146%_
                                                         _%L40148%_
                                                         _%L40149%_)
                                                        (_%__match4142641427%_
                                                         _%e3993040076%_
                                                         _%hd3993140080%_
                                                         _%tl3993240083%_
                                                         _%e3993340086%_
                                                         _%hd3993440090%_
                                                         _%tl3993540093%_)))
                                                  (_%__match4142641427%_
                                                   _%e3993040076%_
                                                   _%hd3993140080%_
                                                   _%tl3993240083%_
                                                   _%e3993340086%_
                                                   _%hd3993440090%_
                                                   _%tl3993540093%_))))
                                          (_%__match4142641427%_
                                           _%e3993040076%_
                                           _%hd3993140080%_
                                           _%tl3993240083%_
                                           _%e3993340086%_
                                           _%hd3993440090%_
                                           _%tl3993540093%_)))))))
                      (_%loop3994240112%_ _%target3993940106%_ '())))))
            (if (gx#stx-pair? _%__stx4134741348%_)
                (let ((_%e3991540217%_ (gx#syntax-e _%__stx4134741348%_)))
                  (let ((_%tl3991740224%_
                         (let () (declare (not safe)) (##cdr _%e3991540217%_)))
                        (_%hd3991640221%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3991540217%_))))
                    (if (gx#stx-pair? _%tl3991740224%_)
                        (let ((_%e3991840227%_ (gx#syntax-e _%tl3991740224%_)))
                          (let ((_%tl3992040234%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3991840227%_)))
                                (_%hd3991940231%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3991840227%_))))
                            (if (gx#stx-pair? _%hd3991940231%_)
                                (let ((_%e3992140237%_
                                       (gx#syntax-e _%hd3991940231%_)))
                                  (let ((_%tl3992340244%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3992140237%_)))
                                        (_%hd3992240241%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3992140237%_))))
                                    (if (gx#stx-pair? _%tl3992040234%_)
                                        (let ((_%e3992440247%_
                                               (gx#syntax-e _%tl3992040234%_)))
                                          (let ((_%tl3992640254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3992440247%_)))
                                                (_%hd3992540251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3992440247%_))))
                                            (if (gx#stx-null? _%tl3992640254%_)
                                                (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                     (gx#datum->syntax
                                                      '#f
                                                      'setfid))
                                                    (let ((_%L40257%_
                                                           _%hd3992540251%_)
                                                          (_%L40259%_
                                                           _%hd3992240241%_))
                                                      (_%__kont4135041351%_
                                                       _%L40257%_
                                                       _%L40259%_))
                                                    (if (gx#stx-pair/null?
                                                         _%tl3992340244%_)
                                                        (let ((_%__splice4135441355%_
                                                               (gx#syntax-split-splice
                                                                _%tl3992340244%_
                                                                '0)))
                                                          (let ((_%tl3994140109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4135441355%_ '1)))
                        (_%target3993940106%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4135441355%_ '0))))
                    (if (gx#stx-null? _%tl3994140109%_)
                        (_%__match4141441415%_
                         _%e3991540217%_
                         _%hd3991640221%_
                         _%tl3991740224%_
                         _%e3991840227%_
                         _%hd3991940231%_
                         _%tl3992040234%_
                         _%e3992140237%_
                         _%hd3992240241%_
                         _%tl3992340244%_
                         _%__splice4135441355%_
                         _%target3993940106%_
                         _%tl3994140109%_)
                        (_%__match4142641427%_
                         _%e3991540217%_
                         _%hd3991640221%_
                         _%tl3991740224%_
                         _%e3991840227%_
                         _%hd3991940231%_
                         _%tl3992040234%_))))
                (_%__match4142641427%_
                 _%e3991540217%_
                 _%hd3991640221%_
                 _%tl3991740224%_
                 _%e3991840227%_
                 _%hd3991940231%_
                 _%tl3992040234%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%tl3992340244%_)
                                                    (let ((_%__splice4135441355%_
                                                           (gx#syntax-split-splice
                                                            _%tl3992340244%_
                                                            '0)))
                                                      (let ((_%tl3994140109%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4135441355%_ '1)))
                    (_%target3993940106%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4135441355%_ '0))))
                (if (gx#stx-null? _%tl3994140109%_)
                    (_%__match4141441415%_
                     _%e3991540217%_
                     _%hd3991640221%_
                     _%tl3991740224%_
                     _%e3991840227%_
                     _%hd3991940231%_
                     _%tl3992040234%_
                     _%e3992140237%_
                     _%hd3992240241%_
                     _%tl3992340244%_
                     _%__splice4135441355%_
                     _%target3993940106%_
                     _%tl3994140109%_)
                    (_%__match4142641427%_
                     _%e3991540217%_
                     _%hd3991640221%_
                     _%tl3991740224%_
                     _%e3991840227%_
                     _%hd3991940231%_
                     _%tl3992040234%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match4142641427%_
                                                     _%e3991540217%_
                                                     _%hd3991640221%_
                                                     _%tl3991740224%_
                                                     _%e3991840227%_
                                                     _%hd3991940231%_
                                                     _%tl3992040234%_)))))
                                        (if (gx#stx-pair/null?
                                             _%tl3992340244%_)
                                            (let ((_%__splice4135441355%_
                                                   (gx#syntax-split-splice
                                                    _%tl3992340244%_
                                                    '0)))
                                              (let ((_%tl3994140109%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4135441355%_
                                                        '1)))
                                                    (_%target3993940106%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4135441355%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3994140109%_)
                                                    (_%__match4141441415%_
                                                     _%e3991540217%_
                                                     _%hd3991640221%_
                                                     _%tl3991740224%_
                                                     _%e3991840227%_
                                                     _%hd3991940231%_
                                                     _%tl3992040234%_
                                                     _%e3992140237%_
                                                     _%hd3992240241%_
                                                     _%tl3992340244%_
                                                     _%__splice4135441355%_
                                                     _%target3993940106%_
                                                     _%tl3994140109%_)
                                                    (_%__match4142641427%_
                                                     _%e3991540217%_
                                                     _%hd3991640221%_
                                                     _%tl3991740224%_
                                                     _%e3991840227%_
                                                     _%hd3991940231%_
                                                     _%tl3992040234%_))))
                                            (_%__match4142641427%_
                                             _%e3991540217%_
                                             _%hd3991640221%_
                                             _%tl3991740224%_
                                             _%e3991840227%_
                                             _%hd3991940231%_
                                             _%tl3992040234%_)))))
                                (_%__match4142641427%_
                                 _%e3991540217%_
                                 _%hd3991640221%_
                                 _%tl3991740224%_
                                 _%e3991840227%_
                                 _%hd3991940231%_
                                 _%tl3992040234%_))))
                        (let () (declare (not safe)) (_%g3991139974%_)))))
                (let () (declare (not safe)) (_%g3991139974%_))))))))
  (define |gerbil/core/more-sugar[:0:]#set!|
    (lambda (_%stx40295%_)
      (|gerbil/core/more-sugar[1]#expand-set!| _%stx40295%_)))
  (define |gerbil/core/more-sugar[:0:]#values-set!|
    (lambda (_%stx40298%_)
      (let* ((_%g4030140325%_
              (lambda (_%g4030240321%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4030240321%_)))
             (_%g4030040503%_
              (lambda (_%g4030240329%_)
                (if (gx#stx-pair? _%g4030240329%_)
                    (let ((_%e4030540332%_ (gx#syntax-e _%g4030240329%_)))
                      (let ((_%hd4030640336%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4030540332%_)))
                            (_%tl4030740339%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4030540332%_))))
                        (if (gx#stx-pair/null? _%tl4030740339%_)
                            (if (let ((__tmp41510
                                       (gx#stx-length _%tl4030740339%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp41510 '1))
                                (let ((_g41511_
                                       (gx#syntax-split-splice
                                        _%tl4030740339%_
                                        '1)))
                                  (begin
                                    (let ((_g41512_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g41511_)
                                                 (##vector-length _g41511_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g41512_ 2)))
                                          (error "Context expects 2 values"
                                                 _g41512_)))
                                    (let ((_%target4030840342%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g41511_ 0)))
                                          (_%tl4031040345%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g41511_ 1))))
                                      (if (gx#stx-pair? _%tl4031040345%_)
                                          (let ((_%e4031740348%_
                                                 (gx#syntax-e
                                                  _%tl4031040345%_)))
                                            (let ((_%hd4031840352%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4031740348%_)))
                                                  (_%tl4031940355%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4031740348%_))))
                                              (if (gx#stx-null?
                                                   _%tl4031940355%_)
                                                  (letrec ((_%loop4031140358%_
                                                            (lambda (_%hd4030940362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%tgt4031540365%_)
                      (if (gx#stx-pair? _%hd4030940362%_)
                          (let ((_%e4031240368%_
                                 (gx#syntax-e _%hd4030940362%_)))
                            (let ((_%lp-hd4031340372%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4031240368%_)))
                                  (_%lp-tl4031440375%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4031240368%_))))
                              (_%loop4031140358%_
                               _%lp-tl4031440375%_
                               (cons _%lp-hd4031340372%_ _%tgt4031540365%_))))
                          (let ((_%tgt4031640378%_
                                 (reverse _%tgt4031540365%_)))
                            ((lambda (_%L40382%_ _%L40384%_)
                               (let* ((_%g4040240419%_
                                       (lambda (_%g4040340415%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g4040340415%_)))
                                      (_%g4040140491%_
                                       (lambda (_%g4040340423%_)
                                         (if (gx#stx-pair/null?
                                              _%g4040340423%_)
                                             (let ((_g41513_
                                                    (gx#syntax-split-splice
                                                     _%g4040340423%_
                                                     '0)))
                                               (begin
                                                 (let ((_g41514_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g41513_)
                                                              (##vector-length
                                                               _g41513_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g41514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g41514_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target4040540426%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g41513_
                                                           0)))
                                                       (_%tl4040740429%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g41513_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl4040740429%_)
                                                       (letrec ((_%loop4040840432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd4040640436%_ _%$e4041240439%_)
                           (if (gx#stx-pair? _%hd4040640436%_)
                               (let ((_%e4040940442%_
                                      (gx#syntax-e _%hd4040640436%_)))
                                 (let ((_%lp-hd4041040446%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4040940442%_)))
                                       (_%lp-tl4041140449%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4040940442%_))))
                                   (_%loop4040840432%_
                                    _%lp-tl4041140449%_
                                    (cons _%lp-hd4041040446%_
                                          _%$e4041240439%_))))
                               (let ((_%$e4041340452%_
                                      (reverse _%$e4041240439%_)))
                                 ((lambda (_%L40456%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (cons (cons (foldr (lambda (_%g4047440477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4047540480%_)
                             (cons _%g4047440477%_ _%g4047540480%_))
                           '()
                           _%L40456%_)
                    (cons _%L40382%_ '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L40456%_
                                                   _%L40384%_)
                                                  (foldr (lambda (_%g4047140483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4047240486%_
                          _%g4047340488%_)
                   (cons (cons (gx#datum->syntax '#f 'set!)
                               (cons _%g4047240486%_
                                     (cons _%g4047140483%_ '())))
                         _%g4047340488%_))
                 '()
                 _%L40456%_
                 _%L40384%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%$e4041340452%_))))))
                 (_%loop4040840432%_ _%target4040540426%_ '()))
               (_%g4040240419%_ _%g4040340423%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4040240419%_
                                              _%g4040340423%_)))))
                                 (_%g4040140491%_
                                  (gx#gentemps
                                   (foldr (lambda (_%g4049440497%_
                                                   _%g4049540500%_)
                                            (cons _%g4049440497%_
                                                  _%g4049540500%_))
                                          '()
                                          _%L40384%_)))))
                             _%hd4031840352%_
                             _%tgt4031640378%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4031140358%_
                                                     _%target4030840342%_
                                                     '()))
                                                  (_%g4030140325%_
                                                   _%g4030240329%_))))
                                          (_%g4030140325%_ _%g4030240329%_)))))
                                (_%g4030140325%_ _%g4030240329%_))
                            (_%g4030140325%_ _%g4030240329%_))))
                    (_%g4030140325%_ _%g4030240329%_)))))
        (_%g4030040503%_ _%stx40298%_))))
  (define |gerbil/core/more-sugar[:0:]#parameterize|
    (lambda (_%stx40509%_)
      (let* ((_%__stx4144941450%_ _%stx40509%_)
             (_%g4051340571%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4144941450%_))))
        (let ((_%__kont4145241453%_
               (lambda (_%L40905%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_%g4092140924%_ _%g4092240927%_)
                                      (cons _%g4092140924%_ _%g4092240927%_))
                                    '()
                                    _%L40905%_)))))
              (_%__kont4145641457%_
               (lambda (_%L40682%_ _%L40684%_ _%L40685%_)
                 (let* ((_%g4070840716%_
                         (lambda (_%g4070940712%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4070940712%_)))
                        (_%g4070740836%_
                         (lambda (_%g4070940720%_)
                           ((lambda (_%L40723%_)
                              (let* ((_%g4073540752%_
                                      (lambda (_%g4073640748%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g4073640748%_)))
                                     (_%g4073440816%_
                                      (lambda (_%g4073640756%_)
                                        (if (gx#stx-pair/null? _%g4073640756%_)
                                            (let ((_g41515_
                                                   (gx#syntax-split-splice
                                                    _%g4073640756%_
                                                    '0)))
                                              (begin
                                                (let ((_g41516_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g41515_)
                                                             (##vector-length
                                                              _g41515_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g41516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g41516_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target4073840759%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41515_
                                                          0)))
                                                      (_%tl4074040762%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41515_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl4074040762%_)
                                                      (letrec ((_%loop4074140765%_
                                                                (lambda (_%hd4073940769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%arg4074540772%_)
                          (if (gx#stx-pair? _%hd4073940769%_)
                              (let ((_%e4074240775%_
                                     (gx#syntax-e _%hd4073940769%_)))
                                (let ((_%lp-hd4074340779%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4074240775%_)))
                                      (_%lp-tl4074440782%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4074240775%_))))
                                  (_%loop4074140765%_
                                   _%lp-tl4074440782%_
                                   (cons _%lp-hd4074340779%_
                                         _%arg4074540772%_))))
                              (let ((_%arg4074640785%_
                                     (reverse _%arg4074540772%_)))
                                ((lambda (_%L40789%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'call-with-parameters)
                                         (cons _%L40723%_
                                               (foldr (lambda (_%g4080740810%_
                                                               _%g4080840813%_)
                                                        (cons _%g4080740810%_
                                                              _%g4080840813%_))
                                                      '()
                                                      _%L40789%_))))
                                 _%arg4074640785%_))))))
                (_%loop4074140765%_ _%target4073840759%_ '()))
              (_%g4073540752%_ _%g4073640756%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4073540752%_
                                             _%g4073640756%_)))))
                                (_%g4073440816%_
                                 (foldr cons*
                                        '()
                                        (gx#syntax->list
                                         (foldr (lambda (_%g4081940822%_
                                                         _%g4082040825%_)
                                                  (cons _%g4081940822%_
                                                        _%g4082040825%_))
                                                '()
                                                _%L40685%_))
                                        (gx#syntax->list
                                         (foldr (lambda (_%g4082740830%_
                                                         _%g4082840833%_)
                                                  (cons _%g4082740830%_
                                                        _%g4082840833%_))
                                                '()
                                                _%L40684%_))))))
                            _%g4070940720%_))))
                   (_%g4070740836%_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_%g4083940842%_
                                                 _%g4084040845%_)
                                          (cons _%g4083940842%_
                                                _%g4084040845%_))
                                        '()
                                        _%L40682%_)))
                     (gx#stx-source _%stx40509%_)))))))
          (let* ((_%__match4150441505%_
                  (lambda (_%e4053440578%_
                           _%hd4053540582%_
                           _%tl4053640585%_
                           _%e4053740588%_
                           _%hd4053840592%_
                           _%tl4053940595%_
                           _%__splice4145841459%_
                           _%target4054040598%_
                           _%tl4054240601%_)
                    (letrec ((_%loop4054340604%_
                              (lambda (_%hd4054140608%_
                                       _%expr4054740611%_
                                       _%param4054840613%_)
                                (if (gx#stx-pair? _%hd4054140608%_)
                                    (let ((_%e4054440616%_
                                           (gx#syntax-e _%hd4054140608%_)))
                                      (let ((_%lp-tl4054640623%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4054440616%_)))
                                            (_%lp-hd4054540620%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4054440616%_))))
                                        (if (gx#stx-pair? _%lp-hd4054540620%_)
                                            (let ((_%e4056040626%_
                                                   (gx#syntax-e
                                                    _%lp-hd4054540620%_)))
                                              (let ((_%tl4056240633%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4056040626%_)))
                                                    (_%hd4056140630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4056040626%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4056240633%_)
                                                    (let ((_%e4056340636%_
                                                           (gx#syntax-e
                                                            _%tl4056240633%_)))
                                                      (let ((_%tl4056540643%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4056340636%_)))
                    (_%hd4056440640%_
                     (let () (declare (not safe)) (##car _%e4056340636%_))))
                (if (gx#stx-null? _%tl4056540643%_)
                    (_%loop4054340604%_
                     _%lp-tl4054640623%_
                     (cons _%hd4056440640%_ _%expr4054740611%_)
                     (cons _%hd4056140630%_ _%param4054840613%_))
                    (let () (declare (not safe)) (_%g4051340571%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4051340571%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4051340571%_)))))
                                    (let ((_%param4055040649%_
                                           (reverse _%param4054840613%_))
                                          (_%expr4054940646%_
                                           (reverse _%expr4054740611%_)))
                                      (if (gx#stx-pair/null? _%tl4053940595%_)
                                          (let ((_%__splice4146041461%_
                                                 (gx#syntax-split-splice
                                                  _%tl4053940595%_
                                                  '0)))
                                            (let ((_%tl4055340655%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4146041461%_
                                                      '1)))
                                                  (_%target4055140652%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4146041461%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4055340655%_)
                                                  (letrec ((_%loop4055440658%_
                                                            (lambda (_%hd4055240662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body4055840665%_)
                      (if (gx#stx-pair? _%hd4055240662%_)
                          (let ((_%e4055540668%_
                                 (gx#syntax-e _%hd4055240662%_)))
                            (let ((_%lp-tl4055740675%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4055540668%_)))
                                  (_%lp-hd4055640672%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4055540668%_))))
                              (_%loop4055440658%_
                               _%lp-tl4055740675%_
                               (cons _%lp-hd4055640672%_ _%body4055840665%_))))
                          (let ((_%body4055940678%_
                                 (reverse _%body4055840665%_)))
                            (_%__kont4145641457%_
                             _%body4055940678%_
                             _%expr4054940646%_
                             _%param4055040649%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4055440658%_
                                                     _%target4055140652%_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4051340571%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4051340571%_))))))))
                      (_%loop4054340604%_ _%target4054040598%_ '() '()))))
                 (_%__match4148441485%_
                  (lambda (_%e4051640855%_
                           _%hd4051740859%_
                           _%tl4051840862%_
                           _%e4051940865%_
                           _%hd4052040869%_
                           _%tl4052140872%_
                           _%__splice4145441455%_
                           _%target4052240875%_
                           _%tl4052440878%_)
                    (letrec ((_%loop4052540881%_
                              (lambda (_%hd4052340885%_ _%body4052940888%_)
                                (if (gx#stx-pair? _%hd4052340885%_)
                                    (let ((_%e4052640891%_
                                           (gx#syntax-e _%hd4052340885%_)))
                                      (let ((_%lp-tl4052840898%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4052640891%_)))
                                            (_%lp-hd4052740895%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4052640891%_))))
                                        (_%loop4052540881%_
                                         _%lp-tl4052840898%_
                                         (cons _%lp-hd4052740895%_
                                               _%body4052940888%_))))
                                    (let ((_%body4053040901%_
                                           (reverse _%body4052940888%_)))
                                      (_%__kont4145241453%_
                                       _%body4053040901%_))))))
                      (_%loop4052540881%_ _%target4052240875%_ '())))))
            (if (gx#stx-pair? _%__stx4144941450%_)
                (let ((_%e4051640855%_ (gx#syntax-e _%__stx4144941450%_)))
                  (let ((_%tl4051840862%_
                         (let () (declare (not safe)) (##cdr _%e4051640855%_)))
                        (_%hd4051740859%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4051640855%_))))
                    (if (gx#stx-pair? _%tl4051840862%_)
                        (let ((_%e4051940865%_ (gx#syntax-e _%tl4051840862%_)))
                          (let ((_%tl4052140872%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4051940865%_)))
                                (_%hd4052040869%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4051940865%_))))
                            (if (gx#stx-null? _%hd4052040869%_)
                                (if (gx#stx-pair/null? _%tl4052140872%_)
                                    (let ((_%__splice4145441455%_
                                           (gx#syntax-split-splice
                                            _%tl4052140872%_
                                            '0)))
                                      (let ((_%tl4052440878%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4145441455%_
                                                '1)))
                                            (_%target4052240875%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4145441455%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4052440878%_)
                                            (_%__match4148441485%_
                                             _%e4051640855%_
                                             _%hd4051740859%_
                                             _%tl4051840862%_
                                             _%e4051940865%_
                                             _%hd4052040869%_
                                             _%tl4052140872%_
                                             _%__splice4145441455%_
                                             _%target4052240875%_
                                             _%tl4052440878%_)
                                            (if (gx#stx-pair/null?
                                                 _%hd4052040869%_)
                                                (let ((_%__splice4145841459%_
                                                       (gx#syntax-split-splice
                                                        _%hd4052040869%_
                                                        '0)))
                                                  (let ((_%tl4054240601%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4145841459%_
                                                            '1)))
                                                        (_%target4054040598%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4145841459%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4054240601%_)
                                                        (_%__match4150441505%_
                                                         _%e4051640855%_
                                                         _%hd4051740859%_
                                                         _%tl4051840862%_
                                                         _%e4051940865%_
                                                         _%hd4052040869%_
                                                         _%tl4052140872%_
                                                         _%__splice4145841459%_
                                                         _%target4054040598%_
                                                         _%tl4054240601%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4051340571%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4051340571%_))))))
                                    (if (gx#stx-pair/null? _%hd4052040869%_)
                                        (let ((_%__splice4145841459%_
                                               (gx#syntax-split-splice
                                                _%hd4052040869%_
                                                '0)))
                                          (let ((_%tl4054240601%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4145841459%_
                                                    '1)))
                                                (_%target4054040598%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4145841459%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4054240601%_)
                                                (_%__match4150441505%_
                                                 _%e4051640855%_
                                                 _%hd4051740859%_
                                                 _%tl4051840862%_
                                                 _%e4051940865%_
                                                 _%hd4052040869%_
                                                 _%tl4052140872%_
                                                 _%__splice4145841459%_
                                                 _%target4054040598%_
                                                 _%tl4054240601%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4051340571%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4051340571%_))))
                                (if (gx#stx-pair/null? _%hd4052040869%_)
                                    (let ((_%__splice4145841459%_
                                           (gx#syntax-split-splice
                                            _%hd4052040869%_
                                            '0)))
                                      (let ((_%tl4054240601%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4145841459%_
                                                '1)))
                                            (_%target4054040598%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4145841459%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4054240601%_)
                                            (_%__match4150441505%_
                                             _%e4051640855%_
                                             _%hd4051740859%_
                                             _%tl4051840862%_
                                             _%e4051940865%_
                                             _%hd4052040869%_
                                             _%tl4052140872%_
                                             _%__splice4145841459%_
                                             _%target4054040598%_
                                             _%tl4054240601%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4051340571%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4051340571%_))))))
                        (let () (declare (not safe)) (_%g4051340571%_)))))
                (let () (declare (not safe)) (_%g4051340571%_))))))))
  (define |gerbil/core/more-sugar[:0:]#let/cc|
    (lambda (_%$stx40938%_)
      (let* ((_%g4094240966%_
              (lambda (_%g4094340962%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4094340962%_)))
             (_%g4094141051%_
              (lambda (_%g4094340970%_)
                (if (gx#stx-pair? _%g4094340970%_)
                    (let ((_%e4094640973%_ (gx#syntax-e _%g4094340970%_)))
                      (let ((_%hd4094740977%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4094640973%_)))
                            (_%tl4094840980%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4094640973%_))))
                        (if (gx#stx-pair? _%tl4094840980%_)
                            (let ((_%e4094940983%_
                                   (gx#syntax-e _%tl4094840980%_)))
                              (let ((_%hd4095040987%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4094940983%_)))
                                    (_%tl4095140990%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4094940983%_))))
                                (if (gx#stx-pair/null? _%tl4095140990%_)
                                    (let ((_g41517_
                                           (gx#syntax-split-splice
                                            _%tl4095140990%_
                                            '0)))
                                      (begin
                                        (let ((_g41518_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g41517_)
                                                     (##vector-length _g41517_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g41518_ 2)))
                                              (error "Context expects 2 values"
                                                     _g41518_)))
                                        (let ((_%target4095240993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g41517_ 0)))
                                              (_%tl4095440996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g41517_ 1))))
                                          (if (gx#stx-null? _%tl4095440996%_)
                                              (letrec ((_%loop4095540999%_
                                                        (lambda (_%hd4095341003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body4095941006%_)
                  (if (gx#stx-pair? _%hd4095341003%_)
                      (let ((_%e4095641009%_ (gx#syntax-e _%hd4095341003%_)))
                        (let ((_%lp-hd4095741013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4095641009%_)))
                              (_%lp-tl4095841016%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4095641009%_))))
                          (_%loop4095540999%_
                           _%lp-tl4095841016%_
                           (cons _%lp-hd4095741013%_ _%body4095941006%_))))
                      (let ((_%body4096041019%_ (reverse _%body4095941006%_)))
                        ((lambda (_%L41023%_ _%L41025%_)
                           (if (gx#identifier? _%L41025%_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _%L41025%_ '())
                                                       (foldr (lambda (_%g4104241045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4104341048%_)
                        (cons _%g4104241045%_ _%g4104341048%_))
                      '()
                      _%L41023%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_%g4094240966%_ _%g4094340970%_)))
                         _%body4096041019%_
                         _%hd4095040987%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop4095540999%_
                                                 _%target4095240993%_
                                                 '()))
                                              (_%g4094240966%_
                                               _%g4094340970%_)))))
                                    (_%g4094240966%_ _%g4094340970%_))))
                            (_%g4094240966%_ _%g4094340970%_))))
                    (_%g4094240966%_ _%g4094340970%_)))))
        (_%g4094141051%_ _%$stx40938%_))))
  (define |gerbil/core/more-sugar[:0:]#unwind-protect|
    (lambda (_%$stx41056%_)
      (let* ((_%g4106041088%_
              (lambda (_%g4106141084%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4106141084%_)))
             (_%g4105941187%_
              (lambda (_%g4106141092%_)
                (if (gx#stx-pair? _%g4106141092%_)
                    (let ((_%e4106541095%_ (gx#syntax-e _%g4106141092%_)))
                      (let ((_%hd4106641099%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4106541095%_)))
                            (_%tl4106741102%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4106541095%_))))
                        (if (gx#stx-pair? _%tl4106741102%_)
                            (let ((_%e4106841105%_
                                   (gx#syntax-e _%tl4106741102%_)))
                              (let ((_%hd4106941109%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4106841105%_)))
                                    (_%tl4107041112%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4106841105%_))))
                                (if (gx#stx-pair? _%tl4107041112%_)
                                    (let ((_%e4107141115%_
                                           (gx#syntax-e _%tl4107041112%_)))
                                      (let ((_%hd4107241119%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4107141115%_)))
                                            (_%tl4107341122%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4107141115%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4107341122%_)
                                            (let ((_g41519_
                                                   (gx#syntax-split-splice
                                                    _%tl4107341122%_
                                                    '0)))
                                              (begin
                                                (let ((_g41520_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g41519_)
                                                             (##vector-length
                                                              _g41519_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g41520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g41520_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target4107441125%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41519_
                                                          0)))
                                                      (_%tl4107641128%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41519_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl4107641128%_)
                                                      (letrec ((_%loop4107741131%_
                                                                (lambda (_%hd4107541135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%rest4108141138%_)
                          (if (gx#stx-pair? _%hd4107541135%_)
                              (let ((_%e4107841141%_
                                     (gx#syntax-e _%hd4107541135%_)))
                                (let ((_%lp-hd4107941145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4107841141%_)))
                                      (_%lp-tl4108041148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4107841141%_))))
                                  (_%loop4107741131%_
                                   _%lp-tl4108041148%_
                                   (cons _%lp-hd4107941145%_
                                         _%rest4108141138%_))))
                              (let ((_%rest4108241151%_
                                     (reverse _%rest4108141138%_)))
                                ((lambda (_%L41155%_ _%L41157%_ _%L41158%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _%L41158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L41157%_
                               (foldr (lambda (_%g4117841181%_ _%g4117941184%_)
                                        (cons _%g4117841181%_ _%g4117941184%_))
                                      '()
                                      _%L41155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _%rest4108241151%_
                                 _%hd4107241119%_
                                 _%hd4106941109%_))))))
                (_%loop4107741131%_ _%target4107441125%_ '()))
              (_%g4106041088%_ _%g4106141092%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4106041088%_
                                             _%g4106141092%_))))
                                    (_%g4106041088%_ _%g4106141092%_))))
                            (_%g4106041088%_ _%g4106141092%_))))
                    (_%g4106041088%_ _%g4106141092%_)))))
        (_%g4105941187%_ _%$stx41056%_))))
  (define |gerbil/core/more-sugar[:0:]#@bytes|
    (lambda (_%stx41192%_)
      (let* ((_%g4119541209%_
              (lambda (_%g4119641205%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4119641205%_)))
             (_%g4119441281%_
              (lambda (_%g4119641213%_)
                (if (gx#stx-pair? _%g4119641213%_)
                    (let ((_%e4119841216%_ (gx#syntax-e _%g4119641213%_)))
                      (let ((_%hd4119941220%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4119841216%_)))
                            (_%tl4120041223%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4119841216%_))))
                        (if (gx#stx-pair? _%tl4120041223%_)
                            (let ((_%e4120141226%_
                                   (gx#syntax-e _%tl4120041223%_)))
                              (let ((_%hd4120241230%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4120141226%_)))
                                    (_%tl4120341233%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4120141226%_))))
                                (if (gx#stx-null? _%tl4120341233%_)
                                    ((lambda (_%L41236%_)
                                       (if (gx#stx-string? _%L41236%_)
                                           (let* ((_%g4125041258%_
                                                   (lambda (_%g4125141254%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4125141254%_)))
                                                  (_%g4124941277%_
                                                   (lambda (_%g4125141262%_)
                                                     ((lambda (_%L41265%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _%L41265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              _%g4125141262%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4124941277%_
                                              (string->bytes
                                               (gx#stx-e _%L41236%_))))
                                           (_%g4119541209%_ _%g4119641213%_)))
                                     _%hd4120241230%_)
                                    (_%g4119541209%_ _%g4119641213%_))))
                            (_%g4119541209%_ _%g4119641213%_))))
                    (_%g4119541209%_ _%g4119641213%_)))))
        (_%g4119441281%_ _%stx41192%_))))
  (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
    (lambda (_%stx41285%_)
      (let* ((_%g4128841302%_
              (lambda (_%g4128941298%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4128941298%_)))
             (_%g4128741343%_
              (lambda (_%g4128941306%_)
                (if (gx#stx-pair? _%g4128941306%_)
                    (let ((_%e4129141309%_ (gx#syntax-e _%g4128941306%_)))
                      (let ((_%hd4129241313%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4129141309%_)))
                            (_%tl4129341316%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4129141309%_))))
                        (if (gx#stx-pair? _%tl4129341316%_)
                            (let ((_%e4129441319%_
                                   (gx#syntax-e _%tl4129341316%_)))
                              (let ((_%hd4129541323%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4129441319%_)))
                                    (_%tl4129641326%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4129441319%_))))
                                (if (gx#stx-null? _%tl4129641326%_)
                                    ((lambda (_%L41329%_)
                                       (if (gx#current-expander-compiling?)
                                           (gx#eval-syntax _%L41329%_)
                                           '#!void)
                                       (cons (gx#datum->syntax '#f 'void) '()))
                                     _%hd4129541323%_)
                                    (_%g4128841302%_ _%g4128941306%_))))
                            (_%g4128841302%_ _%g4128941306%_))))
                    (_%g4128841302%_ _%g4128941306%_)))))
        (_%g4128741343%_ _%stx41285%_)))))
