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
    (lambda _%$args40292%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setq-macro::t|
             _%$args40292%_)))
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
    (lambda _%$args40288%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setf-macro::t|
             _%$args40288%_)))
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
    (lambda (_%stx40285%_)
      (if (gx#identifier? _%stx40285%_)
          (let ((__tmp41510 (gx#syntax-local-value _%stx40285%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setf-macro::t|
             __tmp41510))
          '#f)))
  (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
    (lambda (_%stx40282%_)
      (if (gx#identifier? _%stx40282%_)
          (let ((__tmp41511 (gx#syntax-local-value _%stx40282%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setq-macro::t|
             __tmp41511))
          '#f)))
  (define |gerbil/core/more-sugar[1]#expand-set!|
    (lambda (_%stx39907%_)
      (let* ((_%__stx4134941350%_ _%stx39907%_)
             (_%g3991339976%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4134941350%_))))
        (let ((_%__kont4135241353%_
               (lambda (_%L40259%_ _%L40261%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40261%_)
                  _%stx39907%_)))
              (_%__kont4135441355%_
               (lambda (_%L40148%_ _%L40150%_ _%L40151%_)
                 (let* ((_%g4017340181%_
                         (lambda (_%g4017440177%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4017440177%_)))
                        (_%g4017240208%_
                         (lambda (_%g4017440185%_)
                           ((lambda (_%L40188%_)
                              (cons _%L40188%_
                                    (foldr (lambda (_%g4019940202%_
                                                    _%g4020040205%_)
                                             (cons _%g4019940202%_
                                                   _%g4020040205%_))
                                           (cons _%L40148%_ '())
                                           _%L40150%_)))
                            _%g4017440185%_))))
                   (_%g4017240208%_
                    (gx#stx-identifier _%L40151%_ _%L40151%_ '"-set!")))))
              (_%__kont4135841359%_
               (lambda (_%L40058%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40058%_)
                  _%stx39907%_)))
              (_%__kont4136041361%_
               (lambda (_%L40013%_ _%L40015%_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _%L40015%_ (cons _%L40013%_ '()))))))
          (let* ((_%__match4144841449%_
                  (lambda (_%e3996239983%_
                           _%hd3996339987%_
                           _%tl3996439990%_
                           _%e3996539993%_
                           _%hd3996639997%_
                           _%tl3996740000%_
                           _%e3996840003%_
                           _%hd3996940007%_
                           _%tl3997040010%_)
                    (let ((_%L40013%_ _%hd3996940007%_)
                          (_%L40015%_ _%hd3996639997%_))
                      (if (gx#identifier? _%L40015%_)
                          (_%__kont4136041361%_ _%L40013%_ _%L40015%_)
                          (let () (declare (not safe)) (_%g3991339976%_))))))
                 (_%__match4142841429%_
                  (lambda (_%e3995440038%_
                           _%hd3995540042%_
                           _%tl3995640045%_
                           _%e3995740048%_
                           _%hd3995840052%_
                           _%tl3995940055%_)
                    (let ((_%L40058%_ _%hd3995840052%_))
                      (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                           _%L40058%_)
                          (_%__kont4135841359%_ _%L40058%_)
                          (if (gx#stx-pair? _%tl3995940055%_)
                              (let ((_%e3996840003%_
                                     (gx#syntax-e _%tl3995940055%_)))
                                (let ((_%tl3997040010%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e3996840003%_)))
                                      (_%hd3996940007%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e3996840003%_))))
                                  (if (gx#stx-null? _%tl3997040010%_)
                                      (_%__match4144841449%_
                                       _%e3995440038%_
                                       _%hd3995540042%_
                                       _%tl3995640045%_
                                       _%e3995740048%_
                                       _%hd3995840052%_
                                       _%tl3995940055%_
                                       _%e3996840003%_
                                       _%hd3996940007%_
                                       _%tl3997040010%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3991339976%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3991339976%_)))))))
                 (_%__match4141641417%_
                  (lambda (_%e3993240078%_
                           _%hd3993340082%_
                           _%tl3993440085%_
                           _%e3993540088%_
                           _%hd3993640092%_
                           _%tl3993740095%_
                           _%e3993840098%_
                           _%hd3993940102%_
                           _%tl3994040105%_
                           _%__splice4135641357%_
                           _%target3994140108%_
                           _%tl3994340111%_)
                    (letrec ((_%loop3994440114%_
                              (lambda (_%hd3994240118%_ _%arg3994840121%_)
                                (if (gx#stx-pair? _%hd3994240118%_)
                                    (let ((_%e3994540124%_
                                           (gx#syntax-e _%hd3994240118%_)))
                                      (let ((_%lp-tl3994740131%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e3994540124%_)))
                                            (_%lp-hd3994640128%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e3994540124%_))))
                                        (_%loop3994440114%_
                                         _%lp-tl3994740131%_
                                         (cons _%lp-hd3994640128%_
                                               _%arg3994840121%_))))
                                    (let ((_%arg3994940134%_
                                           (reverse _%arg3994840121%_)))
                                      (if (gx#stx-pair? _%tl3993740095%_)
                                          (let ((_%e3995040138%_
                                                 (gx#syntax-e
                                                  _%tl3993740095%_)))
                                            (let ((_%tl3995240145%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3995040138%_)))
                                                  (_%hd3995140142%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3995040138%_))))
                                              (if (gx#stx-null?
                                                   _%tl3995240145%_)
                                                  (let ((_%L40148%_
                                                         _%hd3995140142%_)
                                                        (_%L40150%_
                                                         _%arg3994940134%_)
                                                        (_%L40151%_
                                                         _%hd3993940102%_))
                                                    (if (gx#identifier?
                                                         _%L40151%_)
                                                        (_%__kont4135441355%_
                                                         _%L40148%_
                                                         _%L40150%_
                                                         _%L40151%_)
                                                        (_%__match4142841429%_
                                                         _%e3993240078%_
                                                         _%hd3993340082%_
                                                         _%tl3993440085%_
                                                         _%e3993540088%_
                                                         _%hd3993640092%_
                                                         _%tl3993740095%_)))
                                                  (_%__match4142841429%_
                                                   _%e3993240078%_
                                                   _%hd3993340082%_
                                                   _%tl3993440085%_
                                                   _%e3993540088%_
                                                   _%hd3993640092%_
                                                   _%tl3993740095%_))))
                                          (_%__match4142841429%_
                                           _%e3993240078%_
                                           _%hd3993340082%_
                                           _%tl3993440085%_
                                           _%e3993540088%_
                                           _%hd3993640092%_
                                           _%tl3993740095%_)))))))
                      (_%loop3994440114%_ _%target3994140108%_ '())))))
            (if (gx#stx-pair? _%__stx4134941350%_)
                (let ((_%e3991740219%_ (gx#syntax-e _%__stx4134941350%_)))
                  (let ((_%tl3991940226%_
                         (let () (declare (not safe)) (##cdr _%e3991740219%_)))
                        (_%hd3991840223%_
                         (let ()
                           (declare (not safe))
                           (##car _%e3991740219%_))))
                    (if (gx#stx-pair? _%tl3991940226%_)
                        (let ((_%e3992040229%_ (gx#syntax-e _%tl3991940226%_)))
                          (let ((_%tl3992240236%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e3992040229%_)))
                                (_%hd3992140233%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e3992040229%_))))
                            (if (gx#stx-pair? _%hd3992140233%_)
                                (let ((_%e3992340239%_
                                       (gx#syntax-e _%hd3992140233%_)))
                                  (let ((_%tl3992540246%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3992340239%_)))
                                        (_%hd3992440243%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3992340239%_))))
                                    (if (gx#stx-pair? _%tl3992240236%_)
                                        (let ((_%e3992640249%_
                                               (gx#syntax-e _%tl3992240236%_)))
                                          (let ((_%tl3992840256%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e3992640249%_)))
                                                (_%hd3992740253%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e3992640249%_))))
                                            (if (gx#stx-null? _%tl3992840256%_)
                                                (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                     (gx#datum->syntax
                                                      '#f
                                                      'setfid))
                                                    (let ((_%L40259%_
                                                           _%hd3992740253%_)
                                                          (_%L40261%_
                                                           _%hd3992440243%_))
                                                      (_%__kont4135241353%_
                                                       _%L40259%_
                                                       _%L40261%_))
                                                    (if (gx#stx-pair/null?
                                                         _%tl3992540246%_)
                                                        (let ((_%__splice4135641357%_
                                                               (gx#syntax-split-splice
                                                                _%tl3992540246%_
                                                                '0)))
                                                          (let ((_%tl3994340111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4135641357%_ '1)))
                        (_%target3994140108%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4135641357%_ '0))))
                    (if (gx#stx-null? _%tl3994340111%_)
                        (_%__match4141641417%_
                         _%e3991740219%_
                         _%hd3991840223%_
                         _%tl3991940226%_
                         _%e3992040229%_
                         _%hd3992140233%_
                         _%tl3992240236%_
                         _%e3992340239%_
                         _%hd3992440243%_
                         _%tl3992540246%_
                         _%__splice4135641357%_
                         _%target3994140108%_
                         _%tl3994340111%_)
                        (_%__match4142841429%_
                         _%e3991740219%_
                         _%hd3991840223%_
                         _%tl3991940226%_
                         _%e3992040229%_
                         _%hd3992140233%_
                         _%tl3992240236%_))))
                (_%__match4142841429%_
                 _%e3991740219%_
                 _%hd3991840223%_
                 _%tl3991940226%_
                 _%e3992040229%_
                 _%hd3992140233%_
                 _%tl3992240236%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%tl3992540246%_)
                                                    (let ((_%__splice4135641357%_
                                                           (gx#syntax-split-splice
                                                            _%tl3992540246%_
                                                            '0)))
                                                      (let ((_%tl3994340111%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4135641357%_ '1)))
                    (_%target3994140108%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4135641357%_ '0))))
                (if (gx#stx-null? _%tl3994340111%_)
                    (_%__match4141641417%_
                     _%e3991740219%_
                     _%hd3991840223%_
                     _%tl3991940226%_
                     _%e3992040229%_
                     _%hd3992140233%_
                     _%tl3992240236%_
                     _%e3992340239%_
                     _%hd3992440243%_
                     _%tl3992540246%_
                     _%__splice4135641357%_
                     _%target3994140108%_
                     _%tl3994340111%_)
                    (_%__match4142841429%_
                     _%e3991740219%_
                     _%hd3991840223%_
                     _%tl3991940226%_
                     _%e3992040229%_
                     _%hd3992140233%_
                     _%tl3992240236%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match4142841429%_
                                                     _%e3991740219%_
                                                     _%hd3991840223%_
                                                     _%tl3991940226%_
                                                     _%e3992040229%_
                                                     _%hd3992140233%_
                                                     _%tl3992240236%_)))))
                                        (if (gx#stx-pair/null?
                                             _%tl3992540246%_)
                                            (let ((_%__splice4135641357%_
                                                   (gx#syntax-split-splice
                                                    _%tl3992540246%_
                                                    '0)))
                                              (let ((_%tl3994340111%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4135641357%_
                                                        '1)))
                                                    (_%target3994140108%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4135641357%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl3994340111%_)
                                                    (_%__match4141641417%_
                                                     _%e3991740219%_
                                                     _%hd3991840223%_
                                                     _%tl3991940226%_
                                                     _%e3992040229%_
                                                     _%hd3992140233%_
                                                     _%tl3992240236%_
                                                     _%e3992340239%_
                                                     _%hd3992440243%_
                                                     _%tl3992540246%_
                                                     _%__splice4135641357%_
                                                     _%target3994140108%_
                                                     _%tl3994340111%_)
                                                    (_%__match4142841429%_
                                                     _%e3991740219%_
                                                     _%hd3991840223%_
                                                     _%tl3991940226%_
                                                     _%e3992040229%_
                                                     _%hd3992140233%_
                                                     _%tl3992240236%_))))
                                            (_%__match4142841429%_
                                             _%e3991740219%_
                                             _%hd3991840223%_
                                             _%tl3991940226%_
                                             _%e3992040229%_
                                             _%hd3992140233%_
                                             _%tl3992240236%_)))))
                                (_%__match4142841429%_
                                 _%e3991740219%_
                                 _%hd3991840223%_
                                 _%tl3991940226%_
                                 _%e3992040229%_
                                 _%hd3992140233%_
                                 _%tl3992240236%_))))
                        (let () (declare (not safe)) (_%g3991339976%_)))))
                (let () (declare (not safe)) (_%g3991339976%_))))))))
  (define |gerbil/core/more-sugar[:0:]#set!|
    (lambda (_%stx40297%_)
      (|gerbil/core/more-sugar[1]#expand-set!| _%stx40297%_)))
  (define |gerbil/core/more-sugar[:0:]#values-set!|
    (lambda (_%stx40300%_)
      (let* ((_%g4030340327%_
              (lambda (_%g4030440323%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4030440323%_)))
             (_%g4030240505%_
              (lambda (_%g4030440331%_)
                (if (gx#stx-pair? _%g4030440331%_)
                    (let ((_%e4030740334%_ (gx#syntax-e _%g4030440331%_)))
                      (let ((_%hd4030840338%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4030740334%_)))
                            (_%tl4030940341%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4030740334%_))))
                        (if (gx#stx-pair/null? _%tl4030940341%_)
                            (if (let ((__tmp41512
                                       (gx#stx-length _%tl4030940341%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp41512 '1))
                                (let ((_g41513_
                                       (gx#syntax-split-splice
                                        _%tl4030940341%_
                                        '1)))
                                  (begin
                                    (let ((_g41514_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g41513_)
                                                 (##vector-length _g41513_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g41514_ 2)))
                                          (error "Context expects 2 values"
                                                 _g41514_)))
                                    (let ((_%target4031040344%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g41513_ 0)))
                                          (_%tl4031240347%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g41513_ 1))))
                                      (if (gx#stx-pair? _%tl4031240347%_)
                                          (let ((_%e4031940350%_
                                                 (gx#syntax-e
                                                  _%tl4031240347%_)))
                                            (let ((_%hd4032040354%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4031940350%_)))
                                                  (_%tl4032140357%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4031940350%_))))
                                              (if (gx#stx-null?
                                                   _%tl4032140357%_)
                                                  (letrec ((_%loop4031340360%_
                                                            (lambda (_%hd4031140364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%tgt4031740367%_)
                      (if (gx#stx-pair? _%hd4031140364%_)
                          (let ((_%e4031440370%_
                                 (gx#syntax-e _%hd4031140364%_)))
                            (let ((_%lp-hd4031540374%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4031440370%_)))
                                  (_%lp-tl4031640377%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4031440370%_))))
                              (_%loop4031340360%_
                               _%lp-tl4031640377%_
                               (cons _%lp-hd4031540374%_ _%tgt4031740367%_))))
                          (let ((_%tgt4031840380%_
                                 (reverse _%tgt4031740367%_)))
                            ((lambda (_%L40384%_ _%L40386%_)
                               (let* ((_%g4040440421%_
                                       (lambda (_%g4040540417%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g4040540417%_)))
                                      (_%g4040340493%_
                                       (lambda (_%g4040540425%_)
                                         (if (gx#stx-pair/null?
                                              _%g4040540425%_)
                                             (let ((_g41515_
                                                    (gx#syntax-split-splice
                                                     _%g4040540425%_
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
                                                 (let ((_%target4040740428%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g41515_
                                                           0)))
                                                       (_%tl4040940431%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g41515_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl4040940431%_)
                                                       (letrec ((_%loop4041040434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd4040840438%_ _%$e4041440441%_)
                           (if (gx#stx-pair? _%hd4040840438%_)
                               (let ((_%e4041140444%_
                                      (gx#syntax-e _%hd4040840438%_)))
                                 (let ((_%lp-hd4041240448%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4041140444%_)))
                                       (_%lp-tl4041340451%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4041140444%_))))
                                   (_%loop4041040434%_
                                    _%lp-tl4041340451%_
                                    (cons _%lp-hd4041240448%_
                                          _%$e4041440441%_))))
                               (let ((_%$e4041540454%_
                                      (reverse _%$e4041440441%_)))
                                 ((lambda (_%L40458%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (cons (cons (foldr (lambda (_%g4047640479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4047740482%_)
                             (cons _%g4047640479%_ _%g4047740482%_))
                           '()
                           _%L40458%_)
                    (cons _%L40384%_ '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L40458%_
                                                   _%L40386%_)
                                                  (foldr (lambda (_%g4047340485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4047440488%_
                          _%g4047540490%_)
                   (cons (cons (gx#datum->syntax '#f 'set!)
                               (cons _%g4047440488%_
                                     (cons _%g4047340485%_ '())))
                         _%g4047540490%_))
                 '()
                 _%L40458%_
                 _%L40386%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%$e4041540454%_))))))
                 (_%loop4041040434%_ _%target4040740428%_ '()))
               (_%g4040440421%_ _%g4040540425%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4040440421%_
                                              _%g4040540425%_)))))
                                 (_%g4040340493%_
                                  (gx#gentemps
                                   (foldr (lambda (_%g4049640499%_
                                                   _%g4049740502%_)
                                            (cons _%g4049640499%_
                                                  _%g4049740502%_))
                                          '()
                                          _%L40386%_)))))
                             _%hd4032040354%_
                             _%tgt4031840380%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4031340360%_
                                                     _%target4031040344%_
                                                     '()))
                                                  (_%g4030340327%_
                                                   _%g4030440331%_))))
                                          (_%g4030340327%_ _%g4030440331%_)))))
                                (_%g4030340327%_ _%g4030440331%_))
                            (_%g4030340327%_ _%g4030440331%_))))
                    (_%g4030340327%_ _%g4030440331%_)))))
        (_%g4030240505%_ _%stx40300%_))))
  (define |gerbil/core/more-sugar[:0:]#parameterize|
    (lambda (_%stx40511%_)
      (let* ((_%__stx4145141452%_ _%stx40511%_)
             (_%g4051540573%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4145141452%_))))
        (let ((_%__kont4145441455%_
               (lambda (_%L40907%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_%g4092340926%_ _%g4092440929%_)
                                      (cons _%g4092340926%_ _%g4092440929%_))
                                    '()
                                    _%L40907%_)))))
              (_%__kont4145841459%_
               (lambda (_%L40684%_ _%L40686%_ _%L40687%_)
                 (let* ((_%g4071040718%_
                         (lambda (_%g4071140714%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4071140714%_)))
                        (_%g4070940838%_
                         (lambda (_%g4071140722%_)
                           ((lambda (_%L40725%_)
                              (let* ((_%g4073740754%_
                                      (lambda (_%g4073840750%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g4073840750%_)))
                                     (_%g4073640818%_
                                      (lambda (_%g4073840758%_)
                                        (if (gx#stx-pair/null? _%g4073840758%_)
                                            (let ((_g41517_
                                                   (gx#syntax-split-splice
                                                    _%g4073840758%_
                                                    '0)))
                                              (begin
                                                (let ((_g41518_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g41517_)
                                                             (##vector-length
                                                              _g41517_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g41518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g41518_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target4074040761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41517_
                                                          0)))
                                                      (_%tl4074240764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41517_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl4074240764%_)
                                                      (letrec ((_%loop4074340767%_
                                                                (lambda (_%hd4074140771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%arg4074740774%_)
                          (if (gx#stx-pair? _%hd4074140771%_)
                              (let ((_%e4074440777%_
                                     (gx#syntax-e _%hd4074140771%_)))
                                (let ((_%lp-hd4074540781%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4074440777%_)))
                                      (_%lp-tl4074640784%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4074440777%_))))
                                  (_%loop4074340767%_
                                   _%lp-tl4074640784%_
                                   (cons _%lp-hd4074540781%_
                                         _%arg4074740774%_))))
                              (let ((_%arg4074840787%_
                                     (reverse _%arg4074740774%_)))
                                ((lambda (_%L40791%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'call-with-parameters)
                                         (cons _%L40725%_
                                               (foldr (lambda (_%g4080940812%_
                                                               _%g4081040815%_)
                                                        (cons _%g4080940812%_
                                                              _%g4081040815%_))
                                                      '()
                                                      _%L40791%_))))
                                 _%arg4074840787%_))))))
                (_%loop4074340767%_ _%target4074040761%_ '()))
              (_%g4073740754%_ _%g4073840758%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4073740754%_
                                             _%g4073840758%_)))))
                                (_%g4073640818%_
                                 (foldr cons*
                                        '()
                                        (gx#syntax->list
                                         (foldr (lambda (_%g4082140824%_
                                                         _%g4082240827%_)
                                                  (cons _%g4082140824%_
                                                        _%g4082240827%_))
                                                '()
                                                _%L40687%_))
                                        (gx#syntax->list
                                         (foldr (lambda (_%g4082940832%_
                                                         _%g4083040835%_)
                                                  (cons _%g4082940832%_
                                                        _%g4083040835%_))
                                                '()
                                                _%L40686%_))))))
                            _%g4071140722%_))))
                   (_%g4070940838%_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_%g4084140844%_
                                                 _%g4084240847%_)
                                          (cons _%g4084140844%_
                                                _%g4084240847%_))
                                        '()
                                        _%L40684%_)))
                     (gx#stx-source _%stx40511%_)))))))
          (let* ((_%__match4150641507%_
                  (lambda (_%e4053640580%_
                           _%hd4053740584%_
                           _%tl4053840587%_
                           _%e4053940590%_
                           _%hd4054040594%_
                           _%tl4054140597%_
                           _%__splice4146041461%_
                           _%target4054240600%_
                           _%tl4054440603%_)
                    (letrec ((_%loop4054540606%_
                              (lambda (_%hd4054340610%_
                                       _%expr4054940613%_
                                       _%param4055040615%_)
                                (if (gx#stx-pair? _%hd4054340610%_)
                                    (let ((_%e4054640618%_
                                           (gx#syntax-e _%hd4054340610%_)))
                                      (let ((_%lp-tl4054840625%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4054640618%_)))
                                            (_%lp-hd4054740622%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4054640618%_))))
                                        (if (gx#stx-pair? _%lp-hd4054740622%_)
                                            (let ((_%e4056240628%_
                                                   (gx#syntax-e
                                                    _%lp-hd4054740622%_)))
                                              (let ((_%tl4056440635%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4056240628%_)))
                                                    (_%hd4056340632%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4056240628%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4056440635%_)
                                                    (let ((_%e4056540638%_
                                                           (gx#syntax-e
                                                            _%tl4056440635%_)))
                                                      (let ((_%tl4056740645%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4056540638%_)))
                    (_%hd4056640642%_
                     (let () (declare (not safe)) (##car _%e4056540638%_))))
                (if (gx#stx-null? _%tl4056740645%_)
                    (_%loop4054540606%_
                     _%lp-tl4054840625%_
                     (cons _%hd4056640642%_ _%expr4054940613%_)
                     (cons _%hd4056340632%_ _%param4055040615%_))
                    (let () (declare (not safe)) (_%g4051540573%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4051540573%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4051540573%_)))))
                                    (let ((_%param4055240651%_
                                           (reverse _%param4055040615%_))
                                          (_%expr4055140648%_
                                           (reverse _%expr4054940613%_)))
                                      (if (gx#stx-pair/null? _%tl4054140597%_)
                                          (let ((_%__splice4146241463%_
                                                 (gx#syntax-split-splice
                                                  _%tl4054140597%_
                                                  '0)))
                                            (let ((_%tl4055540657%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4146241463%_
                                                      '1)))
                                                  (_%target4055340654%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4146241463%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4055540657%_)
                                                  (letrec ((_%loop4055640660%_
                                                            (lambda (_%hd4055440664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body4056040667%_)
                      (if (gx#stx-pair? _%hd4055440664%_)
                          (let ((_%e4055740670%_
                                 (gx#syntax-e _%hd4055440664%_)))
                            (let ((_%lp-tl4055940677%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4055740670%_)))
                                  (_%lp-hd4055840674%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4055740670%_))))
                              (_%loop4055640660%_
                               _%lp-tl4055940677%_
                               (cons _%lp-hd4055840674%_ _%body4056040667%_))))
                          (let ((_%body4056140680%_
                                 (reverse _%body4056040667%_)))
                            (_%__kont4145841459%_
                             _%body4056140680%_
                             _%expr4055140648%_
                             _%param4055240651%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4055640660%_
                                                     _%target4055340654%_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4051540573%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4051540573%_))))))))
                      (_%loop4054540606%_ _%target4054240600%_ '() '()))))
                 (_%__match4148641487%_
                  (lambda (_%e4051840857%_
                           _%hd4051940861%_
                           _%tl4052040864%_
                           _%e4052140867%_
                           _%hd4052240871%_
                           _%tl4052340874%_
                           _%__splice4145641457%_
                           _%target4052440877%_
                           _%tl4052640880%_)
                    (letrec ((_%loop4052740883%_
                              (lambda (_%hd4052540887%_ _%body4053140890%_)
                                (if (gx#stx-pair? _%hd4052540887%_)
                                    (let ((_%e4052840893%_
                                           (gx#syntax-e _%hd4052540887%_)))
                                      (let ((_%lp-tl4053040900%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4052840893%_)))
                                            (_%lp-hd4052940897%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4052840893%_))))
                                        (_%loop4052740883%_
                                         _%lp-tl4053040900%_
                                         (cons _%lp-hd4052940897%_
                                               _%body4053140890%_))))
                                    (let ((_%body4053240903%_
                                           (reverse _%body4053140890%_)))
                                      (_%__kont4145441455%_
                                       _%body4053240903%_))))))
                      (_%loop4052740883%_ _%target4052440877%_ '())))))
            (if (gx#stx-pair? _%__stx4145141452%_)
                (let ((_%e4051840857%_ (gx#syntax-e _%__stx4145141452%_)))
                  (let ((_%tl4052040864%_
                         (let () (declare (not safe)) (##cdr _%e4051840857%_)))
                        (_%hd4051940861%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4051840857%_))))
                    (if (gx#stx-pair? _%tl4052040864%_)
                        (let ((_%e4052140867%_ (gx#syntax-e _%tl4052040864%_)))
                          (let ((_%tl4052340874%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4052140867%_)))
                                (_%hd4052240871%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4052140867%_))))
                            (if (gx#stx-null? _%hd4052240871%_)
                                (if (gx#stx-pair/null? _%tl4052340874%_)
                                    (let ((_%__splice4145641457%_
                                           (gx#syntax-split-splice
                                            _%tl4052340874%_
                                            '0)))
                                      (let ((_%tl4052640880%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4145641457%_
                                                '1)))
                                            (_%target4052440877%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4145641457%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4052640880%_)
                                            (_%__match4148641487%_
                                             _%e4051840857%_
                                             _%hd4051940861%_
                                             _%tl4052040864%_
                                             _%e4052140867%_
                                             _%hd4052240871%_
                                             _%tl4052340874%_
                                             _%__splice4145641457%_
                                             _%target4052440877%_
                                             _%tl4052640880%_)
                                            (if (gx#stx-pair/null?
                                                 _%hd4052240871%_)
                                                (let ((_%__splice4146041461%_
                                                       (gx#syntax-split-splice
                                                        _%hd4052240871%_
                                                        '0)))
                                                  (let ((_%tl4054440603%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4146041461%_
                                                            '1)))
                                                        (_%target4054240600%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4146041461%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4054440603%_)
                                                        (_%__match4150641507%_
                                                         _%e4051840857%_
                                                         _%hd4051940861%_
                                                         _%tl4052040864%_
                                                         _%e4052140867%_
                                                         _%hd4052240871%_
                                                         _%tl4052340874%_
                                                         _%__splice4146041461%_
                                                         _%target4054240600%_
                                                         _%tl4054440603%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4051540573%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4051540573%_))))))
                                    (if (gx#stx-pair/null? _%hd4052240871%_)
                                        (let ((_%__splice4146041461%_
                                               (gx#syntax-split-splice
                                                _%hd4052240871%_
                                                '0)))
                                          (let ((_%tl4054440603%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4146041461%_
                                                    '1)))
                                                (_%target4054240600%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4146041461%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4054440603%_)
                                                (_%__match4150641507%_
                                                 _%e4051840857%_
                                                 _%hd4051940861%_
                                                 _%tl4052040864%_
                                                 _%e4052140867%_
                                                 _%hd4052240871%_
                                                 _%tl4052340874%_
                                                 _%__splice4146041461%_
                                                 _%target4054240600%_
                                                 _%tl4054440603%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4051540573%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4051540573%_))))
                                (if (gx#stx-pair/null? _%hd4052240871%_)
                                    (let ((_%__splice4146041461%_
                                           (gx#syntax-split-splice
                                            _%hd4052240871%_
                                            '0)))
                                      (let ((_%tl4054440603%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4146041461%_
                                                '1)))
                                            (_%target4054240600%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4146041461%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4054440603%_)
                                            (_%__match4150641507%_
                                             _%e4051840857%_
                                             _%hd4051940861%_
                                             _%tl4052040864%_
                                             _%e4052140867%_
                                             _%hd4052240871%_
                                             _%tl4052340874%_
                                             _%__splice4146041461%_
                                             _%target4054240600%_
                                             _%tl4054440603%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4051540573%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4051540573%_))))))
                        (let () (declare (not safe)) (_%g4051540573%_)))))
                (let () (declare (not safe)) (_%g4051540573%_))))))))
  (define |gerbil/core/more-sugar[:0:]#let/cc|
    (lambda (_%$stx40940%_)
      (let* ((_%g4094440968%_
              (lambda (_%g4094540964%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4094540964%_)))
             (_%g4094341053%_
              (lambda (_%g4094540972%_)
                (if (gx#stx-pair? _%g4094540972%_)
                    (let ((_%e4094840975%_ (gx#syntax-e _%g4094540972%_)))
                      (let ((_%hd4094940979%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4094840975%_)))
                            (_%tl4095040982%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4094840975%_))))
                        (if (gx#stx-pair? _%tl4095040982%_)
                            (let ((_%e4095140985%_
                                   (gx#syntax-e _%tl4095040982%_)))
                              (let ((_%hd4095240989%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4095140985%_)))
                                    (_%tl4095340992%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4095140985%_))))
                                (if (gx#stx-pair/null? _%tl4095340992%_)
                                    (let ((_g41519_
                                           (gx#syntax-split-splice
                                            _%tl4095340992%_
                                            '0)))
                                      (begin
                                        (let ((_g41520_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g41519_)
                                                     (##vector-length _g41519_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g41520_ 2)))
                                              (error "Context expects 2 values"
                                                     _g41520_)))
                                        (let ((_%target4095440995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g41519_ 0)))
                                              (_%tl4095640998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g41519_ 1))))
                                          (if (gx#stx-null? _%tl4095640998%_)
                                              (letrec ((_%loop4095741001%_
                                                        (lambda (_%hd4095541005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body4096141008%_)
                  (if (gx#stx-pair? _%hd4095541005%_)
                      (let ((_%e4095841011%_ (gx#syntax-e _%hd4095541005%_)))
                        (let ((_%lp-hd4095941015%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4095841011%_)))
                              (_%lp-tl4096041018%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4095841011%_))))
                          (_%loop4095741001%_
                           _%lp-tl4096041018%_
                           (cons _%lp-hd4095941015%_ _%body4096141008%_))))
                      (let ((_%body4096241021%_ (reverse _%body4096141008%_)))
                        ((lambda (_%L41025%_ _%L41027%_)
                           (if (gx#identifier? _%L41027%_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _%L41027%_ '())
                                                       (foldr (lambda (_%g4104441047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4104541050%_)
                        (cons _%g4104441047%_ _%g4104541050%_))
                      '()
                      _%L41025%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_%g4094440968%_ _%g4094540972%_)))
                         _%body4096241021%_
                         _%hd4095240989%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop4095741001%_
                                                 _%target4095440995%_
                                                 '()))
                                              (_%g4094440968%_
                                               _%g4094540972%_)))))
                                    (_%g4094440968%_ _%g4094540972%_))))
                            (_%g4094440968%_ _%g4094540972%_))))
                    (_%g4094440968%_ _%g4094540972%_)))))
        (_%g4094341053%_ _%$stx40940%_))))
  (define |gerbil/core/more-sugar[:0:]#unwind-protect|
    (lambda (_%$stx41058%_)
      (let* ((_%g4106241090%_
              (lambda (_%g4106341086%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4106341086%_)))
             (_%g4106141189%_
              (lambda (_%g4106341094%_)
                (if (gx#stx-pair? _%g4106341094%_)
                    (let ((_%e4106741097%_ (gx#syntax-e _%g4106341094%_)))
                      (let ((_%hd4106841101%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4106741097%_)))
                            (_%tl4106941104%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4106741097%_))))
                        (if (gx#stx-pair? _%tl4106941104%_)
                            (let ((_%e4107041107%_
                                   (gx#syntax-e _%tl4106941104%_)))
                              (let ((_%hd4107141111%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4107041107%_)))
                                    (_%tl4107241114%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4107041107%_))))
                                (if (gx#stx-pair? _%tl4107241114%_)
                                    (let ((_%e4107341117%_
                                           (gx#syntax-e _%tl4107241114%_)))
                                      (let ((_%hd4107441121%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4107341117%_)))
                                            (_%tl4107541124%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4107341117%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4107541124%_)
                                            (let ((_g41521_
                                                   (gx#syntax-split-splice
                                                    _%tl4107541124%_
                                                    '0)))
                                              (begin
                                                (let ((_g41522_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g41521_)
                                                             (##vector-length
                                                              _g41521_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g41522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g41522_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target4107641127%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41521_
                                                          0)))
                                                      (_%tl4107841130%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41521_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl4107841130%_)
                                                      (letrec ((_%loop4107941133%_
                                                                (lambda (_%hd4107741137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%rest4108341140%_)
                          (if (gx#stx-pair? _%hd4107741137%_)
                              (let ((_%e4108041143%_
                                     (gx#syntax-e _%hd4107741137%_)))
                                (let ((_%lp-hd4108141147%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4108041143%_)))
                                      (_%lp-tl4108241150%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4108041143%_))))
                                  (_%loop4107941133%_
                                   _%lp-tl4108241150%_
                                   (cons _%lp-hd4108141147%_
                                         _%rest4108341140%_))))
                              (let ((_%rest4108441153%_
                                     (reverse _%rest4108341140%_)))
                                ((lambda (_%L41157%_ _%L41159%_ _%L41160%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _%L41160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L41159%_
                               (foldr (lambda (_%g4118041183%_ _%g4118141186%_)
                                        (cons _%g4118041183%_ _%g4118141186%_))
                                      '()
                                      _%L41157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _%rest4108441153%_
                                 _%hd4107441121%_
                                 _%hd4107141111%_))))))
                (_%loop4107941133%_ _%target4107641127%_ '()))
              (_%g4106241090%_ _%g4106341094%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4106241090%_
                                             _%g4106341094%_))))
                                    (_%g4106241090%_ _%g4106341094%_))))
                            (_%g4106241090%_ _%g4106341094%_))))
                    (_%g4106241090%_ _%g4106341094%_)))))
        (_%g4106141189%_ _%$stx41058%_))))
  (define |gerbil/core/more-sugar[:0:]#@bytes|
    (lambda (_%stx41194%_)
      (let* ((_%g4119741211%_
              (lambda (_%g4119841207%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4119841207%_)))
             (_%g4119641283%_
              (lambda (_%g4119841215%_)
                (if (gx#stx-pair? _%g4119841215%_)
                    (let ((_%e4120041218%_ (gx#syntax-e _%g4119841215%_)))
                      (let ((_%hd4120141222%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4120041218%_)))
                            (_%tl4120241225%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4120041218%_))))
                        (if (gx#stx-pair? _%tl4120241225%_)
                            (let ((_%e4120341228%_
                                   (gx#syntax-e _%tl4120241225%_)))
                              (let ((_%hd4120441232%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4120341228%_)))
                                    (_%tl4120541235%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4120341228%_))))
                                (if (gx#stx-null? _%tl4120541235%_)
                                    ((lambda (_%L41238%_)
                                       (if (gx#stx-string? _%L41238%_)
                                           (let* ((_%g4125241260%_
                                                   (lambda (_%g4125341256%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4125341256%_)))
                                                  (_%g4125141279%_
                                                   (lambda (_%g4125341264%_)
                                                     ((lambda (_%L41267%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _%L41267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              _%g4125341264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4125141279%_
                                              (string->bytes
                                               (gx#stx-e _%L41238%_))))
                                           (_%g4119741211%_ _%g4119841215%_)))
                                     _%hd4120441232%_)
                                    (_%g4119741211%_ _%g4119841215%_))))
                            (_%g4119741211%_ _%g4119841215%_))))
                    (_%g4119741211%_ _%g4119841215%_)))))
        (_%g4119641283%_ _%stx41194%_))))
  (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
    (lambda (_%stx41287%_)
      (let* ((_%g4129041304%_
              (lambda (_%g4129141300%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4129141300%_)))
             (_%g4128941345%_
              (lambda (_%g4129141308%_)
                (if (gx#stx-pair? _%g4129141308%_)
                    (let ((_%e4129341311%_ (gx#syntax-e _%g4129141308%_)))
                      (let ((_%hd4129441315%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4129341311%_)))
                            (_%tl4129541318%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4129341311%_))))
                        (if (gx#stx-pair? _%tl4129541318%_)
                            (let ((_%e4129641321%_
                                   (gx#syntax-e _%tl4129541318%_)))
                              (let ((_%hd4129741325%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4129641321%_)))
                                    (_%tl4129841328%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4129641321%_))))
                                (if (gx#stx-null? _%tl4129841328%_)
                                    ((lambda (_%L41331%_)
                                       (if (gx#current-expander-compiling?)
                                           (gx#eval-syntax _%L41331%_)
                                           '#!void)
                                       (cons (gx#datum->syntax '#f 'void) '()))
                                     _%hd4129741325%_)
                                    (_%g4129041304%_ _%g4129141308%_))))
                            (_%g4129041304%_ _%g4129141308%_))))
                    (_%g4129041304%_ _%g4129141308%_)))))
        (_%g4128941345%_ _%stx41287%_)))))
