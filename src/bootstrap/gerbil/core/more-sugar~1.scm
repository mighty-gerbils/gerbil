(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g45148_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g45151_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45152_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45153_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45154_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
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
      (lambda _%$args40397%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args40397%_)))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
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
      (lambda _%$args40393%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args40393%_)))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
      (lambda (_%stx40390%_)
        (if (gx#identifier? _%stx40390%_)
            (let ((__tmp45111 (gx#syntax-local-value _%stx40390%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp45111))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx40387%_)
        (if (gx#identifier? _%stx40387%_)
            (let ((__tmp45112 (gx#syntax-local-value _%stx40387%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp45112))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx40012%_)
        (let* ((_%__stx4464044641%_ _%stx40012%_)
               (_%g4001840081%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4464044641%_))))
          (let ((_%__kont4464344644%_
                 (lambda (_%L40364%_ _%L40366%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%L40366%_)
                    _%stx40012%_)))
                (_%__kont4464544646%_
                 (lambda (_%L40253%_ _%L40255%_ _%L40256%_)
                   (let* ((_%g4027840286%_
                           (lambda (_%g4027940282%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4027940282%_)))
                          (_%g4027740313%_
                           (lambda (_%g4027940290%_)
                             ((lambda (_%L40293%_)
                                (cons _%L40293%_
                                      (foldr (lambda (_%g4030440307%_
                                                      _%g4030540310%_)
                                               (cons _%g4030440307%_
                                                     _%g4030540310%_))
                                             (cons _%L40253%_ '())
                                             _%L40255%_)))
                              _%g4027940290%_))))
                     (_%g4027740313%_
                      (gx#stx-identifier _%L40256%_ _%L40256%_ '"-set!")))))
                (_%__kont4464944650%_
                 (lambda (_%L40163%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%L40163%_)
                    _%stx40012%_)))
                (_%__kont4465144652%_
                 (lambda (_%L40118%_ _%L40120%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%L40120%_ (cons _%L40118%_ '()))))))
            (let* ((_%__match4473944740%_
                    (lambda (_%e4006740088%_
                             _%hd4006840092%_
                             _%tl4006940095%_
                             _%e4007040098%_
                             _%hd4007140102%_
                             _%tl4007240105%_
                             _%e4007340108%_
                             _%hd4007440112%_
                             _%tl4007540115%_)
                      (let ((_%L40118%_ _%hd4007440112%_)
                            (_%L40120%_ _%hd4007140102%_))
                        (if (gx#identifier? _%L40120%_)
                            (_%__kont4465144652%_ _%L40118%_ _%L40120%_)
                            (let () (declare (not safe)) (_%g4001840081%_))))))
                   (_%__match4471944720%_
                    (lambda (_%e4005940143%_
                             _%hd4006040147%_
                             _%tl4006140150%_
                             _%e4006240153%_
                             _%hd4006340157%_
                             _%tl4006440160%_)
                      (let ((_%L40163%_ _%hd4006340157%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%L40163%_)
                            (_%__kont4464944650%_ _%L40163%_)
                            (if (gx#stx-pair? _%tl4006440160%_)
                                (let ((_%e4007340108%_
                                       (gx#syntax-e _%tl4006440160%_)))
                                  (let ((_%tl4007540115%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4007340108%_)))
                                        (_%hd4007440112%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4007340108%_))))
                                    (if (gx#stx-null? _%tl4007540115%_)
                                        (_%__match4473944740%_
                                         _%e4005940143%_
                                         _%hd4006040147%_
                                         _%tl4006140150%_
                                         _%e4006240153%_
                                         _%hd4006340157%_
                                         _%tl4006440160%_
                                         _%e4007340108%_
                                         _%hd4007440112%_
                                         _%tl4007540115%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4001840081%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4001840081%_)))))))
                   (_%__match4470744708%_
                    (lambda (_%e4003740183%_
                             _%hd4003840187%_
                             _%tl4003940190%_
                             _%e4004040193%_
                             _%hd4004140197%_
                             _%tl4004240200%_
                             _%e4004340203%_
                             _%hd4004440207%_
                             _%tl4004540210%_
                             _%__splice4464744648%_
                             _%target4004640213%_
                             _%tl4004840216%_)
                      (letrec ((_%loop4004940219%_
                                (lambda (_%hd4004740223%_ _%arg4005340226%_)
                                  (if (gx#stx-pair? _%hd4004740223%_)
                                      (let ((_%e4005040229%_
                                             (gx#syntax-e _%hd4004740223%_)))
                                        (let ((_%lp-tl4005240236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4005040229%_)))
                                              (_%lp-hd4005140233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4005040229%_))))
                                          (_%loop4004940219%_
                                           _%lp-tl4005240236%_
                                           (cons _%lp-hd4005140233%_
                                                 _%arg4005340226%_))))
                                      (let ((_%arg4005440239%_
                                             (reverse _%arg4005340226%_)))
                                        (if (gx#stx-pair? _%tl4004240200%_)
                                            (let ((_%e4005540243%_
                                                   (gx#syntax-e
                                                    _%tl4004240200%_)))
                                              (let ((_%tl4005740250%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4005540243%_)))
                                                    (_%hd4005640247%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4005540243%_))))
                                                (if (gx#stx-null?
                                                     _%tl4005740250%_)
                                                    (let ((_%L40253%_
                                                           _%hd4005640247%_)
                                                          (_%L40255%_
                                                           _%arg4005440239%_)
                                                          (_%L40256%_
                                                           _%hd4004440207%_))
                                                      (if (gx#identifier?
                                                           _%L40256%_)
                                                          (_%__kont4464544646%_
                                                           _%L40253%_
                                                           _%L40255%_
                                                           _%L40256%_)
                                                          (_%__match4471944720%_
                                                           _%e4003740183%_
                                                           _%hd4003840187%_
                                                           _%tl4003940190%_
                                                           _%e4004040193%_
                                                           _%hd4004140197%_
                                                           _%tl4004240200%_)))
                                                    (_%__match4471944720%_
                                                     _%e4003740183%_
                                                     _%hd4003840187%_
                                                     _%tl4003940190%_
                                                     _%e4004040193%_
                                                     _%hd4004140197%_
                                                     _%tl4004240200%_))))
                                            (_%__match4471944720%_
                                             _%e4003740183%_
                                             _%hd4003840187%_
                                             _%tl4003940190%_
                                             _%e4004040193%_
                                             _%hd4004140197%_
                                             _%tl4004240200%_)))))))
                        (_%loop4004940219%_ _%target4004640213%_ '())))))
              (if (gx#stx-pair? _%__stx4464044641%_)
                  (let ((_%e4002240324%_ (gx#syntax-e _%__stx4464044641%_)))
                    (let ((_%tl4002440331%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4002240324%_)))
                          (_%hd4002340328%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4002240324%_))))
                      (if (gx#stx-pair? _%tl4002440331%_)
                          (let ((_%e4002540334%_
                                 (gx#syntax-e _%tl4002440331%_)))
                            (let ((_%tl4002740341%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4002540334%_)))
                                  (_%hd4002640338%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4002540334%_))))
                              (if (gx#stx-pair? _%hd4002640338%_)
                                  (let ((_%e4002840344%_
                                         (gx#syntax-e _%hd4002640338%_)))
                                    (let ((_%tl4003040351%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4002840344%_)))
                                          (_%hd4002940348%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4002840344%_))))
                                      (if (gx#stx-pair? _%tl4002740341%_)
                                          (let ((_%e4003140354%_
                                                 (gx#syntax-e
                                                  _%tl4002740341%_)))
                                            (let ((_%tl4003340361%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4003140354%_)))
                                                  (_%hd4003240358%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4003140354%_))))
                                              (if (gx#stx-null?
                                                   _%tl4003340361%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%L40364%_
                                                             _%hd4003240358%_)
                                                            (_%L40366%_
                                                             _%hd4002940348%_))
                                                        (_%__kont4464344644%_
                                                         _%L40364%_
                                                         _%L40366%_))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4003040351%_)
                                                          (let ((_%__splice4464744648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4003040351%_ '0)))
                    (let ((_%tl4004840216%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4464744648%_ '1)))
                          (_%target4004640213%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4464744648%_ '0))))
                      (if (gx#stx-null? _%tl4004840216%_)
                          (_%__match4470744708%_
                           _%e4002240324%_
                           _%hd4002340328%_
                           _%tl4002440331%_
                           _%e4002540334%_
                           _%hd4002640338%_
                           _%tl4002740341%_
                           _%e4002840344%_
                           _%hd4002940348%_
                           _%tl4003040351%_
                           _%__splice4464744648%_
                           _%target4004640213%_
                           _%tl4004840216%_)
                          (_%__match4471944720%_
                           _%e4002240324%_
                           _%hd4002340328%_
                           _%tl4002440331%_
                           _%e4002540334%_
                           _%hd4002640338%_
                           _%tl4002740341%_))))
                  (_%__match4471944720%_
                   _%e4002240324%_
                   _%hd4002340328%_
                   _%tl4002440331%_
                   _%e4002540334%_
                   _%hd4002640338%_
                   _%tl4002740341%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4003040351%_)
                                                      (let ((_%__splice4464744648%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4003040351%_
                                                              '0)))
                                                        (let ((_%tl4004840216%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4464744648%_ '1)))
                      (_%target4004640213%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4464744648%_ '0))))
                  (if (gx#stx-null? _%tl4004840216%_)
                      (_%__match4470744708%_
                       _%e4002240324%_
                       _%hd4002340328%_
                       _%tl4002440331%_
                       _%e4002540334%_
                       _%hd4002640338%_
                       _%tl4002740341%_
                       _%e4002840344%_
                       _%hd4002940348%_
                       _%tl4003040351%_
                       _%__splice4464744648%_
                       _%target4004640213%_
                       _%tl4004840216%_)
                      (_%__match4471944720%_
                       _%e4002240324%_
                       _%hd4002340328%_
                       _%tl4002440331%_
                       _%e4002540334%_
                       _%hd4002640338%_
                       _%tl4002740341%_))))
              (_%__match4471944720%_
               _%e4002240324%_
               _%hd4002340328%_
               _%tl4002440331%_
               _%e4002540334%_
               _%hd4002640338%_
               _%tl4002740341%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4003040351%_)
                                              (let ((_%__splice4464744648%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4003040351%_
                                                      '0)))
                                                (let ((_%tl4004840216%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4464744648%_
                                                          '1)))
                                                      (_%target4004640213%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4464744648%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4004840216%_)
                                                      (_%__match4470744708%_
                                                       _%e4002240324%_
                                                       _%hd4002340328%_
                                                       _%tl4002440331%_
                                                       _%e4002540334%_
                                                       _%hd4002640338%_
                                                       _%tl4002740341%_
                                                       _%e4002840344%_
                                                       _%hd4002940348%_
                                                       _%tl4003040351%_
                                                       _%__splice4464744648%_
                                                       _%target4004640213%_
                                                       _%tl4004840216%_)
                                                      (_%__match4471944720%_
                                                       _%e4002240324%_
                                                       _%hd4002340328%_
                                                       _%tl4002440331%_
                                                       _%e4002540334%_
                                                       _%hd4002640338%_
                                                       _%tl4002740341%_))))
                                              (_%__match4471944720%_
                                               _%e4002240324%_
                                               _%hd4002340328%_
                                               _%tl4002440331%_
                                               _%e4002540334%_
                                               _%hd4002640338%_
                                               _%tl4002740341%_)))))
                                  (_%__match4471944720%_
                                   _%e4002240324%_
                                   _%hd4002340328%_
                                   _%tl4002440331%_
                                   _%e4002540334%_
                                   _%hd4002640338%_
                                   _%tl4002740341%_))))
                          (let () (declare (not safe)) (_%g4001840081%_)))))
                  (let () (declare (not safe)) (_%g4001840081%_))))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx40402%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40402%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx40405%_)
        (let* ((_%g4040840432%_
                (lambda (_%g4040940428%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4040940428%_)))
               (_%g4040740610%_
                (lambda (_%g4040940436%_)
                  (if (gx#stx-pair? _%g4040940436%_)
                      (let ((_%e4041240439%_ (gx#syntax-e _%g4040940436%_)))
                        (let ((_%hd4041340443%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4041240439%_)))
                              (_%tl4041440446%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4041240439%_))))
                          (if (gx#stx-pair/null? _%tl4041440446%_)
                              (if (let ((__tmp45113
                                         (gx#stx-length _%tl4041440446%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp45113 '1))
                                  (let ((_g45114_
                                         (gx#syntax-split-splice
                                          _%tl4041440446%_
                                          '1)))
                                    (begin
                                      (let ((_g45115_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g45114_)
                                                   (##values-length _g45114_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g45115_ 2)))
                                            (error "Context expects 2 values"
                                                   _g45115_)))
                                      (let ((_%target4041540449%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45114_ 0)))
                                            (_%tl4041740452%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45114_ 1))))
                                        (if (gx#stx-pair? _%tl4041740452%_)
                                            (let ((_%e4042440455%_
                                                   (gx#syntax-e
                                                    _%tl4041740452%_)))
                                              (let ((_%hd4042540459%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4042440455%_)))
                                                    (_%tl4042640462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4042440455%_))))
                                                (if (gx#stx-null?
                                                     _%tl4042640462%_)
                                                    (letrec ((_%loop4041840465%_
                                                              (lambda (_%hd4041640469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tgt4042240472%_)
                        (if (gx#stx-pair? _%hd4041640469%_)
                            (let ((_%e4041940475%_
                                   (gx#syntax-e _%hd4041640469%_)))
                              (let ((_%lp-hd4042040479%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4041940475%_)))
                                    (_%lp-tl4042140482%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4041940475%_))))
                                (_%loop4041840465%_
                                 _%lp-tl4042140482%_
                                 (cons _%lp-hd4042040479%_
                                       _%tgt4042240472%_))))
                            (let ((_%tgt4042340485%_
                                   (reverse _%tgt4042240472%_)))
                              ((lambda (_%L40489%_ _%L40491%_)
                                 (let* ((_%g4050940526%_
                                         (lambda (_%g4051040522%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g4051040522%_)))
                                        (_%g4050840598%_
                                         (lambda (_%g4051040530%_)
                                           (if (gx#stx-pair/null?
                                                _%g4051040530%_)
                                               (let ((_g45116_
                                                      (gx#syntax-split-splice
                                                       _%g4051040530%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g45117_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g45116_)
                        (##values-length _g45116_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g45117_ 2)))
                 (error "Context expects 2 values" _g45117_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target4051240533%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45116_
                                                             0)))
                                                         (_%tl4051440536%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45116_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl4051440536%_)
                                                         (letrec ((_%loop4051540539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd4051340543%_ _%$e4051940546%_)
                             (if (gx#stx-pair? _%hd4051340543%_)
                                 (let ((_%e4051640549%_
                                        (gx#syntax-e _%hd4051340543%_)))
                                   (let ((_%lp-hd4051740553%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4051640549%_)))
                                         (_%lp-tl4051840556%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4051640549%_))))
                                     (_%loop4051540539%_
                                      _%lp-tl4051840556%_
                                      (cons _%lp-hd4051740553%_
                                            _%$e4051940546%_))))
                                 (let ((_%$e4052040559%_
                                        (reverse _%$e4051940546%_)))
                                   ((lambda (_%L40563%_)
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g4057840584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4057940587%_)
                               (cons _%g4057840584%_ _%g4057940587%_))
                             '()
                             _%L40563%_)
                      (cons _%L40489%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L40563%_
                                                     _%L40491%_)
                                                    (foldr (lambda (_%g4058040590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4058140593%_
                            _%g4058240595%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g4058140593%_
                                       (cons _%g4058040590%_ '())))
                           _%g4058240595%_))
                   '()
                   _%L40563%_
                   _%L40491%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$e4052040559%_))))))
                   (_%loop4051540539%_ _%target4051240533%_ '()))
                 (_%g4050940526%_ _%g4051040530%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4050940526%_
                                                _%g4051040530%_)))))
                                   (_%g4050840598%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g4060140604%_
                                                     _%g4060240607%_)
                                              (cons _%g4060140604%_
                                                    _%g4060240607%_))
                                            '()
                                            _%L40491%_)))))
                               _%hd4042540459%_
                               _%tgt4042340485%_))))))
              (_%loop4041840465%_ _%target4041540449%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4040840432%_
                                                     _%g4040940436%_))))
                                            (_%g4040840432%_
                                             _%g4040940436%_)))))
                                  (_%g4040840432%_ _%g4040940436%_))
                              (_%g4040840432%_ _%g4040940436%_))))
                      (_%g4040840432%_ _%g4040940436%_)))))
          (_%g4040740610%_ _%stx40405%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx40616%_)
        (let* ((_%__stx4474244743%_ _%$stx40616%_)
               (_%g4062240710%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4474244743%_))))
          (let ((_%__kont4474544746%_
                 (lambda (_%L41058%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4107441077%_ _%g4107541080%_)
                                        (cons _%g4107441077%_ _%g4107541080%_))
                                      '()
                                      _%L41058%_)))))
                (_%__kont4474944750%_
                 (lambda (_%L40966%_ _%L40968%_ _%L40969%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%g4099240995%_
                                                           _%g4099340998%_)
                                                    (cons _%g4099240995%_
                                                          _%g4099340998%_))
                                                  '()
                                                  _%L40966%_)))
                               (cons _%L40969%_ (cons _%L40968%_ '()))))))
                (_%__kont4475344754%_
                 (lambda (_%L40827%_
                          _%L40829%_
                          _%L40830%_
                          _%L40831%_
                          _%L40832%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%L40832%_
                                                       (cons (foldr (lambda (_%g4086240867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4086340870%_)
                              (cons _%g4086240867%_ _%g4086340870%_))
                            '()
                            _%L40829%_)
                     (foldr (lambda (_%g4086440873%_ _%g4086540876%_)
                              (cons _%g4086440873%_ _%g4086540876%_))
                            '()
                            _%L40827%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L40831%_ (cons _%L40830%_ '())))))))
            (let* ((_%__match4486344864%_
                    (lambda (_%e4067240717%_
                             _%hd4067340721%_
                             _%tl4067440724%_
                             _%e4067540727%_
                             _%hd4067640731%_
                             _%tl4067740734%_
                             _%e4067840737%_
                             _%hd4067940741%_
                             _%tl4068040744%_
                             _%e4068140747%_
                             _%hd4068240751%_
                             _%tl4068340754%_
                             _%e4068440757%_
                             _%hd4068540761%_
                             _%tl4068640764%_
                             _%__splice4475544756%_
                             _%target4068740767%_
                             _%tl4068940770%_)
                      (letrec ((_%loop4069040773%_
                                (lambda (_%hd4068840777%_ _%rest4069440780%_)
                                  (if (gx#stx-pair? _%hd4068840777%_)
                                      (let ((_%e4069140783%_
                                             (gx#syntax-e _%hd4068840777%_)))
                                        (let ((_%lp-tl4069340790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4069140783%_)))
                                              (_%lp-hd4069240787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4069140783%_))))
                                          (_%loop4069040773%_
                                           _%lp-tl4069340790%_
                                           (cons _%lp-hd4069240787%_
                                                 _%rest4069440780%_))))
                                      (let ((_%rest4069540793%_
                                             (reverse _%rest4069440780%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl4067740734%_)
                                            (let ((_%__splice4475744758%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4067740734%_
                                                    '0)))
                                              (let ((_%tl4069840800%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4475744758%_
                                                        '1)))
                                                    (_%target4069640797%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4475744758%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4069840800%_)
                                                    (letrec ((_%loop4069940803%_
                                                              (lambda (_%hd4069740807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body4070340810%_)
                        (if (gx#stx-pair? _%hd4069740807%_)
                            (let ((_%e4070040813%_
                                   (gx#syntax-e _%hd4069740807%_)))
                              (let ((_%lp-tl4070240820%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4070040813%_)))
                                    (_%lp-hd4070140817%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4070040813%_))))
                                (_%loop4069940803%_
                                 _%lp-tl4070240820%_
                                 (cons _%lp-hd4070140817%_
                                       _%body4070340810%_))))
                            (let ((_%body4070440823%_
                                   (reverse _%body4070340810%_)))
                              (_%__kont4475344754%_
                               _%body4070440823%_
                               _%rest4069540793%_
                               _%hd4068540761%_
                               _%hd4068240751%_
                               _%hd4067340721%_))))))
              (_%loop4069940803%_ _%target4069640797%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4062240710%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4062240710%_))))))))
                        (_%loop4069040773%_ _%target4068740767%_ '()))))
                   (_%__match4482344824%_
                    (lambda (_%e4064340886%_
                             _%hd4064440890%_
                             _%tl4064540893%_
                             _%e4064640896%_
                             _%hd4064740900%_
                             _%tl4064840903%_
                             _%e4064940906%_
                             _%hd4065040910%_
                             _%tl4065140913%_
                             _%e4065240916%_
                             _%hd4065340920%_
                             _%tl4065440923%_
                             _%e4065540926%_
                             _%hd4065640930%_
                             _%tl4065740933%_
                             _%__splice4475144752%_
                             _%target4065840936%_
                             _%tl4066040939%_)
                      (letrec ((_%loop4066140942%_
                                (lambda (_%hd4065940946%_ _%body4066540949%_)
                                  (if (gx#stx-pair? _%hd4065940946%_)
                                      (let ((_%e4066240952%_
                                             (gx#syntax-e _%hd4065940946%_)))
                                        (let ((_%lp-tl4066440959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4066240952%_)))
                                              (_%lp-hd4066340956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4066240952%_))))
                                          (_%loop4066140942%_
                                           _%lp-tl4066440959%_
                                           (cons _%lp-hd4066340956%_
                                                 _%body4066540949%_))))
                                      (let ((_%body4066640962%_
                                             (reverse _%body4066540949%_)))
                                        (_%__kont4474944750%_
                                         _%body4066640962%_
                                         _%hd4065640930%_
                                         _%hd4065340920%_))))))
                        (_%loop4066140942%_ _%target4065840936%_ '()))))
                   (_%__match4478144782%_
                    (lambda (_%e4062541008%_
                             _%hd4062641012%_
                             _%tl4062741015%_
                             _%e4062841018%_
                             _%hd4062941022%_
                             _%tl4063041025%_
                             _%__splice4474744748%_
                             _%target4063141028%_
                             _%tl4063341031%_)
                      (letrec ((_%loop4063441034%_
                                (lambda (_%hd4063241038%_ _%body4063841041%_)
                                  (if (gx#stx-pair? _%hd4063241038%_)
                                      (let ((_%e4063541044%_
                                             (gx#syntax-e _%hd4063241038%_)))
                                        (let ((_%lp-tl4063741051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4063541044%_)))
                                              (_%lp-hd4063641048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4063541044%_))))
                                          (_%loop4063441034%_
                                           _%lp-tl4063741051%_
                                           (cons _%lp-hd4063641048%_
                                                 _%body4063841041%_))))
                                      (let ((_%body4063941054%_
                                             (reverse _%body4063841041%_)))
                                        (_%__kont4474544746%_
                                         _%body4063941054%_))))))
                        (_%loop4063441034%_ _%target4063141028%_ '())))))
              (if (gx#stx-pair? _%__stx4474244743%_)
                  (let ((_%e4062541008%_ (gx#syntax-e _%__stx4474244743%_)))
                    (let ((_%tl4062741015%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4062541008%_)))
                          (_%hd4062641012%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4062541008%_))))
                      (if (gx#stx-pair? _%tl4062741015%_)
                          (let ((_%e4062841018%_
                                 (gx#syntax-e _%tl4062741015%_)))
                            (let ((_%tl4063041025%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4062841018%_)))
                                  (_%hd4062941022%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4062841018%_))))
                              (if (gx#stx-null? _%hd4062941022%_)
                                  (if (gx#stx-pair/null? _%tl4063041025%_)
                                      (let ((_%__splice4474744748%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4063041025%_
                                              '0)))
                                        (let ((_%tl4063341031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4474744748%_
                                                  '1)))
                                              (_%target4063141028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4474744748%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4063341031%_)
                                              (_%__match4478144782%_
                                               _%e4062541008%_
                                               _%hd4062641012%_
                                               _%tl4062741015%_
                                               _%e4062841018%_
                                               _%hd4062941022%_
                                               _%tl4063041025%_
                                               _%__splice4474744748%_
                                               _%target4063141028%_
                                               _%tl4063341031%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4062240710%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4062240710%_)))
                                  (if (gx#stx-pair? _%hd4062941022%_)
                                      (let ((_%e4064940906%_
                                             (gx#syntax-e _%hd4062941022%_)))
                                        (let ((_%tl4065140913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4064940906%_)))
                                              (_%hd4065040910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4064940906%_))))
                                          (if (gx#stx-pair? _%hd4065040910%_)
                                              (let ((_%e4065240916%_
                                                     (gx#syntax-e
                                                      _%hd4065040910%_)))
                                                (let ((_%tl4065440923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4065240916%_)))
                                                      (_%hd4065340920%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4065240916%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4065440923%_)
                                                      (let ((_%e4065540926%_
                                                             (gx#syntax-e
                                                              _%tl4065440923%_)))
                                                        (let ((_%tl4065740933%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4065540926%_)))
                      (_%hd4065640930%_
                       (let () (declare (not safe)) (##car _%e4065540926%_))))
                  (if (gx#stx-null? _%tl4065740933%_)
                      (if (gx#stx-null? _%tl4065140913%_)
                          (if (gx#stx-pair/null? _%tl4063041025%_)
                              (let ((_%__splice4475144752%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4063041025%_
                                      '0)))
                                (let ((_%tl4066040939%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4475144752%_
                                          '1)))
                                      (_%target4065840936%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4475144752%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4066040939%_)
                                      (_%__match4482344824%_
                                       _%e4062541008%_
                                       _%hd4062641012%_
                                       _%tl4062741015%_
                                       _%e4062841018%_
                                       _%hd4062941022%_
                                       _%tl4063041025%_
                                       _%e4064940906%_
                                       _%hd4065040910%_
                                       _%tl4065140913%_
                                       _%e4065240916%_
                                       _%hd4065340920%_
                                       _%tl4065440923%_
                                       _%e4065540926%_
                                       _%hd4065640930%_
                                       _%tl4065740933%_
                                       _%__splice4475144752%_
                                       _%target4065840936%_
                                       _%tl4066040939%_)
                                      (if (gx#stx-pair/null? _%tl4065140913%_)
                                          (let ((_%__splice4475544756%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4065140913%_
                                                  '0)))
                                            (let ((_%tl4068940770%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4475544756%_
                                                      '1)))
                                                  (_%target4068740767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4475544756%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4068940770%_)
                                                  (_%__match4486344864%_
                                                   _%e4062541008%_
                                                   _%hd4062641012%_
                                                   _%tl4062741015%_
                                                   _%e4062841018%_
                                                   _%hd4062941022%_
                                                   _%tl4063041025%_
                                                   _%e4064940906%_
                                                   _%hd4065040910%_
                                                   _%tl4065140913%_
                                                   _%e4065240916%_
                                                   _%hd4065340920%_
                                                   _%tl4065440923%_
                                                   _%e4065540926%_
                                                   _%hd4065640930%_
                                                   _%tl4065740933%_
                                                   _%__splice4475544756%_
                                                   _%target4068740767%_
                                                   _%tl4068940770%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4062240710%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4062240710%_))))))
                              (if (gx#stx-pair/null? _%tl4065140913%_)
                                  (let ((_%__splice4475544756%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4065140913%_
                                          '0)))
                                    (let ((_%tl4068940770%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4475544756%_
                                              '1)))
                                          (_%target4068740767%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4475544756%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4068940770%_)
                                          (_%__match4486344864%_
                                           _%e4062541008%_
                                           _%hd4062641012%_
                                           _%tl4062741015%_
                                           _%e4062841018%_
                                           _%hd4062941022%_
                                           _%tl4063041025%_
                                           _%e4064940906%_
                                           _%hd4065040910%_
                                           _%tl4065140913%_
                                           _%e4065240916%_
                                           _%hd4065340920%_
                                           _%tl4065440923%_
                                           _%e4065540926%_
                                           _%hd4065640930%_
                                           _%tl4065740933%_
                                           _%__splice4475544756%_
                                           _%target4068740767%_
                                           _%tl4068940770%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4062240710%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4062240710%_))))
                          (if (gx#stx-pair/null? _%tl4065140913%_)
                              (let ((_%__splice4475544756%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4065140913%_
                                      '0)))
                                (let ((_%tl4068940770%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4475544756%_
                                          '1)))
                                      (_%target4068740767%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4475544756%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4068940770%_)
                                      (_%__match4486344864%_
                                       _%e4062541008%_
                                       _%hd4062641012%_
                                       _%tl4062741015%_
                                       _%e4062841018%_
                                       _%hd4062941022%_
                                       _%tl4063041025%_
                                       _%e4064940906%_
                                       _%hd4065040910%_
                                       _%tl4065140913%_
                                       _%e4065240916%_
                                       _%hd4065340920%_
                                       _%tl4065440923%_
                                       _%e4065540926%_
                                       _%hd4065640930%_
                                       _%tl4065740933%_
                                       _%__splice4475544756%_
                                       _%target4068740767%_
                                       _%tl4068940770%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4062240710%_)))))
                              (let () (declare (not safe)) (_%g4062240710%_))))
                      (let () (declare (not safe)) (_%g4062240710%_)))))
              (let () (declare (not safe)) (_%g4062240710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4062240710%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4062240710%_))))))
                          (let () (declare (not safe)) (_%g4062240710%_)))))
                  (let () (declare (not safe)) (_%g4062240710%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx41091%_)
        (let* ((_%g4109541119%_
                (lambda (_%g4109641115%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4109641115%_)))
               (_%g4109441204%_
                (lambda (_%g4109641123%_)
                  (if (gx#stx-pair? _%g4109641123%_)
                      (let ((_%e4109941126%_ (gx#syntax-e _%g4109641123%_)))
                        (let ((_%hd4110041130%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4109941126%_)))
                              (_%tl4110141133%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4109941126%_))))
                          (if (gx#stx-pair? _%tl4110141133%_)
                              (let ((_%e4110241136%_
                                     (gx#syntax-e _%tl4110141133%_)))
                                (let ((_%hd4110341140%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4110241136%_)))
                                      (_%tl4110441143%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4110241136%_))))
                                  (if (gx#stx-pair/null? _%tl4110441143%_)
                                      (let ((_g45118_
                                             (gx#syntax-split-splice
                                              _%tl4110441143%_
                                              '0)))
                                        (begin
                                          (let ((_g45119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45118_)
                                                       (##values-length
                                                        _g45118_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45119_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45119_)))
                                          (let ((_%target4110541146%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45118_ 0)))
                                                (_%tl4110741149%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45118_ 1))))
                                            (if (gx#stx-null? _%tl4110741149%_)
                                                (letrec ((_%loop4110841152%_
                                                          (lambda (_%hd4110641156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4111241159%_)
                    (if (gx#stx-pair? _%hd4110641156%_)
                        (let ((_%e4110941162%_ (gx#syntax-e _%hd4110641156%_)))
                          (let ((_%lp-hd4111041166%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4110941162%_)))
                                (_%lp-tl4111141169%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4110941162%_))))
                            (_%loop4110841152%_
                             _%lp-tl4111141169%_
                             (cons _%lp-hd4111041166%_ _%body4111241159%_))))
                        (let ((_%body4111341172%_
                               (reverse _%body4111241159%_)))
                          ((lambda (_%L41176%_ _%L41178%_)
                             (if (gx#identifier? _%L41178%_)
                                 (cons (gx#datum->syntax '#f 'call/cc)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%L41178%_ '())
                                                         (foldr (lambda (_%g4119541198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4119641201%_)
                          (cons _%g4119541198%_ _%g4119641201%_))
                        '()
                        _%L41176%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (_%g4109541119%_ _%g4109641123%_)))
                           _%body4111341172%_
                           _%hd4110341140%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4110841152%_
                                                   _%target4110541146%_
                                                   '()))
                                                (_%g4109541119%_
                                                 _%g4109641123%_)))))
                                      (_%g4109541119%_ _%g4109641123%_))))
                              (_%g4109541119%_ _%g4109641123%_))))
                      (_%g4109541119%_ _%g4109641123%_)))))
          (_%g4109441204%_ _%$stx41091%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx41209%_)
        (let* ((_%g4121341241%_
                (lambda (_%g4121441237%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4121441237%_)))
               (_%g4121241340%_
                (lambda (_%g4121441245%_)
                  (if (gx#stx-pair? _%g4121441245%_)
                      (let ((_%e4121841248%_ (gx#syntax-e _%g4121441245%_)))
                        (let ((_%hd4121941252%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4121841248%_)))
                              (_%tl4122041255%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4121841248%_))))
                          (if (gx#stx-pair? _%tl4122041255%_)
                              (let ((_%e4122141258%_
                                     (gx#syntax-e _%tl4122041255%_)))
                                (let ((_%hd4122241262%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4122141258%_)))
                                      (_%tl4122341265%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4122141258%_))))
                                  (if (gx#stx-pair? _%tl4122341265%_)
                                      (let ((_%e4122441268%_
                                             (gx#syntax-e _%tl4122341265%_)))
                                        (let ((_%hd4122541272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4122441268%_)))
                                              (_%tl4122641275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4122441268%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4122641275%_)
                                              (let ((_g45120_
                                                     (gx#syntax-split-splice
                                                      _%tl4122641275%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45121_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45120_)
                                                               (##values-length
                                                                _g45120_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45121_ 2)))
                (error "Context expects 2 values" _g45121_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4122741278%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45120_
                                                            0)))
                                                        (_%tl4122941281%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45120_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4122941281%_)
                                                        (letrec ((_%loop4123041284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4122841288%_ _%rest4123441291%_)
                            (if (gx#stx-pair? _%hd4122841288%_)
                                (let ((_%e4123141294%_
                                       (gx#syntax-e _%hd4122841288%_)))
                                  (let ((_%lp-hd4123241298%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4123141294%_)))
                                        (_%lp-tl4123341301%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4123141294%_))))
                                    (_%loop4123041284%_
                                     _%lp-tl4123341301%_
                                     (cons _%lp-hd4123241298%_
                                           _%rest4123441291%_))))
                                (let ((_%rest4123541304%_
                                       (reverse _%rest4123441291%_)))
                                  ((lambda (_%L41308%_ _%L41310%_ _%L41311%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'with-unwind-protect)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons '()
                                                             (cons _%L41311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L41310%_
                                 (foldr (lambda (_%g4133141334%_
                                                 _%g4133241337%_)
                                          (cons _%g4133141334%_
                                                _%g4133241337%_))
                                        '()
                                        _%L41308%_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest4123541304%_
                                   _%hd4122541272%_
                                   _%hd4122241262%_))))))
                  (_%loop4123041284%_ _%target4122741278%_ '()))
                (_%g4121341241%_ _%g4121441245%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4121341241%_
                                               _%g4121441245%_))))
                                      (_%g4121341241%_ _%g4121441245%_))))
                              (_%g4121341241%_ _%g4121441245%_))))
                      (_%g4121341241%_ _%g4121441245%_)))))
          (_%g4121241340%_ _%$stx41209%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx41345%_)
        (let* ((_%g4134941420%_
                (lambda (_%g4135041416%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4135041416%_)))
               (_%g4134841709%_
                (lambda (_%g4135041424%_)
                  (if (gx#stx-pair? _%g4135041424%_)
                      (let ((_%e4135741427%_ (gx#syntax-e _%g4135041424%_)))
                        (let ((_%hd4135841431%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4135741427%_)))
                              (_%tl4135941434%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4135741427%_))))
                          (if (gx#stx-pair? _%tl4135941434%_)
                              (let ((_%e4136041437%_
                                     (gx#syntax-e _%tl4135941434%_)))
                                (let ((_%hd4136141441%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4136041437%_)))
                                      (_%tl4136241444%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4136041437%_))))
                                  (if (gx#stx-pair/null? _%hd4136141441%_)
                                      (let ((_g45122_
                                             (gx#syntax-split-splice
                                              _%hd4136141441%_
                                              '0)))
                                        (begin
                                          (let ((_g45123_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45122_)
                                                       (##values-length
                                                        _g45122_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45123_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45123_)))
                                          (let ((_%target4136341447%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45122_ 0)))
                                                (_%tl4136541450%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45122_ 1))))
                                            (if (gx#stx-null? _%tl4136541450%_)
                                                (letrec ((_%loop4136641453%_
                                                          (lambda (_%hd4136441457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4137041460%_
                           _%init4137141462%_
                           _%var4137241464%_)
                    (if (gx#stx-pair? _%hd4136441457%_)
                        (let ((_%e4136741467%_ (gx#syntax-e _%hd4136441457%_)))
                          (let ((_%lp-hd4136841471%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4136741467%_)))
                                (_%lp-tl4136941474%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4136741467%_))))
                            (if (gx#stx-pair? _%lp-hd4136841471%_)
                                (let ((_%e4137641477%_
                                       (gx#syntax-e _%lp-hd4136841471%_)))
                                  (let ((_%hd4137741481%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4137641477%_)))
                                        (_%tl4137841484%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4137641477%_))))
                                    (if (gx#stx-pair? _%tl4137841484%_)
                                        (let ((_%e4137941487%_
                                               (gx#syntax-e _%tl4137841484%_)))
                                          (let ((_%hd4138041491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4137941487%_)))
                                                (_%tl4138141494%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4137941487%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4138141494%_)
                                                (let ((_g45124_
                                                       (gx#syntax-split-splice
                                                        _%tl4138141494%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45125_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45124_)
                         (##values-length _g45124_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45125_ 2)))
                  (error "Context expects 2 values" _g45125_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4138241497%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45124_
                                                              0)))
                                                          (_%tl4138441500%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45124_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4138441500%_)
                                                          (letrec ((_%loop4138541503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4138341507%_ _%step4138941510%_)
                              (if (gx#stx-pair? _%hd4138341507%_)
                                  (let ((_%e4138641513%_
                                         (gx#syntax-e _%hd4138341507%_)))
                                    (let ((_%lp-hd4138741517%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4138641513%_)))
                                          (_%lp-tl4138841520%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4138641513%_))))
                                      (_%loop4138541503%_
                                       _%lp-tl4138841520%_
                                       (cons _%lp-hd4138741517%_
                                             _%step4138941510%_))))
                                  (let ((_%step4139041523%_
                                         (reverse _%step4138941510%_)))
                                    (_%loop4136641453%_
                                     _%lp-tl4136941474%_
                                     (cons _%step4139041523%_
                                           _%step4137041460%_)
                                     (cons _%hd4138041491%_ _%init4137141462%_)
                                     (cons _%hd4137741481%_
                                           _%var4137241464%_)))))))
                    (_%loop4138541503%_ _%target4138241497%_ '()))
                  (_%g4134941420%_ _%g4135041424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4134941420%_
                                                 _%g4135041424%_))))
                                        (_%g4134941420%_ _%g4135041424%_))))
                                (_%g4134941420%_ _%g4135041424%_))))
                        (let ((_%step4137341527%_ (reverse _%step4137041460%_))
                              (_%init4137441530%_ (reverse _%init4137141462%_))
                              (_%var4137541532%_ (reverse _%var4137241464%_)))
                          (if (gx#stx-pair? _%tl4136241444%_)
                              (let ((_%e4139141535%_
                                     (gx#syntax-e _%tl4136241444%_)))
                                (let ((_%hd4139241539%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4139141535%_)))
                                      (_%tl4139341542%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4139141535%_))))
                                  (if (gx#stx-pair? _%hd4139241539%_)
                                      (let ((_%e4139441545%_
                                             (gx#syntax-e _%hd4139241539%_)))
                                        (let ((_%hd4139541549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4139441545%_)))
                                              (_%tl4139641552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4139441545%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4139641552%_)
                                              (let ((_g45126_
                                                     (gx#syntax-split-splice
                                                      _%tl4139641552%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45127_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45126_)
                                                               (##values-length
                                                                _g45126_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45127_ 2)))
                (error "Context expects 2 values" _g45127_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4139741555%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45126_
                                                            0)))
                                                        (_%tl4139941558%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45126_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4139941558%_)
                                                        (letrec ((_%loop4140041561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4139841565%_ _%fini4140441568%_)
                            (if (gx#stx-pair? _%hd4139841565%_)
                                (let ((_%e4140141571%_
                                       (gx#syntax-e _%hd4139841565%_)))
                                  (let ((_%lp-hd4140241575%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4140141571%_)))
                                        (_%lp-tl4140341578%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4140141571%_))))
                                    (_%loop4140041561%_
                                     _%lp-tl4140341578%_
                                     (cons _%lp-hd4140241575%_
                                           _%fini4140441568%_))))
                                (let ((_%fini4140541581%_
                                       (reverse _%fini4140441568%_)))
                                  (if (gx#stx-pair/null? _%tl4139341542%_)
                                      (let ((_g45128_
                                             (gx#syntax-split-splice
                                              _%tl4139341542%_
                                              '0)))
                                        (begin
                                          (let ((_g45129_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45128_)
                                                       (##values-length
                                                        _g45128_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45129_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45129_)))
                                          (let ((_%target4140641585%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45128_ 0)))
                                                (_%tl4140841588%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45128_ 1))))
                                            (if (gx#stx-null? _%tl4140841588%_)
                                                (letrec ((_%loop4140941591%_
                                                          (lambda (_%hd4140741595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4141341598%_)
                    (if (gx#stx-pair? _%hd4140741595%_)
                        (let ((_%e4141041601%_ (gx#syntax-e _%hd4140741595%_)))
                          (let ((_%lp-hd4141141605%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4141041601%_)))
                                (_%lp-tl4141241608%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4141041601%_))))
                            (_%loop4140941591%_
                             _%lp-tl4141241608%_
                             (cons _%lp-hd4141141605%_ _%body4141341598%_))))
                        (let ((_%body4141441611%_
                               (reverse _%body4141341598%_)))
                          ((lambda (_%L41615%_
                                    _%L41617%_
                                    _%L41618%_
                                    _%L41619%_
                                    _%L41620%_
                                    _%L41621%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4165441657%_
                                                  _%g4165541660%_)
                                           (cons _%g4165441657%_
                                                 _%g4165541660%_))
                                         '()
                                         _%L41621%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L41620%_
                                                      _%L41621%_)
                                                     (foldr (lambda (_%g4166241675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4166341678%_
                             _%g4166441680%_)
                      (cons (cons _%g4166341678%_ (cons _%g4166241675%_ '()))
                            _%g4166441680%_))
                    '()
                    _%L41620%_
                    _%L41621%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%L41618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g4166541683%_
                                                               _%g4166641686%_)
                                                        (cons _%g4166541683%_
                                                              _%g4166641686%_))
                                                      '()
                                                      _%L41617%_)))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4166741689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4166841692%_)
                      (cons _%g4166741689%_ _%g4166841692%_))
                    (cons (cons (gx#datum->syntax '#f '$loop)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _%L41619%_
                                   _%L41621%_)
                                  (foldr (lambda (_%g4166941695%_
                                                  _%g4167041698%_
                                                  _%g4167141700%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons _%g4167041698%_
                                                             (foldr (lambda (_%g4167241703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4167341706%_)
                              (cons _%g4167241703%_ _%g4167341706%_))
                            '()
                            _%g4166941695%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g4167141700%_))
                                         '()
                                         _%L41619%_
                                         _%L41621%_)))
                          '())
                    _%L41615%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4134941420%_ _%g4135041424%_)))
                           _%body4141441611%_
                           _%fini4140541581%_
                           _%hd4139541549%_
                           _%step4137341527%_
                           _%init4137441530%_
                           _%var4137541532%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4140941591%_
                                                   _%target4140641585%_
                                                   '()))
                                                (_%g4134941420%_
                                                 _%g4135041424%_)))))
                                      (_%g4134941420%_ _%g4135041424%_)))))))
                  (_%loop4140041561%_ _%target4139741555%_ '()))
                (_%g4134941420%_ _%g4135041424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4134941420%_
                                               _%g4135041424%_))))
                                      (_%g4134941420%_ _%g4135041424%_))))
                              (_%g4134941420%_ _%g4135041424%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4136641453%_
                                                   _%target4136341447%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4134941420%_
                                                 _%g4135041424%_)))))
                                      (_%g4134941420%_ _%g4135041424%_))))
                              (_%g4134941420%_ _%g4135041424%_))))
                      (_%g4134941420%_ _%g4135041424%_)))))
          (_%g4134841709%_ _%$stx41345%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx41717%_)
        (let* ((_%g4172141792%_
                (lambda (_%g4172241788%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4172241788%_)))
               (_%g4172042081%_
                (lambda (_%g4172241796%_)
                  (if (gx#stx-pair? _%g4172241796%_)
                      (let ((_%e4172941799%_ (gx#syntax-e _%g4172241796%_)))
                        (let ((_%hd4173041803%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4172941799%_)))
                              (_%tl4173141806%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4172941799%_))))
                          (if (gx#stx-pair? _%tl4173141806%_)
                              (let ((_%e4173241809%_
                                     (gx#syntax-e _%tl4173141806%_)))
                                (let ((_%hd4173341813%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4173241809%_)))
                                      (_%tl4173441816%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4173241809%_))))
                                  (if (gx#stx-pair/null? _%hd4173341813%_)
                                      (let ((_g45130_
                                             (gx#syntax-split-splice
                                              _%hd4173341813%_
                                              '0)))
                                        (begin
                                          (let ((_g45131_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45130_)
                                                       (##values-length
                                                        _g45130_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45131_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45131_)))
                                          (let ((_%target4173541819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45130_ 0)))
                                                (_%tl4173741822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45130_ 1))))
                                            (if (gx#stx-null? _%tl4173741822%_)
                                                (letrec ((_%loop4173841825%_
                                                          (lambda (_%hd4173641829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4174241832%_
                           _%init4174341834%_
                           _%var4174441836%_)
                    (if (gx#stx-pair? _%hd4173641829%_)
                        (let ((_%e4173941839%_ (gx#syntax-e _%hd4173641829%_)))
                          (let ((_%lp-hd4174041843%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4173941839%_)))
                                (_%lp-tl4174141846%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4173941839%_))))
                            (if (gx#stx-pair? _%lp-hd4174041843%_)
                                (let ((_%e4174841849%_
                                       (gx#syntax-e _%lp-hd4174041843%_)))
                                  (let ((_%hd4174941853%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4174841849%_)))
                                        (_%tl4175041856%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4174841849%_))))
                                    (if (gx#stx-pair? _%tl4175041856%_)
                                        (let ((_%e4175141859%_
                                               (gx#syntax-e _%tl4175041856%_)))
                                          (let ((_%hd4175241863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4175141859%_)))
                                                (_%tl4175341866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4175141859%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4175341866%_)
                                                (let ((_g45132_
                                                       (gx#syntax-split-splice
                                                        _%tl4175341866%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45133_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45132_)
                         (##values-length _g45132_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45133_ 2)))
                  (error "Context expects 2 values" _g45133_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4175441869%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45132_
                                                              0)))
                                                          (_%tl4175641872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45132_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4175641872%_)
                                                          (letrec ((_%loop4175741875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4175541879%_ _%step4176141882%_)
                              (if (gx#stx-pair? _%hd4175541879%_)
                                  (let ((_%e4175841885%_
                                         (gx#syntax-e _%hd4175541879%_)))
                                    (let ((_%lp-hd4175941889%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4175841885%_)))
                                          (_%lp-tl4176041892%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4175841885%_))))
                                      (_%loop4175741875%_
                                       _%lp-tl4176041892%_
                                       (cons _%lp-hd4175941889%_
                                             _%step4176141882%_))))
                                  (let ((_%step4176241895%_
                                         (reverse _%step4176141882%_)))
                                    (_%loop4173841825%_
                                     _%lp-tl4174141846%_
                                     (cons _%step4176241895%_
                                           _%step4174241832%_)
                                     (cons _%hd4175241863%_ _%init4174341834%_)
                                     (cons _%hd4174941853%_
                                           _%var4174441836%_)))))))
                    (_%loop4175741875%_ _%target4175441869%_ '()))
                  (_%g4172141792%_ _%g4172241796%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4172141792%_
                                                 _%g4172241796%_))))
                                        (_%g4172141792%_ _%g4172241796%_))))
                                (_%g4172141792%_ _%g4172241796%_))))
                        (let ((_%step4174541899%_ (reverse _%step4174241832%_))
                              (_%init4174641902%_ (reverse _%init4174341834%_))
                              (_%var4174741904%_ (reverse _%var4174441836%_)))
                          (if (gx#stx-pair? _%tl4173441816%_)
                              (let ((_%e4176341907%_
                                     (gx#syntax-e _%tl4173441816%_)))
                                (let ((_%hd4176441911%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4176341907%_)))
                                      (_%tl4176541914%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4176341907%_))))
                                  (if (gx#stx-pair? _%hd4176441911%_)
                                      (let ((_%e4176641917%_
                                             (gx#syntax-e _%hd4176441911%_)))
                                        (let ((_%hd4176741921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4176641917%_)))
                                              (_%tl4176841924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4176641917%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4176841924%_)
                                              (let ((_g45134_
                                                     (gx#syntax-split-splice
                                                      _%tl4176841924%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45135_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45134_)
                                                               (##values-length
                                                                _g45134_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45135_ 2)))
                (error "Context expects 2 values" _g45135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4176941927%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45134_
                                                            0)))
                                                        (_%tl4177141930%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45134_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4177141930%_)
                                                        (letrec ((_%loop4177241933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4177041937%_ _%fini4177641940%_)
                            (if (gx#stx-pair? _%hd4177041937%_)
                                (let ((_%e4177341943%_
                                       (gx#syntax-e _%hd4177041937%_)))
                                  (let ((_%lp-hd4177441947%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4177341943%_)))
                                        (_%lp-tl4177541950%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4177341943%_))))
                                    (_%loop4177241933%_
                                     _%lp-tl4177541950%_
                                     (cons _%lp-hd4177441947%_
                                           _%fini4177641940%_))))
                                (let ((_%fini4177741953%_
                                       (reverse _%fini4177641940%_)))
                                  (if (gx#stx-pair/null? _%tl4176541914%_)
                                      (let ((_g45136_
                                             (gx#syntax-split-splice
                                              _%tl4176541914%_
                                              '0)))
                                        (begin
                                          (let ((_g45137_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45136_)
                                                       (##values-length
                                                        _g45136_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45137_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45137_)))
                                          (let ((_%target4177841957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45136_ 0)))
                                                (_%tl4178041960%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45136_ 1))))
                                            (if (gx#stx-null? _%tl4178041960%_)
                                                (letrec ((_%loop4178141963%_
                                                          (lambda (_%hd4177941967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4178541970%_)
                    (if (gx#stx-pair? _%hd4177941967%_)
                        (let ((_%e4178241973%_ (gx#syntax-e _%hd4177941967%_)))
                          (let ((_%lp-hd4178341977%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4178241973%_)))
                                (_%lp-tl4178441980%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4178241973%_))))
                            (_%loop4178141963%_
                             _%lp-tl4178441980%_
                             (cons _%lp-hd4178341977%_ _%body4178541970%_))))
                        (let ((_%body4178641983%_
                               (reverse _%body4178541970%_)))
                          ((lambda (_%L41987%_
                                    _%L41989%_
                                    _%L41990%_
                                    _%L41991%_
                                    _%L41992%_
                                    _%L41993%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4202642029%_
                                                  _%g4202742032%_)
                                           (cons _%g4202642029%_
                                                 _%g4202742032%_))
                                         '()
                                         _%L41993%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L41992%_
                                                      _%L41993%_)
                                                     (foldr (lambda (_%g4203442047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4203542050%_
                             _%g4203642052%_)
                      (cons (cons _%g4203542050%_ (cons _%g4203442047%_ '()))
                            _%g4203642052%_))
                    '()
                    _%L41992%_
                    _%L41993%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%g4203742055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4203842058%_)
                    (cons _%g4203742055%_ _%g4203842058%_))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons _%L41990%_
                                    (cons (cons (gx#datum->syntax '#f '$loop)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L41991%_
                                                   _%L41993%_)
                                                  (foldr (lambda (_%g4203942061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4204042064%_
                          _%g4204142066%_)
                   (cons (cons (gx#datum->syntax '#f 'begin)
                               (cons _%g4204042064%_
                                     (foldr (lambda (_%g4204242069%_
                                                     _%g4204342072%_)
                                              (cons _%g4204242069%_
                                                    _%g4204342072%_))
                                            '()
                                            _%g4203942061%_)))
                         _%g4204142066%_))
                 '()
                 _%L41991%_
                 _%L41993%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons '#!void
                                                            (foldr (lambda (_%g4204442075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4204542078%_)
                             (cons _%g4204442075%_ _%g4204542078%_))
                           '()
                           _%L41989%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())
                  _%L41987%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4172141792%_ _%g4172241796%_)))
                           _%body4178641983%_
                           _%fini4177741953%_
                           _%hd4176741921%_
                           _%step4174541899%_
                           _%init4174641902%_
                           _%var4174741904%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4178141963%_
                                                   _%target4177841957%_
                                                   '()))
                                                (_%g4172141792%_
                                                 _%g4172241796%_)))))
                                      (_%g4172141792%_ _%g4172241796%_)))))))
                  (_%loop4177241933%_ _%target4176941927%_ '()))
                (_%g4172141792%_ _%g4172241796%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4172141792%_
                                               _%g4172241796%_))))
                                      (_%g4172141792%_ _%g4172241796%_))))
                              (_%g4172141792%_ _%g4172241796%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4173841825%_
                                                   _%target4173541819%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4172141792%_
                                                 _%g4172241796%_)))))
                                      (_%g4172141792%_ _%g4172241796%_))))
                              (_%g4172141792%_ _%g4172241796%_))))
                      (_%g4172141792%_ _%g4172241796%_)))))
          (_%g4172042081%_ _%$stx41717%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx42089%_)
        (let* ((_%g4209342117%_
                (lambda (_%g4209442113%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4209442113%_)))
               (_%g4209242202%_
                (lambda (_%g4209442121%_)
                  (if (gx#stx-pair? _%g4209442121%_)
                      (let ((_%e4209742124%_ (gx#syntax-e _%g4209442121%_)))
                        (let ((_%hd4209842128%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4209742124%_)))
                              (_%tl4209942131%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4209742124%_))))
                          (if (gx#stx-pair? _%tl4209942131%_)
                              (let ((_%e4210042134%_
                                     (gx#syntax-e _%tl4209942131%_)))
                                (let ((_%hd4210142138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4210042134%_)))
                                      (_%tl4210242141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4210042134%_))))
                                  (if (gx#stx-pair/null? _%tl4210242141%_)
                                      (let ((_g45138_
                                             (gx#syntax-split-splice
                                              _%tl4210242141%_
                                              '0)))
                                        (begin
                                          (let ((_g45139_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45138_)
                                                       (##values-length
                                                        _g45138_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45139_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45139_)))
                                          (let ((_%target4210342144%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45138_ 0)))
                                                (_%tl4210542147%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45138_ 1))))
                                            (if (gx#stx-null? _%tl4210542147%_)
                                                (letrec ((_%loop4210642150%_
                                                          (lambda (_%hd4210442154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4211042157%_)
                    (if (gx#stx-pair? _%hd4210442154%_)
                        (let ((_%e4210742160%_ (gx#syntax-e _%hd4210442154%_)))
                          (let ((_%lp-hd4210842164%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4210742160%_)))
                                (_%lp-tl4210942167%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4210742160%_))))
                            (_%loop4210642150%_
                             _%lp-tl4210942167%_
                             (cons _%lp-hd4210842164%_ _%body4211042157%_))))
                        (let ((_%body4211142170%_
                               (reverse _%body4211042157%_)))
                          ((lambda (_%L42174%_ _%L42176%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'when)
                                                           (cons _%L42176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4219342196%_ _%g4219442199%_)
                                  (cons _%g4219342196%_ _%g4219442199%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%L42174%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4211142170%_
                           _%hd4210142138%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4210642150%_
                                                   _%target4210342144%_
                                                   '()))
                                                (_%g4209342117%_
                                                 _%g4209442121%_)))))
                                      (_%g4209342117%_ _%g4209442121%_))))
                              (_%g4209342117%_ _%g4209442121%_))))
                      (_%g4209342117%_ _%g4209442121%_)))))
          (_%g4209242202%_ _%$stx42089%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx42207%_)
        (let* ((_%g4221142235%_
                (lambda (_%g4221242231%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4221242231%_)))
               (_%g4221042320%_
                (lambda (_%g4221242239%_)
                  (if (gx#stx-pair? _%g4221242239%_)
                      (let ((_%e4221542242%_ (gx#syntax-e _%g4221242239%_)))
                        (let ((_%hd4221642246%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4221542242%_)))
                              (_%tl4221742249%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4221542242%_))))
                          (if (gx#stx-pair? _%tl4221742249%_)
                              (let ((_%e4221842252%_
                                     (gx#syntax-e _%tl4221742249%_)))
                                (let ((_%hd4221942256%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4221842252%_)))
                                      (_%tl4222042259%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4221842252%_))))
                                  (if (gx#stx-pair/null? _%tl4222042259%_)
                                      (let ((_g45140_
                                             (gx#syntax-split-splice
                                              _%tl4222042259%_
                                              '0)))
                                        (begin
                                          (let ((_g45141_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45140_)
                                                       (##values-length
                                                        _g45140_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45141_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45141_)))
                                          (let ((_%target4222142262%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45140_ 0)))
                                                (_%tl4222342265%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45140_ 1))))
                                            (if (gx#stx-null? _%tl4222342265%_)
                                                (letrec ((_%loop4222442268%_
                                                          (lambda (_%hd4222242272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4222842275%_)
                    (if (gx#stx-pair? _%hd4222242272%_)
                        (let ((_%e4222542278%_ (gx#syntax-e _%hd4222242272%_)))
                          (let ((_%lp-hd4222642282%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4222542278%_)))
                                (_%lp-tl4222742285%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4222542278%_))))
                            (_%loop4222442268%_
                             _%lp-tl4222742285%_
                             (cons _%lp-hd4222642282%_ _%body4222842275%_))))
                        (let ((_%body4222942288%_
                               (reverse _%body4222842275%_)))
                          ((lambda (_%L42292%_ _%L42294%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'unless)
                                                           (cons _%L42294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4231142314%_ _%g4231242317%_)
                                  (cons _%g4231142314%_ _%g4231242317%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%L42292%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4222942288%_
                           _%hd4221942256%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4222442268%_
                                                   _%target4222142262%_
                                                   '()))
                                                (_%g4221142235%_
                                                 _%g4221242239%_)))))
                                      (_%g4221142235%_ _%g4221242239%_))))
                              (_%g4221142235%_ _%g4221242239%_))))
                      (_%g4221142235%_ _%g4221242239%_)))))
          (_%g4221042320%_ _%$stx42207%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx42325%_)
        (let ((_%g4232842335%_
               (lambda (_%g4232942331%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4232942331%_))))
          (_%g4232842335%_ _%$stx42325%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx42339%_)
        (let ((_%g4234242349%_
               (lambda (_%g4234342345%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4234342345%_))))
          (_%g4234242349%_ _%$stx42339%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx42353%_)
        (letrec ((_%generate-thunk42356%_
                  (lambda (_%body43695%_)
                    (if (null? _%body43695%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx42353%_)
                        (let* ((_%g4369843715%_
                                (lambda (_%g4369943711%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g4369943711%_)))
                               (_%g4369743776%_
                                (lambda (_%g4369943719%_)
                                  (if (gx#stx-pair/null? _%g4369943719%_)
                                      (let ((_g45142_
                                             (gx#syntax-split-splice
                                              _%g4369943719%_
                                              '0)))
                                        (begin
                                          (let ((_g45143_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45142_)
                                                       (##values-length
                                                        _g45142_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45143_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45143_)))
                                          (let ((_%target4370143722%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45142_ 0)))
                                                (_%tl4370343725%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45142_ 1))))
                                            (if (gx#stx-null? _%tl4370343725%_)
                                                (letrec ((_%loop4370443728%_
                                                          (lambda (_%hd4370243732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e4370843735%_)
                    (if (gx#stx-pair? _%hd4370243732%_)
                        (let ((_%e4370543738%_ (gx#syntax-e _%hd4370243732%_)))
                          (let ((_%lp-hd4370643742%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4370543738%_)))
                                (_%lp-tl4370743745%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4370543738%_))))
                            (_%loop4370443728%_
                             _%lp-tl4370743745%_
                             (cons _%lp-hd4370643742%_ _%e4370843735%_))))
                        (let ((_%e4370943748%_ (reverse _%e4370843735%_)))
                          ((lambda (_%L43752%_)
                             (cons (gx#datum->syntax '#f 'lambda)
                                   (cons '()
                                         (foldr (lambda (_%g4376743770%_
                                                         _%g4376843773%_)
                                                  (cons _%g4376743770%_
                                                        _%g4376843773%_))
                                                '()
                                                _%L43752%_))))
                           _%e4370943748%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4370443728%_
                                                   _%target4370143722%_
                                                   '()))
                                                (_%g4369843715%_
                                                 _%g4369943719%_)))))
                                      (_%g4369843715%_ _%g4369943719%_)))))
                          (_%g4369743776%_ (reverse _%body43695%_))))))
                 (_%generate-fini42358%_
                  (lambda (_%thunk43576%_ _%fini43578%_)
                    (let* ((_%g4358043604%_
                            (lambda (_%g4358143600%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4358143600%_)))
                           (_%g4357943691%_
                            (lambda (_%g4358143608%_)
                              (if (gx#stx-pair? _%g4358143608%_)
                                  (let ((_%e4358443611%_
                                         (gx#syntax-e _%g4358143608%_)))
                                    (let ((_%hd4358543615%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4358443611%_)))
                                          (_%tl4358643618%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4358443611%_))))
                                      (if (gx#stx-pair? _%tl4358643618%_)
                                          (let ((_%e4358743621%_
                                                 (gx#syntax-e
                                                  _%tl4358643618%_)))
                                            (let ((_%hd4358843625%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4358743621%_)))
                                                  (_%tl4358943628%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4358743621%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4358843625%_)
                                                  (let ((_g45144_
                                                         (gx#syntax-split-splice
                                                          _%hd4358843625%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g45145_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g45144_)
                           (##values-length _g45144_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g45145_ 2)))
                    (error "Context expects 2 values" _g45145_)))
              (let ((_%target4359043631%_
                     (let () (declare (not safe)) (##values-ref _g45144_ 0)))
                    (_%tl4359243634%_
                     (let () (declare (not safe)) (##values-ref _g45144_ 1))))
                (if (gx#stx-null? _%tl4359243634%_)
                    (letrec ((_%loop4359343637%_
                              (lambda (_%hd4359143641%_ _%e4359743644%_)
                                (if (gx#stx-pair? _%hd4359143641%_)
                                    (let ((_%e4359443647%_
                                           (gx#syntax-e _%hd4359143641%_)))
                                      (let ((_%lp-hd4359543651%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4359443647%_)))
                                            (_%lp-tl4359643654%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4359443647%_))))
                                        (_%loop4359343637%_
                                         _%lp-tl4359643654%_
                                         (cons _%lp-hd4359543651%_
                                               _%e4359743644%_))))
                                    (let ((_%e4359843657%_
                                           (reverse _%e4359743644%_)))
                                      (if (gx#stx-null? _%tl4358943628%_)
                                          ((lambda (_%L43661%_ _%L43663%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'with-unwind-protect)
                                                   (cons _%L43663%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '()
                                   (foldr (lambda (_%g4368243685%_
                                                   _%g4368343688%_)
                                            (cons _%g4368243685%_
                                                  _%g4368343688%_))
                                          '()
                                          _%L43661%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%e4359843657%_
                                           _%hd4358543615%_)
                                          (_%g4358043604%_
                                           _%g4358143608%_)))))))
                      (_%loop4359343637%_ _%target4359043631%_ '()))
                    (_%g4358043604%_ _%g4358143608%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4358043604%_
                                                   _%g4358143608%_))))
                                          (_%g4358043604%_ _%g4358143608%_))))
                                  (_%g4358043604%_ _%g4358143608%_)))))
                      (_%g4357943691%_ (list _%thunk43576%_ _%fini43578%_)))))
                 (_%generate-catch42359%_
                  (lambda (_%handlers42983%_ _%thunk42985%_)
                    (let* ((_%g4298742995%_
                            (lambda (_%g4298842991%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4298842991%_)))
                           (_%g4298643572%_
                            (lambda (_%g4298842999%_)
                              ((lambda (_%L43002%_)
                                 (let _%lp43014%_ ((_%rest43017%_
                                                    _%handlers42983%_)
                                                   (_%clauses43019%_ '()))
                                   (let* ((_%rest4302043028%_ _%rest43017%_)
                                          (_%else4302243161%_
                                           (lambda ()
                                             (let* ((_%g4304043064%_
                                                     (lambda (_%g4304143060%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4304143060%_)))
                                                    (_%g4303943157%_
                                                     (lambda (_%g4304143068%_)
                                                       (if (gx#stx-pair?
                                                            _%g4304143068%_)
                                                           (let ((_%e4304443071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g4304143068%_)))
                     (let ((_%hd4304543075%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4304443071%_)))
                           (_%tl4304643078%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4304443071%_))))
                       (if (gx#stx-pair/null? _%hd4304543075%_)
                           (let ((_g45146_
                                  (gx#syntax-split-splice
                                   _%hd4304543075%_
                                   '0)))
                             (begin
                               (let ((_g45147_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g45146_)
                                            (##values-length _g45146_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g45147_ 2)))
                                     (error "Context expects 2 values"
                                            _g45147_)))
                               (let ((_%target4304743081%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45146_ 0)))
                                     (_%tl4304943084%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45146_ 1))))
                                 (if (gx#stx-null? _%tl4304943084%_)
                                     (letrec ((_%loop4305043087%_
                                               (lambda (_%hd4304843091%_
                                                        _%clause4305443094%_)
                                                 (if (gx#stx-pair?
                                                      _%hd4304843091%_)
                                                     (let ((_%e4305143097%_
                                                            (gx#syntax-e
                                                             _%hd4304843091%_)))
                                                       (let ((_%lp-hd4305243101%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e4305143097%_)))
                     (_%lp-tl4305343104%_
                      (let () (declare (not safe)) (##cdr _%e4305143097%_))))
                 (_%loop4305043087%_
                  _%lp-tl4305343104%_
                  (cons _%lp-hd4305243101%_ _%clause4305443094%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause4305543107%_
                                                            (reverse _%clause4305443094%_)))
                                                       (if (gx#stx-pair?
                                                            _%tl4304643078%_)
                                                           (let ((_%e4305643111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4304643078%_)))
                     (let ((_%hd4305743115%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4305643111%_)))
                           (_%tl4305843118%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4305643111%_))))
                       (if (gx#stx-null? _%tl4305843118%_)
                           ((lambda (_%L43121%_ _%L43123%_)
                              (cons (gx#datum->syntax '#f 'with-catch)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%L43002%_ '())
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cond)
                          (foldr (lambda (_%g4314843151%_ _%g4314943154%_)
                                   (cons _%g4314843151%_ _%g4314943154%_))
                                 (cons (cons (gx#datum->syntax '#f 'else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise)
                                                         (cons _%L43002%_ '()))
                                                   '()))
                                       '())
                                 _%L43123%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%L43121%_ '()))))
                            _%hd4305743115%_
                            _%clause4305543107%_)
                           (_%g4304043064%_ _%g4304143068%_))))
                   (_%g4304043064%_ _%g4304143068%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop4305043087%_
                                        _%target4304743081%_
                                        '()))
                                     (_%g4304043064%_ _%g4304143068%_)))))
                           (_%g4304043064%_ _%g4304143068%_))))
                   (_%g4304043064%_ _%g4304143068%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4303943157%_
                                                (list _%clauses43019%_
                                                      _%thunk42985%_)))))
                                          (_%K4302443556%_
                                           (lambda (_%rest43165%_ _%hd43167%_)
                                             (let* ((_%__stx4486644867%_
                                                     _%hd43167%_)
                                                    (_%g4317243242%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx4486644867%_))))
                                               (let ((_%__kont4486944870%_
                                                      (lambda (_%L43535%_
                                                               _%L43537%_)
                                                        (_%lp43014%_
                                                         _%rest43165%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%L43537%_ '()))
                                   (cons _%L43002%_ '()))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons _%L43535%_ '())))
                       _%clauses43019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4487144872%_
                                                      (lambda (_%L43467%_
                                                               _%L43469%_
                                                               _%L43470%_)
                                                        (_%lp43014%_
                                                         _%rest43165%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%L43470%_ '()))
                                   (cons _%L43002%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%L43469%_
                                                           (cons _%L43002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4348943492%_
                                                               _%g4349043495%_)
                                                        (cons _%g4348943492%_
                                                              _%g4349043495%_))
                                                      '()
                                                      _%L43467%_)))
                                   '()))
                       _%clauses43019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4487544876%_
                                                      (lambda (_%L43373%_
                                                               _%L43375%_)
                                                        (_%lp43014%_
                                                         _%rest43165%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%L43375%_
                                                           (cons _%L43002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4339143394%_
                                                               _%g4339243397%_)
                                                        (cons _%g4339143394%_
                                                              _%g4339243397%_))
                                                      '()
                                                      _%L43373%_)))
                                   '()))
                       _%clauses43019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4487944880%_
                                                      (lambda (_%L43289%_
                                                               _%L43291%_)
                                                        (_%lp43014%_
                                                         _%rest43165%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (foldr (lambda (_%g4330743310%_
                                                         _%g4330843313%_)
                                                  (cons _%g4330743310%_
                                                        _%g4330843313%_))
                                                '()
                                                _%L43289%_))
                                   '()))
                       _%clauses43019%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__match4497144972%_
                                                         (lambda (_%e4322543249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd4322643253%_
                          _%tl4322743256%_
                          _%__splice4488144882%_
                          _%target4322843259%_
                          _%tl4323043262%_)
                   (letrec ((_%loop4323143265%_
                             (lambda (_%hd4322943269%_ _%body4323543272%_)
                               (if (gx#stx-pair? _%hd4322943269%_)
                                   (let ((_%e4323243275%_
                                          (gx#syntax-e _%hd4322943269%_)))
                                     (let ((_%lp-tl4323443282%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4323243275%_)))
                                           (_%lp-hd4323343279%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4323243275%_))))
                                       (_%loop4323143265%_
                                        _%lp-tl4323443282%_
                                        (cons _%lp-hd4323343279%_
                                              _%body4323543272%_))))
                                   (let ((_%body4323643285%_
                                          (reverse _%body4323543272%_)))
                                     (let ((_%L43289%_ _%body4323643285%_)
                                           (_%L43291%_ _%hd4322643253%_))
                                       (if (gx#underscore? _%L43291%_)
                                           (_%__kont4487944880%_
                                            _%L43289%_
                                            _%L43291%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g4317243242%_)))))))))
                     (_%loop4323143265%_ _%target4322843259%_ '()))))
                (_%__match4495744958%_
                 (lambda (_%e4320843323%_
                          _%hd4320943327%_
                          _%tl4321043330%_
                          _%e4321143333%_
                          _%hd4321243337%_
                          _%tl4321343340%_
                          _%__splice4487744878%_
                          _%target4321443343%_
                          _%tl4321643346%_)
                   (letrec ((_%loop4321743349%_
                             (lambda (_%hd4321543353%_ _%body4322143356%_)
                               (if (gx#stx-pair? _%hd4321543353%_)
                                   (let ((_%e4321843359%_
                                          (gx#syntax-e _%hd4321543353%_)))
                                     (let ((_%lp-tl4322043366%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4321843359%_)))
                                           (_%lp-hd4321943363%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4321843359%_))))
                                       (_%loop4321743349%_
                                        _%lp-tl4322043366%_
                                        (cons _%lp-hd4321943363%_
                                              _%body4322143356%_))))
                                   (let ((_%body4322243369%_
                                          (reverse _%body4322143356%_)))
                                     (let ((_%L43373%_ _%body4322243369%_)
                                           (_%L43375%_ _%hd4321243337%_))
                                       (if (gx#identifier? _%L43375%_)
                                           (_%__kont4487544876%_
                                            _%L43373%_
                                            _%L43375%_)
                                           (_%__match4497144972%_
                                            _%e4320843323%_
                                            _%hd4320943327%_
                                            _%tl4321043330%_
                                            _%__splice4487744878%_
                                            _%target4321443343%_
                                            _%tl4321643346%_))))))))
                     (_%loop4321743349%_ _%target4321443343%_ '()))))
                (_%__match4493544936%_
                 (lambda (_%e4318843407%_
                          _%hd4318943411%_
                          _%tl4319043414%_
                          _%e4319143417%_
                          _%hd4319243421%_
                          _%tl4319343424%_
                          _%e4319443427%_
                          _%hd4319543431%_
                          _%tl4319643434%_
                          _%__splice4487344874%_
                          _%target4319743437%_
                          _%tl4319943440%_)
                   (letrec ((_%loop4320043443%_
                             (lambda (_%hd4319843447%_ _%body4320443450%_)
                               (if (gx#stx-pair? _%hd4319843447%_)
                                   (let ((_%e4320143453%_
                                          (gx#syntax-e _%hd4319843447%_)))
                                     (let ((_%lp-tl4320343460%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4320143453%_)))
                                           (_%lp-hd4320243457%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4320143453%_))))
                                       (_%loop4320043443%_
                                        _%lp-tl4320343460%_
                                        (cons _%lp-hd4320243457%_
                                              _%body4320443450%_))))
                                   (let ((_%body4320543463%_
                                          (reverse _%body4320443450%_)))
                                     (let ((_%L43467%_ _%body4320543463%_)
                                           (_%L43469%_ _%hd4319543431%_)
                                           (_%L43470%_ _%hd4319243421%_))
                                       (if (gx#identifier? _%L43469%_)
                                           (_%__kont4487144872%_
                                            _%L43467%_
                                            _%L43469%_
                                            _%L43470%_)
                                           (_%__match4497144972%_
                                            _%e4318843407%_
                                            _%hd4318943411%_
                                            _%tl4319043414%_
                                            _%__splice4487344874%_
                                            _%target4319743437%_
                                            _%tl4319943440%_))))))))
                     (_%loop4320043443%_ _%target4319743437%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx4486644867%_)
                                                       (let ((_%e4317643505%_
                                                              (gx#syntax-e
                                                               _%__stx4486644867%_)))
                                                         (let ((_%tl4317843512%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4317643505%_)))
                       (_%hd4317743509%_
                        (let () (declare (not safe)) (##car _%e4317643505%_))))
                   (if (gx#stx-pair? _%tl4317843512%_)
                       (let ((_%e4317943515%_ (gx#syntax-e _%tl4317843512%_)))
                         (let ((_%tl4318143522%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4317943515%_)))
                               (_%hd4318043519%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4317943515%_))))
                           (if (gx#identifier? _%hd4318043519%_)
                               (if (gx#free-identifier=?
                                    |gerbil/core/more-sugar[1]#_g45148_|
                                    _%hd4318043519%_)
                                   (if (gx#stx-pair? _%tl4318143522%_)
                                       (let ((_%e4318243525%_
                                              (gx#syntax-e _%tl4318143522%_)))
                                         (let ((_%tl4318443532%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4318243525%_)))
                                               (_%hd4318343529%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4318243525%_))))
                                           (if (gx#stx-null? _%tl4318443532%_)
                                               (_%__kont4486944870%_
                                                _%hd4318343529%_
                                                _%hd4317743509%_)
                                               (if (gx#stx-pair?
                                                    _%hd4317743509%_)
                                                   (let ((_%e4319143417%_
                                                          (gx#syntax-e
                                                           _%hd4317743509%_)))
                                                     (let ((_%tl4319343424%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4319143417%_)))
                                                           (_%hd4319243421%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4319143417%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl4319343424%_)
                                                           (let ((_%e4319443427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4319343424%_)))
                     (let ((_%tl4319643434%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4319443427%_)))
                           (_%hd4319543431%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4319443427%_))))
                       (if (gx#stx-null? _%tl4319643434%_)
                           (if (gx#stx-pair/null? _%tl4317843512%_)
                               (let ((_%__splice4487344874%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4317843512%_
                                       '0)))
                                 (let ((_%tl4319943440%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4487344874%_
                                           '1)))
                                       (_%target4319743437%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4487344874%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4319943440%_)
                                       (_%__match4493544936%_
                                        _%e4317643505%_
                                        _%hd4317743509%_
                                        _%tl4317843512%_
                                        _%e4319143417%_
                                        _%hd4319243421%_
                                        _%tl4319343424%_
                                        _%e4319443427%_
                                        _%hd4319543431%_
                                        _%tl4319643434%_
                                        _%__splice4487344874%_
                                        _%target4319743437%_
                                        _%tl4319943440%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4317243242%_)))))
                               (let () (declare (not safe)) (_%g4317243242%_)))
                           (if (gx#stx-pair/null? _%tl4317843512%_)
                               (let ((_%__splice4488144882%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4317843512%_
                                       '0)))
                                 (let ((_%tl4323043262%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4488144882%_
                                           '1)))
                                       (_%target4322843259%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4488144882%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4323043262%_)
                                       (_%__match4497144972%_
                                        _%e4317643505%_
                                        _%hd4317743509%_
                                        _%tl4317843512%_
                                        _%__splice4488144882%_
                                        _%target4322843259%_
                                        _%tl4323043262%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4317243242%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4317243242%_))))))
                   (if (gx#stx-null? _%tl4319343424%_)
                       (if (gx#stx-pair/null? _%tl4317843512%_)
                           (let ((_%__splice4487744878%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4317843512%_
                                   '0)))
                             (let ((_%tl4321643346%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4487744878%_
                                       '1)))
                                   (_%target4321443343%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4487744878%_
                                       '0))))
                               (if (gx#stx-null? _%tl4321643346%_)
                                   (_%__match4495744958%_
                                    _%e4317643505%_
                                    _%hd4317743509%_
                                    _%tl4317843512%_
                                    _%e4319143417%_
                                    _%hd4319243421%_
                                    _%tl4319343424%_
                                    _%__splice4487744878%_
                                    _%target4321443343%_
                                    _%tl4321643346%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4317243242%_)))))
                           (let () (declare (not safe)) (_%g4317243242%_)))
                       (if (gx#stx-pair/null? _%tl4317843512%_)
                           (let ((_%__splice4488144882%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4317843512%_
                                   '0)))
                             (let ((_%tl4323043262%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4488144882%_
                                       '1)))
                                   (_%target4322843259%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4488144882%_
                                       '0))))
                               (if (gx#stx-null? _%tl4323043262%_)
                                   (_%__match4497144972%_
                                    _%e4317643505%_
                                    _%hd4317743509%_
                                    _%tl4317843512%_
                                    _%__splice4488144882%_
                                    _%target4322843259%_
                                    _%tl4323043262%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4317243242%_)))))
                           (let () (declare (not safe)) (_%g4317243242%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4317843512%_)
                                                       (let ((_%__splice4488144882%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4317843512%_
                                                               '0)))
                                                         (let ((_%tl4323043262%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4488144882%_ '1)))
                       (_%target4322843259%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4488144882%_ '0))))
                   (if (gx#stx-null? _%tl4323043262%_)
                       (_%__match4497144972%_
                        _%e4317643505%_
                        _%hd4317743509%_
                        _%tl4317843512%_
                        _%__splice4488144882%_
                        _%target4322843259%_
                        _%tl4323043262%_)
                       (let () (declare (not safe)) (_%g4317243242%_)))))
               (let () (declare (not safe)) (_%g4317243242%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? _%hd4317743509%_)
                                           (let ((_%e4319143417%_
                                                  (gx#syntax-e
                                                   _%hd4317743509%_)))
                                             (let ((_%tl4319343424%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4319143417%_)))
                                                   (_%hd4319243421%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4319143417%_))))
                                               (if (gx#stx-pair?
                                                    _%tl4319343424%_)
                                                   (let ((_%e4319443427%_
                                                          (gx#syntax-e
                                                           _%tl4319343424%_)))
                                                     (let ((_%tl4319643434%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4319443427%_)))
                                                           (_%hd4319543431%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4319443427%_))))
                                                       (if (gx#stx-null?
                                                            _%tl4319643434%_)
                                                           (if (gx#stx-pair/null?
                                                                _%tl4317843512%_)
                                                               (let ((_%__splice4487344874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-split-splice->vector
                               _%tl4317843512%_
                               '0)))
                         (let ((_%tl4319943440%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4487344874%_ '1)))
                               (_%target4319743437%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4487344874%_ '0))))
                           (if (gx#stx-null? _%tl4319943440%_)
                               (_%__match4493544936%_
                                _%e4317643505%_
                                _%hd4317743509%_
                                _%tl4317843512%_
                                _%e4319143417%_
                                _%hd4319243421%_
                                _%tl4319343424%_
                                _%e4319443427%_
                                _%hd4319543431%_
                                _%tl4319643434%_
                                _%__splice4487344874%_
                                _%target4319743437%_
                                _%tl4319943440%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4317243242%_)))))
                       (let () (declare (not safe)) (_%g4317243242%_)))
                   (if (gx#stx-pair/null? _%tl4317843512%_)
                       (let ((_%__splice4488144882%_
                              (gx#syntax-split-splice->vector
                               _%tl4317843512%_
                               '0)))
                         (let ((_%tl4323043262%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4488144882%_ '1)))
                               (_%target4322843259%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4488144882%_ '0))))
                           (if (gx#stx-null? _%tl4323043262%_)
                               (_%__match4497144972%_
                                _%e4317643505%_
                                _%hd4317743509%_
                                _%tl4317843512%_
                                _%__splice4488144882%_
                                _%target4322843259%_
                                _%tl4323043262%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4317243242%_)))))
                       (let () (declare (not safe)) (_%g4317243242%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-null?
                                                        _%tl4319343424%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4317843512%_)
                                                           (let ((_%__splice4487744878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4317843512%_
                           '0)))
                     (let ((_%tl4321643346%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4487744878%_ '1)))
                           (_%target4321443343%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4487744878%_ '0))))
                       (if (gx#stx-null? _%tl4321643346%_)
                           (_%__match4495744958%_
                            _%e4317643505%_
                            _%hd4317743509%_
                            _%tl4317843512%_
                            _%e4319143417%_
                            _%hd4319243421%_
                            _%tl4319343424%_
                            _%__splice4487744878%_
                            _%target4321443343%_
                            _%tl4321643346%_)
                           (let () (declare (not safe)) (_%g4317243242%_)))))
                   (let () (declare (not safe)) (_%g4317243242%_)))
               (if (gx#stx-pair/null? _%tl4317843512%_)
                   (let ((_%__splice4488144882%_
                          (gx#syntax-split-splice->vector
                           _%tl4317843512%_
                           '0)))
                     (let ((_%tl4323043262%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4488144882%_ '1)))
                           (_%target4322843259%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4488144882%_ '0))))
                       (if (gx#stx-null? _%tl4323043262%_)
                           (_%__match4497144972%_
                            _%e4317643505%_
                            _%hd4317743509%_
                            _%tl4317843512%_
                            _%__splice4488144882%_
                            _%target4322843259%_
                            _%tl4323043262%_)
                           (let () (declare (not safe)) (_%g4317243242%_)))))
                   (let () (declare (not safe)) (_%g4317243242%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _%tl4317843512%_)
                                               (let ((_%__splice4488144882%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4317843512%_
                                                       '0)))
                                                 (let ((_%tl4323043262%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4488144882%_
                                                           '1)))
                                                       (_%target4322843259%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4488144882%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4323043262%_)
                                                       (_%__match4497144972%_
                                                        _%e4317643505%_
                                                        _%hd4317743509%_
                                                        _%tl4317843512%_
                                                        _%__splice4488144882%_
                                                        _%target4322843259%_
                                                        _%tl4323043262%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4317243242%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4317243242%_)))))
                                   (if (gx#stx-pair? _%hd4317743509%_)
                                       (let ((_%e4319143417%_
                                              (gx#syntax-e _%hd4317743509%_)))
                                         (let ((_%tl4319343424%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4319143417%_)))
                                               (_%hd4319243421%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4319143417%_))))
                                           (if (gx#stx-pair? _%tl4319343424%_)
                                               (let ((_%e4319443427%_
                                                      (gx#syntax-e
                                                       _%tl4319343424%_)))
                                                 (let ((_%tl4319643434%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4319443427%_)))
                                                       (_%hd4319543431%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4319443427%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4319643434%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4317843512%_)
                                                           (let ((_%__splice4487344874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4317843512%_
                           '0)))
                     (let ((_%tl4319943440%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4487344874%_ '1)))
                           (_%target4319743437%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4487344874%_ '0))))
                       (if (gx#stx-null? _%tl4319943440%_)
                           (_%__match4493544936%_
                            _%e4317643505%_
                            _%hd4317743509%_
                            _%tl4317843512%_
                            _%e4319143417%_
                            _%hd4319243421%_
                            _%tl4319343424%_
                            _%e4319443427%_
                            _%hd4319543431%_
                            _%tl4319643434%_
                            _%__splice4487344874%_
                            _%target4319743437%_
                            _%tl4319943440%_)
                           (let () (declare (not safe)) (_%g4317243242%_)))))
                   (let () (declare (not safe)) (_%g4317243242%_)))
               (if (gx#stx-pair/null? _%tl4317843512%_)
                   (let ((_%__splice4488144882%_
                          (gx#syntax-split-splice->vector
                           _%tl4317843512%_
                           '0)))
                     (let ((_%tl4323043262%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4488144882%_ '1)))
                           (_%target4322843259%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4488144882%_ '0))))
                       (if (gx#stx-null? _%tl4323043262%_)
                           (_%__match4497144972%_
                            _%e4317643505%_
                            _%hd4317743509%_
                            _%tl4317843512%_
                            _%__splice4488144882%_
                            _%target4322843259%_
                            _%tl4323043262%_)
                           (let () (declare (not safe)) (_%g4317243242%_)))))
                   (let () (declare (not safe)) (_%g4317243242%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%tl4319343424%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4317843512%_)
                                                       (let ((_%__splice4487744878%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4317843512%_
                                                               '0)))
                                                         (let ((_%tl4321643346%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4487744878%_ '1)))
                       (_%target4321443343%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4487744878%_ '0))))
                   (if (gx#stx-null? _%tl4321643346%_)
                       (_%__match4495744958%_
                        _%e4317643505%_
                        _%hd4317743509%_
                        _%tl4317843512%_
                        _%e4319143417%_
                        _%hd4319243421%_
                        _%tl4319343424%_
                        _%__splice4487744878%_
                        _%target4321443343%_
                        _%tl4321643346%_)
                       (let () (declare (not safe)) (_%g4317243242%_)))))
               (let () (declare (not safe)) (_%g4317243242%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4317843512%_)
                                                       (let ((_%__splice4488144882%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4317843512%_
                                                               '0)))
                                                         (let ((_%tl4323043262%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4488144882%_ '1)))
                       (_%target4322843259%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4488144882%_ '0))))
                   (if (gx#stx-null? _%tl4323043262%_)
                       (_%__match4497144972%_
                        _%e4317643505%_
                        _%hd4317743509%_
                        _%tl4317843512%_
                        _%__splice4488144882%_
                        _%target4322843259%_
                        _%tl4323043262%_)
                       (let () (declare (not safe)) (_%g4317243242%_)))))
               (let () (declare (not safe)) (_%g4317243242%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair/null? _%tl4317843512%_)
                                           (let ((_%__splice4488144882%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4317843512%_
                                                   '0)))
                                             (let ((_%tl4323043262%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4488144882%_
                                                       '1)))
                                                   (_%target4322843259%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4488144882%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4323043262%_)
                                                   (_%__match4497144972%_
                                                    _%e4317643505%_
                                                    _%hd4317743509%_
                                                    _%tl4317843512%_
                                                    _%__splice4488144882%_
                                                    _%target4322843259%_
                                                    _%tl4323043262%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4317243242%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4317243242%_)))))
                               (if (gx#stx-pair? _%hd4317743509%_)
                                   (let ((_%e4319143417%_
                                          (gx#syntax-e _%hd4317743509%_)))
                                     (let ((_%tl4319343424%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4319143417%_)))
                                           (_%hd4319243421%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4319143417%_))))
                                       (if (gx#stx-pair? _%tl4319343424%_)
                                           (let ((_%e4319443427%_
                                                  (gx#syntax-e
                                                   _%tl4319343424%_)))
                                             (let ((_%tl4319643434%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4319443427%_)))
                                                   (_%hd4319543431%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4319443427%_))))
                                               (if (gx#stx-null?
                                                    _%tl4319643434%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4317843512%_)
                                                       (let ((_%__splice4487344874%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4317843512%_
                                                               '0)))
                                                         (let ((_%tl4319943440%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4487344874%_ '1)))
                       (_%target4319743437%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4487344874%_ '0))))
                   (if (gx#stx-null? _%tl4319943440%_)
                       (_%__match4493544936%_
                        _%e4317643505%_
                        _%hd4317743509%_
                        _%tl4317843512%_
                        _%e4319143417%_
                        _%hd4319243421%_
                        _%tl4319343424%_
                        _%e4319443427%_
                        _%hd4319543431%_
                        _%tl4319643434%_
                        _%__splice4487344874%_
                        _%target4319743437%_
                        _%tl4319943440%_)
                       (let () (declare (not safe)) (_%g4317243242%_)))))
               (let () (declare (not safe)) (_%g4317243242%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4317843512%_)
                                                       (let ((_%__splice4488144882%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4317843512%_
                                                               '0)))
                                                         (let ((_%tl4323043262%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4488144882%_ '1)))
                       (_%target4322843259%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4488144882%_ '0))))
                   (if (gx#stx-null? _%tl4323043262%_)
                       (_%__match4497144972%_
                        _%e4317643505%_
                        _%hd4317743509%_
                        _%tl4317843512%_
                        _%__splice4488144882%_
                        _%target4322843259%_
                        _%tl4323043262%_)
                       (let () (declare (not safe)) (_%g4317243242%_)))))
               (let () (declare (not safe)) (_%g4317243242%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-null? _%tl4319343424%_)
                                               (if (gx#stx-pair/null?
                                                    _%tl4317843512%_)
                                                   (let ((_%__splice4487744878%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4317843512%_
                                                           '0)))
                                                     (let ((_%tl4321643346%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4487744878%_
                                                               '1)))
                                                           (_%target4321443343%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4487744878%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4321643346%_)
                                                           (_%__match4495744958%_
                                                            _%e4317643505%_
                                                            _%hd4317743509%_
                                                            _%tl4317843512%_
                                                            _%e4319143417%_
                                                            _%hd4319243421%_
                                                            _%tl4319343424%_
                                                            _%__splice4487744878%_
                                                            _%target4321443343%_
                                                            _%tl4321643346%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4317243242%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4317243242%_)))
                                               (if (gx#stx-pair/null?
                                                    _%tl4317843512%_)
                                                   (let ((_%__splice4488144882%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4317843512%_
                                                           '0)))
                                                     (let ((_%tl4323043262%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4488144882%_
                                                               '1)))
                                                           (_%target4322843259%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4488144882%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4323043262%_)
                                                           (_%__match4497144972%_
                                                            _%e4317643505%_
                                                            _%hd4317743509%_
                                                            _%tl4317843512%_
                                                            _%__splice4488144882%_
                                                            _%target4322843259%_
                                                            _%tl4323043262%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4317243242%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4317243242%_)))))))
                                   (if (gx#stx-pair/null? _%tl4317843512%_)
                                       (let ((_%__splice4488144882%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4317843512%_
                                               '0)))
                                         (let ((_%tl4323043262%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4488144882%_
                                                   '1)))
                                               (_%target4322843259%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4488144882%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4323043262%_)
                                               (_%__match4497144972%_
                                                _%e4317643505%_
                                                _%hd4317743509%_
                                                _%tl4317843512%_
                                                _%__splice4488144882%_
                                                _%target4322843259%_
                                                _%tl4323043262%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4317243242%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4317243242%_)))))))
                       (if (gx#stx-pair? _%hd4317743509%_)
                           (let ((_%e4319143417%_
                                  (gx#syntax-e _%hd4317743509%_)))
                             (let ((_%tl4319343424%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4319143417%_)))
                                   (_%hd4319243421%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4319143417%_))))
                               (if (gx#stx-pair? _%tl4319343424%_)
                                   (let ((_%e4319443427%_
                                          (gx#syntax-e _%tl4319343424%_)))
                                     (let ((_%tl4319643434%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4319443427%_)))
                                           (_%hd4319543431%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4319443427%_))))
                                       (if (gx#stx-null? _%tl4319643434%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4317843512%_)
                                               (let ((_%__splice4487344874%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4317843512%_
                                                       '0)))
                                                 (let ((_%tl4319943440%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4487344874%_
                                                           '1)))
                                                       (_%target4319743437%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4487344874%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4319943440%_)
                                                       (_%__match4493544936%_
                                                        _%e4317643505%_
                                                        _%hd4317743509%_
                                                        _%tl4317843512%_
                                                        _%e4319143417%_
                                                        _%hd4319243421%_
                                                        _%tl4319343424%_
                                                        _%e4319443427%_
                                                        _%hd4319543431%_
                                                        _%tl4319643434%_
                                                        _%__splice4487344874%_
                                                        _%target4319743437%_
                                                        _%tl4319943440%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4317243242%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4317243242%_)))
                                           (if (gx#stx-pair/null?
                                                _%tl4317843512%_)
                                               (let ((_%__splice4488144882%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4317843512%_
                                                       '0)))
                                                 (let ((_%tl4323043262%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4488144882%_
                                                           '1)))
                                                       (_%target4322843259%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4488144882%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4323043262%_)
                                                       (_%__match4497144972%_
                                                        _%e4317643505%_
                                                        _%hd4317743509%_
                                                        _%tl4317843512%_
                                                        _%__splice4488144882%_
                                                        _%target4322843259%_
                                                        _%tl4323043262%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4317243242%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4317243242%_))))))
                                   (if (gx#stx-null? _%tl4319343424%_)
                                       (if (gx#stx-pair/null? _%tl4317843512%_)
                                           (let ((_%__splice4487744878%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4317843512%_
                                                   '0)))
                                             (let ((_%tl4321643346%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4487744878%_
                                                       '1)))
                                                   (_%target4321443343%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4487744878%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4321643346%_)
                                                   (_%__match4495744958%_
                                                    _%e4317643505%_
                                                    _%hd4317743509%_
                                                    _%tl4317843512%_
                                                    _%e4319143417%_
                                                    _%hd4319243421%_
                                                    _%tl4319343424%_
                                                    _%__splice4487744878%_
                                                    _%target4321443343%_
                                                    _%tl4321643346%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4317243242%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4317243242%_)))
                                       (if (gx#stx-pair/null? _%tl4317843512%_)
                                           (let ((_%__splice4488144882%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4317843512%_
                                                   '0)))
                                             (let ((_%tl4323043262%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4488144882%_
                                                       '1)))
                                                   (_%target4322843259%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4488144882%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4323043262%_)
                                                   (_%__match4497144972%_
                                                    _%e4317643505%_
                                                    _%hd4317743509%_
                                                    _%tl4317843512%_
                                                    _%__splice4488144882%_
                                                    _%target4322843259%_
                                                    _%tl4323043262%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4317243242%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4317243242%_)))))))
                           (if (gx#stx-pair/null? _%tl4317843512%_)
                               (let ((_%__splice4488144882%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4317843512%_
                                       '0)))
                                 (let ((_%tl4323043262%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4488144882%_
                                           '1)))
                                       (_%target4322843259%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4488144882%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4323043262%_)
                                       (_%__match4497144972%_
                                        _%e4317643505%_
                                        _%hd4317743509%_
                                        _%tl4317843512%_
                                        _%__splice4488144882%_
                                        _%target4322843259%_
                                        _%tl4323043262%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4317243242%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4317243242%_)))))))
               (let () (declare (not safe)) (_%g4317243242%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (pair? _%rest4302043028%_)
                                         (let ((_%hd4302543560%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%rest4302043028%_)))
                                               (_%tl4302643563%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest4302043028%_))))
                                           (let* ((_%hd43566%_
                                                   _%hd4302543560%_)
                                                  (_%rest43569%_
                                                   _%tl4302643563%_))
                                             (_%K4302443556%_
                                              _%rest43569%_
                                              _%hd43566%_)))
                                         (_%else4302243161%_)))))
                               _%g4298842999%_))))
                      (_%g4298643572%_ (gx#genident))))))
          (let* ((_%g4236142381%_
                  (lambda (_%g4236242377%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g4236242377%_)))
                 (_%g4236042979%_
                  (lambda (_%g4236242385%_)
                    (if (gx#stx-pair? _%g4236242385%_)
                        (let ((_%e4236442388%_ (gx#syntax-e _%g4236242385%_)))
                          (let ((_%hd4236542392%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4236442388%_)))
                                (_%tl4236642395%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4236442388%_))))
                            (if (gx#stx-pair/null? _%tl4236642395%_)
                                (let ((_g45149_
                                       (gx#syntax-split-splice
                                        _%tl4236642395%_
                                        '0)))
                                  (begin
                                    (let ((_g45150_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g45149_)
                                                 (##values-length _g45149_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g45150_ 2)))
                                          (error "Context expects 2 values"
                                                 _g45150_)))
                                    (let ((_%target4236742398%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45149_ 0)))
                                          (_%tl4236942401%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45149_ 1))))
                                      (if (gx#stx-null? _%tl4236942401%_)
                                          (letrec ((_%loop4237042404%_
                                                    (lambda (_%hd4236842408%_
                                                             _%e4237442411%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4236842408%_)
                                                          (let ((_%e4237142414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4236842408%_)))
                    (let ((_%lp-hd4237242418%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4237142414%_)))
                          (_%lp-tl4237342421%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4237142414%_))))
                      (_%loop4237042404%_
                       _%lp-tl4237342421%_
                       (cons _%lp-hd4237242418%_ _%e4237442411%_))))
                  (let ((_%e4237542424%_ (reverse _%e4237442411%_)))
                    ((lambda (_%L42428%_)
                       (let _%lp42445%_ ((_%rest42448%_
                                          (foldr (lambda (_%g4297042973%_
                                                          _%g4297142976%_)
                                                   (cons _%g4297042973%_
                                                         _%g4297142976%_))
                                                 '()
                                                 _%L42428%_))
                                         (_%body42450%_ '()))
                         (let* ((_%__stx4509245093%_ _%rest42448%_)
                                (_%g4245342465%_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%__stx4509245093%_))))
                           (let ((_%__kont4509545096%_
                                  (lambda (_%L42493%_ _%L42495%_)
                                    (let* ((_%__stx4504045041%_ _%L42495%_)
                                           (_%g4251242545%_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%__stx4504045041%_))))
                                      (let ((_%__kont4504345044%_
                                             (lambda (_%L42940%_)
                                               (if (gx#stx-null? _%L42493%_)
                                                   (_%generate-fini42358%_
                                                    (_%generate-thunk42356%_
                                                     _%body42450%_)
                                                    (foldr (lambda (_%g4295442957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4295542960%_)
                     (cons _%g4295442957%_ _%g4295542960%_))
                   '()
                   _%L42940%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced finally clause"
                                                    _%stx42353%_))))
                                            (_%__kont4504745048%_
                                             (lambda (_%L42603%_)
                                               (let _%lp42620%_ ((_%rest42623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L42493%_)
                         (_%handlers42625%_
                          (cons (foldr (lambda (_%g4288442887%_
                                                _%g4288542890%_)
                                         (cons _%g4288442887%_
                                               _%g4288542890%_))
                                       '()
                                       _%L42603%_)
                                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx4497444975%_
                                                         _%rest42623%_)
                                                        (_%g4262942669%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx4497444975%_))))
                                                   (let ((_%__kont4497744978%_
                                                          (lambda (_%L42854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L42856%_)
                    (_%lp42620%_
                     _%L42854%_
                     (cons (foldr (lambda (_%g4287242875%_ _%g4287342878%_)
                                    (cons _%g4287242875%_ _%g4287342878%_))
                                  '()
                                  _%L42856%_)
                           _%handlers42625%_))))
                 (_%__kont4498144982%_
                  (lambda (_%L42737%_)
                    (let* ((_%g4275842766%_
                            (lambda (_%g4275942762%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4275942762%_)))
                           (_%g4275742793%_
                            (lambda (_%g4275942770%_)
                              ((lambda (_%L42773%_)
                                 (_%generate-fini42358%_
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '() (cons _%L42773%_ '())))
                                  (foldr (lambda (_%g4278442787%_
                                                  _%g4278542790%_)
                                           (cons _%g4278442787%_
                                                 _%g4278542790%_))
                                         '()
                                         _%L42737%_)))
                               _%g4275942770%_))))
                      (_%g4275742793%_
                       (_%generate-catch42359%_
                        _%handlers42625%_
                        (_%generate-thunk42356%_ _%body42450%_))))))
                 (_%__kont4498544986%_
                  (lambda ()
                    (_%generate-catch42359%_
                     _%handlers42625%_
                     (_%generate-thunk42356%_ _%body42450%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%g4262842680%_
                                                             (lambda ()
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%__stx4497444975%_)
                           (_%__kont4498544986%_)
                           (let () (declare (not safe)) (_%g4262942669%_)))))
                    (_%__match4503545036%_
                     (lambda (_%e4264942687%_
                              _%hd4265042691%_
                              _%tl4265142694%_
                              _%e4265242697%_
                              _%hd4265342701%_
                              _%tl4265442704%_
                              _%__splice4498344984%_
                              _%target4265542707%_
                              _%tl4265742710%_)
                       (letrec ((_%loop4265842713%_
                                 (lambda (_%hd4265642717%_ _%fini4266242720%_)
                                   (if (gx#stx-pair? _%hd4265642717%_)
                                       (let ((_%e4265942723%_
                                              (gx#syntax-e _%hd4265642717%_)))
                                         (let ((_%lp-tl4266142730%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4265942723%_)))
                                               (_%lp-hd4266042727%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4265942723%_))))
                                           (_%loop4265842713%_
                                            _%lp-tl4266142730%_
                                            (cons _%lp-hd4266042727%_
                                                  _%fini4266242720%_))))
                                       (let ((_%fini4266342733%_
                                              (reverse _%fini4266242720%_)))
                                         (if (gx#stx-null? _%tl4265142694%_)
                                             (_%__kont4498144982%_
                                              _%fini4266342733%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4262942669%_))))))))
                         (_%loop4265842713%_ _%target4265542707%_ '()))))
                    (_%__match4501145012%_
                     (lambda (_%e4263342804%_
                              _%hd4263442808%_
                              _%tl4263542811%_
                              _%e4263642814%_
                              _%hd4263742818%_
                              _%tl4263842821%_
                              _%__splice4497944980%_
                              _%target4263942824%_
                              _%tl4264142827%_)
                       (letrec ((_%loop4264242830%_
                                 (lambda (_%hd4264042834%_
                                          _%handler4264642837%_)
                                   (if (gx#stx-pair? _%hd4264042834%_)
                                       (let ((_%e4264342840%_
                                              (gx#syntax-e _%hd4264042834%_)))
                                         (let ((_%lp-tl4264542847%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4264342840%_)))
                                               (_%lp-hd4264442844%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4264342840%_))))
                                           (_%loop4264242830%_
                                            _%lp-tl4264542847%_
                                            (cons _%lp-hd4264442844%_
                                                  _%handler4264642837%_))))
                                       (let ((_%handler4264742850%_
                                              (reverse _%handler4264642837%_)))
                                         (_%__kont4497744978%_
                                          _%tl4263542811%_
                                          _%handler4264742850%_))))))
                         (_%loop4264242830%_ _%target4263942824%_ '())))))
               (if (gx#stx-pair? _%__stx4497444975%_)
                   (let ((_%e4263342804%_ (gx#syntax-e _%__stx4497444975%_)))
                     (let ((_%tl4263542811%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4263342804%_)))
                           (_%hd4263442808%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4263342804%_))))
                       (if (gx#stx-pair? _%hd4263442808%_)
                           (let ((_%e4263642814%_
                                  (gx#syntax-e _%hd4263442808%_)))
                             (let ((_%tl4263842821%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4263642814%_)))
                                   (_%hd4263742818%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4263642814%_))))
                               (if (gx#identifier? _%hd4263742818%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/more-sugar[1]#_g45151_|
                                        _%hd4263742818%_)
                                       (if (gx#stx-pair/null? _%tl4263842821%_)
                                           (let ((_%__splice4497944980%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4263842821%_
                                                   '0)))
                                             (let ((_%tl4264142827%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4497944980%_
                                                       '1)))
                                                   (_%target4263942824%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4497944980%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4264142827%_)
                                                   (_%__match4501145012%_
                                                    _%e4263342804%_
                                                    _%hd4263442808%_
                                                    _%tl4263542811%_
                                                    _%e4263642814%_
                                                    _%hd4263742818%_
                                                    _%tl4263842821%_
                                                    _%__splice4497944980%_
                                                    _%target4263942824%_
                                                    _%tl4264142827%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4262942669%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4262942669%_)))
                                       (if (gx#free-identifier=?
                                            |gerbil/core/more-sugar[1]#_g45152_|
                                            _%hd4263742818%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4263842821%_)
                                               (let ((_%__splice4498344984%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4263842821%_
                                                       '0)))
                                                 (let ((_%tl4265742710%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4498344984%_
                                                           '1)))
                                                       (_%target4265542707%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4498344984%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4265742710%_)
                                                       (_%__match4503545036%_
                                                        _%e4263342804%_
                                                        _%hd4263442808%_
                                                        _%tl4263542811%_
                                                        _%e4263642814%_
                                                        _%hd4263742818%_
                                                        _%tl4263842821%_
                                                        _%__splice4498344984%_
                                                        _%target4265542707%_
                                                        _%tl4265742710%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4262942669%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4262942669%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4262942669%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4262942669%_)))))
                           (let () (declare (not safe)) (_%g4262942669%_)))))
                   (let () (declare (not safe)) (_%g4262842680%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont4505145052%_
                                             (lambda ()
                                               (_%lp42445%_
                                                _%L42493%_
                                                (cons _%L42495%_
                                                      _%body42450%_)))))
                                        (let* ((_%__match4508945090%_
                                                (lambda (_%e4252842563%_
                                                         _%hd4252942567%_
                                                         _%tl4253042570%_
                                                         _%__splice4504945050%_
                                                         _%target4253142573%_
                                                         _%tl4253342576%_)
                                                  (letrec ((_%loop4253442579%_
                                                            (lambda (_%hd4253242583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%handler4253842586%_)
                      (if (gx#stx-pair? _%hd4253242583%_)
                          (let ((_%e4253542589%_
                                 (gx#syntax-e _%hd4253242583%_)))
                            (let ((_%lp-tl4253742596%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4253542589%_)))
                                  (_%lp-hd4253642593%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4253542589%_))))
                              (_%loop4253442579%_
                               _%lp-tl4253742596%_
                               (cons _%lp-hd4253642593%_
                                     _%handler4253842586%_))))
                          (let ((_%handler4253942599%_
                                 (reverse _%handler4253842586%_)))
                            (_%__kont4504745048%_ _%handler4253942599%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4253442579%_
                                                     _%target4253142573%_
                                                     '()))))
                                               (_%__match4507145072%_
                                                (lambda (_%e4251542900%_
                                                         _%hd4251642904%_
                                                         _%tl4251742907%_
                                                         _%__splice4504545046%_
                                                         _%target4251842910%_
                                                         _%tl4252042913%_)
                                                  (letrec ((_%loop4252142916%_
                                                            (lambda (_%hd4251942920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%fini4252542923%_)
                      (if (gx#stx-pair? _%hd4251942920%_)
                          (let ((_%e4252242926%_
                                 (gx#syntax-e _%hd4251942920%_)))
                            (let ((_%lp-tl4252442933%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4252242926%_)))
                                  (_%lp-hd4252342930%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4252242926%_))))
                              (_%loop4252142916%_
                               _%lp-tl4252442933%_
                               (cons _%lp-hd4252342930%_ _%fini4252542923%_))))
                          (let ((_%fini4252642936%_
                                 (reverse _%fini4252542923%_)))
                            (_%__kont4504345044%_ _%fini4252642936%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4252142916%_
                                                     _%target4251842910%_
                                                     '())))))
                                          (if (gx#stx-pair?
                                               _%__stx4504045041%_)
                                              (let ((_%e4251542900%_
                                                     (gx#syntax-e
                                                      _%__stx4504045041%_)))
                                                (let ((_%tl4251742907%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4251542900%_)))
                                                      (_%hd4251642904%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4251542900%_))))
                                                  (if (gx#identifier?
                                                       _%hd4251642904%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/more-sugar[1]#_g45153_|
                                                           _%hd4251642904%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4251742907%_)
                                                              (let ((_%__splice4504545046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4251742907%_
                              '0)))
                        (let ((_%tl4252042913%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4504545046%_ '1)))
                              (_%target4251842910%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4504545046%_ '0))))
                          (if (gx#stx-null? _%tl4252042913%_)
                              (_%__match4507145072%_
                               _%e4251542900%_
                               _%hd4251642904%_
                               _%tl4251742907%_
                               _%__splice4504545046%_
                               _%target4251842910%_
                               _%tl4252042913%_)
                              (_%__kont4505145052%_))))
                      (_%__kont4505145052%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/more-sugar[1]#_g45154_|
                       _%hd4251642904%_)
                      (if (gx#stx-pair/null? _%tl4251742907%_)
                          (let ((_%__splice4504945050%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4251742907%_
                                  '0)))
                            (let ((_%tl4253342576%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice4504945050%_ '1)))
                                  (_%target4253142573%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice4504945050%_
                                      '0))))
                              (if (gx#stx-null? _%tl4253342576%_)
                                  (_%__match4508945090%_
                                   _%e4251542900%_
                                   _%hd4251642904%_
                                   _%tl4251742907%_
                                   _%__splice4504945050%_
                                   _%target4253142573%_
                                   _%tl4253342576%_)
                                  (_%__kont4505145052%_))))
                          (_%__kont4505145052%_))
                      (_%__kont4505145052%_)))
              (_%__kont4505145052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont4505145052%_)))))))
                                 (_%__kont4509745098%_
                                  (lambda ()
                                    (cons 'begin (reverse _%body42450%_)))))
                             (let ((_%g4245242476%_
                                    (lambda ()
                                      (if (gx#stx-null? _%__stx4509245093%_)
                                          (_%__kont4509745098%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4245342465%_))))))
                               (if (gx#stx-pair? _%__stx4509245093%_)
                                   (let ((_%e4245742483%_
                                          (gx#syntax-e _%__stx4509245093%_)))
                                     (let ((_%tl4245942490%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4245742483%_)))
                                           (_%hd4245842487%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4245742483%_))))
                                       (_%__kont4509545096%_
                                        _%tl4245942490%_
                                        _%hd4245842487%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4245242476%_))))))))
                     _%e4237542424%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop4237042404%_
                                             _%target4236742398%_
                                             '()))
                                          (_%g4236142381%_ _%g4236242385%_)))))
                                (_%g4236142381%_ _%g4236242385%_))))
                        (_%g4236142381%_ _%g4236242385%_)))))
            (_%g4236042979%_ _%stx42353%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx43791%_)
        (let* ((_%g4379543824%_
                (lambda (_%g4379643820%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4379643820%_)))
               (_%g4379443924%_
                (lambda (_%g4379643828%_)
                  (if (gx#stx-pair? _%g4379643828%_)
                      (let ((_%e4379943831%_ (gx#syntax-e _%g4379643828%_)))
                        (let ((_%hd4380043835%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4379943831%_)))
                              (_%tl4380143838%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4379943831%_))))
                          (if (gx#stx-pair/null? _%tl4380143838%_)
                              (let ((_g45155_
                                     (gx#syntax-split-splice
                                      _%tl4380143838%_
                                      '0)))
                                (begin
                                  (let ((_g45156_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45155_)
                                               (##values-length _g45155_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45156_ 2)))
                                        (error "Context expects 2 values"
                                               _g45156_)))
                                  (let ((_%target4380243841%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45155_ 0)))
                                        (_%tl4380443844%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45155_ 1))))
                                    (if (gx#stx-null? _%tl4380443844%_)
                                        (letrec ((_%loop4380543847%_
                                                  (lambda (_%hd4380343851%_
                                                           _%val4380943854%_
                                                           _%key4381043856%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4380343851%_)
                                                        (let ((_%e4380643859%_
                                                               (gx#syntax-e
                                                                _%hd4380343851%_)))
                                                          (let ((_%lp-hd4380743863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4380643859%_)))
                        (_%lp-tl4380843866%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4380643859%_))))
                    (if (gx#stx-pair? _%lp-hd4380743863%_)
                        (let ((_%e4381343869%_
                               (gx#syntax-e _%lp-hd4380743863%_)))
                          (let ((_%hd4381443873%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4381343869%_)))
                                (_%tl4381543876%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4381343869%_))))
                            (if (gx#stx-pair? _%tl4381543876%_)
                                (let ((_%e4381643879%_
                                       (gx#syntax-e _%tl4381543876%_)))
                                  (let ((_%hd4381743883%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4381643879%_)))
                                        (_%tl4381843886%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4381643879%_))))
                                    (if (gx#stx-null? _%tl4381843886%_)
                                        (_%loop4380543847%_
                                         _%lp-tl4380843866%_
                                         (cons _%hd4381743883%_
                                               _%val4380943854%_)
                                         (cons _%hd4381443873%_
                                               _%key4381043856%_))
                                        (_%g4379543824%_ _%g4379643828%_))))
                                (_%g4379543824%_ _%g4379643828%_))))
                        (_%g4379543824%_ _%g4379643828%_))))
                (let ((_%val4381143889%_ (reverse _%val4380943854%_))
                      (_%key4381243892%_ (reverse _%key4381043856%_)))
                  ((lambda (_%L43895%_ _%L43897%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%L43895%_
                                    _%L43897%_)
                                   (foldr (lambda (_%g4391243916%_
                                                   _%g4391343919%_
                                                   _%g4391443921%_)
                                            (cons (cons _%g4391343919%_
                                                        (cons _%g4391243916%_
                                                              '()))
                                                  _%g4391443921%_))
                                          '()
                                          _%L43895%_
                                          _%L43897%_)))))
                   _%val4381143889%_
                   _%key4381243892%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4380543847%_
                                           _%target4380243841%_
                                           '()
                                           '()))
                                        (_%g4379543824%_ _%g4379643828%_)))))
                              (_%g4379543824%_ _%g4379643828%_))))
                      (_%g4379543824%_ _%g4379643828%_)))))
          (_%g4379443924%_ _%$stx43791%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx43929%_)
        (let* ((_%g4393343962%_
                (lambda (_%g4393443958%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4393443958%_)))
               (_%g4393244062%_
                (lambda (_%g4393443966%_)
                  (if (gx#stx-pair? _%g4393443966%_)
                      (let ((_%e4393743969%_ (gx#syntax-e _%g4393443966%_)))
                        (let ((_%hd4393843973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4393743969%_)))
                              (_%tl4393943976%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4393743969%_))))
                          (if (gx#stx-pair/null? _%tl4393943976%_)
                              (let ((_g45157_
                                     (gx#syntax-split-splice
                                      _%tl4393943976%_
                                      '0)))
                                (begin
                                  (let ((_g45158_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45157_)
                                               (##values-length _g45157_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45158_ 2)))
                                        (error "Context expects 2 values"
                                               _g45158_)))
                                  (let ((_%target4394043979%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45157_ 0)))
                                        (_%tl4394243982%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45157_ 1))))
                                    (if (gx#stx-null? _%tl4394243982%_)
                                        (letrec ((_%loop4394343985%_
                                                  (lambda (_%hd4394143989%_
                                                           _%val4394743992%_
                                                           _%key4394843994%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4394143989%_)
                                                        (let ((_%e4394443997%_
                                                               (gx#syntax-e
                                                                _%hd4394143989%_)))
                                                          (let ((_%lp-hd4394544001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4394443997%_)))
                        (_%lp-tl4394644004%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4394443997%_))))
                    (if (gx#stx-pair? _%lp-hd4394544001%_)
                        (let ((_%e4395144007%_
                               (gx#syntax-e _%lp-hd4394544001%_)))
                          (let ((_%hd4395244011%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4395144007%_)))
                                (_%tl4395344014%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4395144007%_))))
                            (if (gx#stx-pair? _%tl4395344014%_)
                                (let ((_%e4395444017%_
                                       (gx#syntax-e _%tl4395344014%_)))
                                  (let ((_%hd4395544021%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4395444017%_)))
                                        (_%tl4395644024%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4395444017%_))))
                                    (if (gx#stx-null? _%tl4395644024%_)
                                        (_%loop4394343985%_
                                         _%lp-tl4394644004%_
                                         (cons _%hd4395544021%_
                                               _%val4394743992%_)
                                         (cons _%hd4395244011%_
                                               _%key4394843994%_))
                                        (_%g4393343962%_ _%g4393443966%_))))
                                (_%g4393343962%_ _%g4393443966%_))))
                        (_%g4393343962%_ _%g4393443966%_))))
                (let ((_%val4394944027%_ (reverse _%val4394743992%_))
                      (_%key4395044030%_ (reverse _%key4394843994%_)))
                  ((lambda (_%L44033%_ _%L44035%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%L44033%_
                                    _%L44035%_)
                                   (foldr (lambda (_%g4405044054%_
                                                   _%g4405144057%_
                                                   _%g4405244059%_)
                                            (cons (cons _%g4405144057%_
                                                        (cons _%g4405044054%_
                                                              '()))
                                                  _%g4405244059%_))
                                          '()
                                          _%L44033%_
                                          _%L44035%_)))))
                   _%val4394944027%_
                   _%key4395044030%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4394343985%_
                                           _%target4394043979%_
                                           '()
                                           '()))
                                        (_%g4393343962%_ _%g4393443966%_)))))
                              (_%g4393343962%_ _%g4393443966%_))))
                      (_%g4393343962%_ _%g4393443966%_)))))
          (_%g4393244062%_ _%$stx43929%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx44067%_)
        (let* ((_%g4407144100%_
                (lambda (_%g4407244096%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4407244096%_)))
               (_%g4407044200%_
                (lambda (_%g4407244104%_)
                  (if (gx#stx-pair? _%g4407244104%_)
                      (let ((_%e4407544107%_ (gx#syntax-e _%g4407244104%_)))
                        (let ((_%hd4407644111%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4407544107%_)))
                              (_%tl4407744114%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4407544107%_))))
                          (if (gx#stx-pair/null? _%tl4407744114%_)
                              (let ((_g45159_
                                     (gx#syntax-split-splice
                                      _%tl4407744114%_
                                      '0)))
                                (begin
                                  (let ((_g45160_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45159_)
                                               (##values-length _g45159_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45160_ 2)))
                                        (error "Context expects 2 values"
                                               _g45160_)))
                                  (let ((_%target4407844117%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45159_ 0)))
                                        (_%tl4408044120%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45159_ 1))))
                                    (if (gx#stx-null? _%tl4408044120%_)
                                        (letrec ((_%loop4408144123%_
                                                  (lambda (_%hd4407944127%_
                                                           _%val4408544130%_
                                                           _%key4408644132%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4407944127%_)
                                                        (let ((_%e4408244135%_
                                                               (gx#syntax-e
                                                                _%hd4407944127%_)))
                                                          (let ((_%lp-hd4408344139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4408244135%_)))
                        (_%lp-tl4408444142%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4408244135%_))))
                    (if (gx#stx-pair? _%lp-hd4408344139%_)
                        (let ((_%e4408944145%_
                               (gx#syntax-e _%lp-hd4408344139%_)))
                          (let ((_%hd4409044149%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4408944145%_)))
                                (_%tl4409144152%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4408944145%_))))
                            (if (gx#stx-pair? _%tl4409144152%_)
                                (let ((_%e4409244155%_
                                       (gx#syntax-e _%tl4409144152%_)))
                                  (let ((_%hd4409344159%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4409244155%_)))
                                        (_%tl4409444162%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4409244155%_))))
                                    (if (gx#stx-null? _%tl4409444162%_)
                                        (_%loop4408144123%_
                                         _%lp-tl4408444142%_
                                         (cons _%hd4409344159%_
                                               _%val4408544130%_)
                                         (cons _%hd4409044149%_
                                               _%key4408644132%_))
                                        (_%g4407144100%_ _%g4407244104%_))))
                                (_%g4407144100%_ _%g4407244104%_))))
                        (_%g4407144100%_ _%g4407244104%_))))
                (let ((_%val4408744165%_ (reverse _%val4408544130%_))
                      (_%key4408844168%_ (reverse _%key4408644132%_)))
                  ((lambda (_%L44171%_ _%L44173%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%L44171%_
                                    _%L44173%_)
                                   (foldr (lambda (_%g4418844192%_
                                                   _%g4418944195%_
                                                   _%g4419044197%_)
                                            (cons (cons _%g4418944195%_
                                                        (cons _%g4418844192%_
                                                              '()))
                                                  _%g4419044197%_))
                                          '()
                                          _%L44171%_
                                          _%L44173%_)))))
                   _%val4408744165%_
                   _%key4408844168%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4408144123%_
                                           _%target4407844117%_
                                           '()
                                           '()))
                                        (_%g4407144100%_ _%g4407244104%_)))))
                              (_%g4407144100%_ _%g4407244104%_))))
                      (_%g4407144100%_ _%g4407244104%_)))))
          (_%g4407044200%_ _%$stx44067%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx44205%_)
        (let* ((_%g4420844232%_
                (lambda (_%g4420944228%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4420944228%_)))
               (_%g4420744479%_
                (lambda (_%g4420944236%_)
                  (if (gx#stx-pair? _%g4420944236%_)
                      (let ((_%e4421244239%_ (gx#syntax-e _%g4420944236%_)))
                        (let ((_%hd4421344243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4421244239%_)))
                              (_%tl4421444246%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4421244239%_))))
                          (if (gx#stx-pair? _%tl4421444246%_)
                              (let ((_%e4421544249%_
                                     (gx#syntax-e _%tl4421444246%_)))
                                (let ((_%hd4421644253%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4421544249%_)))
                                      (_%tl4421744256%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4421544249%_))))
                                  (if (gx#stx-pair/null? _%tl4421744256%_)
                                      (let ((_g45161_
                                             (gx#syntax-split-splice
                                              _%tl4421744256%_
                                              '0)))
                                        (begin
                                          (let ((_g45162_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45161_)
                                                       (##values-length
                                                        _g45161_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45162_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45162_)))
                                          (let ((_%target4421844259%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45161_ 0)))
                                                (_%tl4422044262%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45161_ 1))))
                                            (if (gx#stx-null? _%tl4422044262%_)
                                                (letrec ((_%loop4422144265%_
                                                          (lambda (_%hd4421944269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%entry4422544272%_)
                    (if (gx#stx-pair? _%hd4421944269%_)
                        (let ((_%e4422244275%_ (gx#syntax-e _%hd4421944269%_)))
                          (let ((_%lp-hd4422344279%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4422244275%_)))
                                (_%lp-tl4422444282%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4422244275%_))))
                            (_%loop4422144265%_
                             _%lp-tl4422444282%_
                             (cons _%lp-hd4422344279%_ _%entry4422544272%_))))
                        (let ((_%entry4422644285%_
                               (reverse _%entry4422544272%_)))
                          ((lambda (_%L44289%_ _%L44291%_)
                             (let* ((_%g4430944317%_
                                     (lambda (_%g4431044313%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g4431044313%_)))
                                    (_%g4430844467%_
                                     (lambda (_%g4431044321%_)
                                       ((lambda (_%L44324%_)
                                          (let* ((_%g4433644362%_
                                                  (lambda (_%g4433744358%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g4433744358%_)))
                                                 (_%g4433544455%_
                                                  (lambda (_%g4433744366%_)
                                                    (if (gx#stx-pair/null?
                                                         _%g4433744366%_)
                                                        (let ((_g45163_
                                                               (gx#syntax-split-splice
                                                                _%g4433744366%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g45164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g45163_)
                                 (##values-length _g45163_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g45164_ 2)))
                          (error "Context expects 2 values" _g45164_)))
                    (let ((_%target4434044369%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45163_ 0)))
                          (_%tl4434244372%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45163_ 1))))
                      (if (gx#stx-null? _%tl4434244372%_)
                          (letrec ((_%loop4434344375%_
                                    (lambda (_%hd4434144379%_
                                             _%val4434744382%_
                                             _%key4434844384%_)
                                      (if (gx#stx-pair? _%hd4434144379%_)
                                          (let ((_%e4434444387%_
                                                 (gx#syntax-e
                                                  _%hd4434144379%_)))
                                            (let ((_%lp-hd4434544391%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4434444387%_)))
                                                  (_%lp-tl4434644394%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4434444387%_))))
                                              (if (gx#stx-pair?
                                                   _%lp-hd4434544391%_)
                                                  (let ((_%e4435144397%_
                                                         (gx#syntax-e
                                                          _%lp-hd4434544391%_)))
                                                    (let ((_%hd4435244401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4435144397%_)))
                                                          (_%tl4435344404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4435144397%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4435344404%_)
                                                          (let ((_%e4435444407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4435344404%_)))
                    (let ((_%hd4435544411%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4435444407%_)))
                          (_%tl4435644414%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4435444407%_))))
                      (if (gx#stx-null? _%tl4435644414%_)
                          (_%loop4434344375%_
                           _%lp-tl4434644394%_
                           (cons _%hd4435544411%_ _%val4434744382%_)
                           (cons _%hd4435244401%_ _%key4434844384%_))
                          (_%g4433644362%_ _%g4433744366%_))))
                  (_%g4433644362%_ _%g4433744366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4433644362%_
                                                   _%g4433744366%_))))
                                          (let ((_%val4434944417%_
                                                 (reverse _%val4434744382%_))
                                                (_%key4435044420%_
                                                 (reverse _%key4434844384%_)))
                                            ((lambda (_%L44423%_ _%L44425%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ht)
                         (cons (cons _%L44291%_
                                     (cons 'size: (cons _%L44324%_ '())))
                               '()))
                   (begin
                     (gx#syntax-check-splice-targets _%L44423%_ _%L44425%_)
                     (foldr (lambda (_%g4444344447%_
                                     _%g4444444450%_
                                     _%g4444544452%_)
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'ht)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            (cons _%g4444444450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g4444344447%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g4444544452%_))
                            (cons (gx#datum->syntax '#f 'ht) '())
                            _%L44423%_
                            _%L44425%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%val4434944417%_
                                             _%key4435044420%_))))))
                            (_%loop4434344375%_ _%target4434044369%_ '() '()))
                          (_%g4433644362%_ _%g4433744366%_)))))
                (_%g4433644362%_ _%g4433744366%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4433544455%_
                                             (foldr (lambda (_%g4445844461%_
                                                             _%g4445944464%_)
                                                      (cons _%g4445844461%_
                                                            _%g4445944464%_))
                                                    '()
                                                    _%L44289%_))))
                                        _%g4431044321%_))))
                               (_%g4430844467%_
                                (gx#stx-length
                                 (foldr (lambda (_%g4447044473%_
                                                 _%g4447144476%_)
                                          (cons _%g4447044473%_
                                                _%g4447144476%_))
                                        '()
                                        _%L44289%_)))))
                           _%entry4422644285%_
                           _%hd4421644253%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4422144265%_
                                                   _%target4421844259%_
                                                   '()))
                                                (_%g4420844232%_
                                                 _%g4420944236%_)))))
                                      (_%g4420844232%_ _%g4420944236%_))))
                              (_%g4420844232%_ _%g4420944236%_))))
                      (_%g4420844232%_ _%g4420944236%_)))))
          (_%g4420744479%_ _%stx44205%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx44485%_)
        (let* ((_%g4448844502%_
                (lambda (_%g4448944498%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4448944498%_)))
               (_%g4448744574%_
                (lambda (_%g4448944506%_)
                  (if (gx#stx-pair? _%g4448944506%_)
                      (let ((_%e4449144509%_ (gx#syntax-e _%g4448944506%_)))
                        (let ((_%hd4449244513%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4449144509%_)))
                              (_%tl4449344516%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4449144509%_))))
                          (if (gx#stx-pair? _%tl4449344516%_)
                              (let ((_%e4449444519%_
                                     (gx#syntax-e _%tl4449344516%_)))
                                (let ((_%hd4449544523%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4449444519%_)))
                                      (_%tl4449644526%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4449444519%_))))
                                  (if (gx#stx-null? _%tl4449644526%_)
                                      ((lambda (_%L44529%_)
                                         (if (gx#stx-string? _%L44529%_)
                                             (let* ((_%g4454344551%_
                                                     (lambda (_%g4454444547%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4454444547%_)))
                                                    (_%g4454244570%_
                                                     (lambda (_%g4454444555%_)
                                                       ((lambda (_%L44558%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L44558%_ '())))
                _%g4454444555%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4454244570%_
                                                (string->bytes
                                                 (gx#stx-e _%L44529%_))))
                                             (_%g4448844502%_
                                              _%g4448944506%_)))
                                       _%hd4449544523%_)
                                      (_%g4448844502%_ _%g4448944506%_))))
                              (_%g4448844502%_ _%g4448944506%_))))
                      (_%g4448844502%_ _%g4448944506%_)))))
          (_%g4448744574%_ _%stx44485%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx44578%_)
        (let* ((_%g4458144595%_
                (lambda (_%g4458244591%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4458244591%_)))
               (_%g4458044636%_
                (lambda (_%g4458244599%_)
                  (if (gx#stx-pair? _%g4458244599%_)
                      (let ((_%e4458444602%_ (gx#syntax-e _%g4458244599%_)))
                        (let ((_%hd4458544606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4458444602%_)))
                              (_%tl4458644609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4458444602%_))))
                          (if (gx#stx-pair? _%tl4458644609%_)
                              (let ((_%e4458744612%_
                                     (gx#syntax-e _%tl4458644609%_)))
                                (let ((_%hd4458844616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4458744612%_)))
                                      (_%tl4458944619%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4458744612%_))))
                                  (if (gx#stx-null? _%tl4458944619%_)
                                      ((lambda (_%L44622%_)
                                         (if (gx#current-expander-compiling?)
                                             (gx#eval-syntax _%L44622%_)
                                             '#!void)
                                         (cons (gx#datum->syntax '#f 'void)
                                               '()))
                                       _%hd4458844616%_)
                                      (_%g4458144595%_ _%g4458244599%_))))
                              (_%g4458144595%_ _%g4458244599%_))))
                      (_%g4458144595%_ _%g4458244599%_)))))
          (_%g4458044636%_ _%stx44578%_))))))
