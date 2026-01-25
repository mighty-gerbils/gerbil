(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g44809_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g44812_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g44813_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g44814_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g44815_|
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
      (lambda _%$args40142%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args40142%_)))
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
      (lambda _%$args40138%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args40138%_)))
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
      (lambda (_%stx40135%_)
        (if (gx#identifier? _%stx40135%_)
            (let ((__tmp44772 (gx#syntax-local-value _%stx40135%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp44772))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx40132%_)
        (if (gx#identifier? _%stx40132%_)
            (let ((__tmp44773 (gx#syntax-local-value _%stx40132%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp44773))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx39759%_)
        (let* ((_%__stx4430144302%_ _%stx39759%_)
               (_%g3976539828%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4430144302%_))))
          (let ((_%__kont4430444305%_
                 (lambda (_%g3976740109%_ _%g3976840111%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g3976840111%_)
                    _%stx39759%_)))
                (_%__kont4430644307%_
                 (lambda (_%g3978139998%_ _%g3978240000%_ _%g3978340001%_)
                   (let* ((_%g4002340031%_
                           (lambda (_%g4002440027%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4002440027%_)))
                          (_%g4002240058%_
                           (lambda (_%g4002440035%_)
                             ((lambda (_%g4002540038%_)
                                (cons _%g4002540038%_
                                      (foldr (lambda (_%g4004940052%_
                                                      _%g4005040055%_)
                                               (cons _%g4004940052%_
                                                     _%g4005040055%_))
                                             (cons _%g3978139998%_ '())
                                             _%g3978240000%_)))
                              _%g4002440035%_))))
                     (_%g4002240058%_
                      (gx#stx-identifier
                       _%g3978340001%_
                       _%g3978340001%_
                       '"-set!")))))
                (_%__kont4431044311%_
                 (lambda (_%g3980539910%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g3980539910%_)
                    _%stx39759%_)))
                (_%__kont4431244313%_
                 (lambda (_%g3981239865%_ _%g3981339867%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%g3981339867%_ (cons _%g3981239865%_ '()))))))
            (let* ((_%__match4440044401%_
                    (lambda (_%e3981439835%_
                             _%hd3981539839%_
                             _%tl3981639842%_
                             _%e3981739845%_
                             _%hd3981839849%_
                             _%tl3981939852%_
                             _%e3982039855%_
                             _%hd3982139859%_
                             _%tl3982239862%_)
                      (let ((_%g3981239865%_ _%hd3982139859%_)
                            (_%g3981339867%_ _%hd3981839849%_))
                        (if (gx#identifier? _%g3981339867%_)
                            (_%__kont4431244313%_
                             _%g3981239865%_
                             _%g3981339867%_)
                            (let () (declare (not safe)) (_%g3976539828%_))))))
                   (_%__match4438044381%_
                    (lambda (_%e3980639890%_
                             _%hd3980739894%_
                             _%tl3980839897%_
                             _%e3980939900%_
                             _%hd3981039904%_
                             _%tl3981139907%_)
                      (let ((_%g3980539910%_ _%hd3981039904%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%g3980539910%_)
                            (_%__kont4431044311%_ _%g3980539910%_)
                            (if (gx#stx-pair? _%tl3981139907%_)
                                (let ((_%e3982039855%_
                                       (gx#syntax-e _%tl3981139907%_)))
                                  (let ((_%tl3982239862%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3982039855%_)))
                                        (_%hd3982139859%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3982039855%_))))
                                    (if (gx#stx-null? _%tl3982239862%_)
                                        (_%__match4440044401%_
                                         _%e3980639890%_
                                         _%hd3980739894%_
                                         _%tl3980839897%_
                                         _%e3980939900%_
                                         _%hd3981039904%_
                                         _%tl3981139907%_
                                         _%e3982039855%_
                                         _%hd3982139859%_
                                         _%tl3982239862%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3976539828%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3976539828%_)))))))
                   (_%__match4436844369%_
                    (lambda (_%e3978439930%_
                             _%hd3978539934%_
                             _%tl3978639937%_
                             _%e3978739940%_
                             _%hd3978839944%_
                             _%tl3978939947%_
                             _%e3979039950%_
                             _%hd3979139954%_
                             _%tl3979239957%_
                             _%__splice4430844309%_
                             _%target3979339960%_
                             _%tl3979539963%_)
                      (letrec ((_%loop3979639966%_
                                (lambda (_%hd3979439970%_ _%arg3980039973%_)
                                  (if (gx#stx-pair? _%hd3979439970%_)
                                      (let ((_%e3979739975%_
                                             (gx#syntax-e _%hd3979439970%_)))
                                        (let ((_%lp-tl3979939982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3979739975%_)))
                                              (_%lp-hd3979839979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3979739975%_))))
                                          (_%loop3979639966%_
                                           _%lp-tl3979939982%_
                                           (cons _%lp-hd3979839979%_
                                                 _%arg3980039973%_))))
                                      (let ((_%arg3980139985%_
                                             (reverse _%arg3980039973%_)))
                                        (if (gx#stx-pair? _%tl3978939947%_)
                                            (let ((_%e3980239988%_
                                                   (gx#syntax-e
                                                    _%tl3978939947%_)))
                                              (let ((_%tl3980439995%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3980239988%_)))
                                                    (_%hd3980339992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3980239988%_))))
                                                (if (gx#stx-null?
                                                     _%tl3980439995%_)
                                                    (let ((_%g3978139998%_
                                                           _%hd3980339992%_)
                                                          (_%g3978240000%_
                                                           _%arg3980139985%_)
                                                          (_%g3978340001%_
                                                           _%hd3979139954%_))
                                                      (if (gx#identifier?
                                                           _%g3978340001%_)
                                                          (_%__kont4430644307%_
                                                           _%g3978139998%_
                                                           _%g3978240000%_
                                                           _%g3978340001%_)
                                                          (_%__match4438044381%_
                                                           _%e3978439930%_
                                                           _%hd3978539934%_
                                                           _%tl3978639937%_
                                                           _%e3978739940%_
                                                           _%hd3978839944%_
                                                           _%tl3978939947%_)))
                                                    (_%__match4438044381%_
                                                     _%e3978439930%_
                                                     _%hd3978539934%_
                                                     _%tl3978639937%_
                                                     _%e3978739940%_
                                                     _%hd3978839944%_
                                                     _%tl3978939947%_))))
                                            (_%__match4438044381%_
                                             _%e3978439930%_
                                             _%hd3978539934%_
                                             _%tl3978639937%_
                                             _%e3978739940%_
                                             _%hd3978839944%_
                                             _%tl3978939947%_)))))))
                        (_%loop3979639966%_ _%target3979339960%_ '())))))
              (if (gx#stx-pair? _%__stx4430144302%_)
                  (let ((_%e3976940069%_ (gx#syntax-e _%__stx4430144302%_)))
                    (let ((_%tl3977140076%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3976940069%_)))
                          (_%hd3977040073%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3976940069%_))))
                      (if (gx#stx-pair? _%tl3977140076%_)
                          (let ((_%e3977240079%_
                                 (gx#syntax-e _%tl3977140076%_)))
                            (let ((_%tl3977440086%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3977240079%_)))
                                  (_%hd3977340083%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3977240079%_))))
                              (if (gx#stx-pair? _%hd3977340083%_)
                                  (let ((_%e3977540089%_
                                         (gx#syntax-e _%hd3977340083%_)))
                                    (let ((_%tl3977740096%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3977540089%_)))
                                          (_%hd3977640093%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3977540089%_))))
                                      (if (gx#stx-pair? _%tl3977440086%_)
                                          (let ((_%e3977840099%_
                                                 (gx#syntax-e
                                                  _%tl3977440086%_)))
                                            (let ((_%tl3978040106%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3977840099%_)))
                                                  (_%hd3977940103%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3977840099%_))))
                                              (if (gx#stx-null?
                                                   _%tl3978040106%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%g3976740109%_
                                                             _%hd3977940103%_)
                                                            (_%g3976840111%_
                                                             _%hd3977640093%_))
                                                        (_%__kont4430444305%_
                                                         _%g3976740109%_
                                                         _%g3976840111%_))
                                                      (if (gx#stx-pair/null?
                                                           _%tl3977740096%_)
                                                          (let ((_%__splice4430844309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3977740096%_ '0)))
                    (let ((_%tl3979539963%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4430844309%_ '1)))
                          (_%target3979339960%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4430844309%_ '0))))
                      (if (gx#stx-null? _%tl3979539963%_)
                          (_%__match4436844369%_
                           _%e3976940069%_
                           _%hd3977040073%_
                           _%tl3977140076%_
                           _%e3977240079%_
                           _%hd3977340083%_
                           _%tl3977440086%_
                           _%e3977540089%_
                           _%hd3977640093%_
                           _%tl3977740096%_
                           _%__splice4430844309%_
                           _%target3979339960%_
                           _%tl3979539963%_)
                          (_%__match4438044381%_
                           _%e3976940069%_
                           _%hd3977040073%_
                           _%tl3977140076%_
                           _%e3977240079%_
                           _%hd3977340083%_
                           _%tl3977440086%_))))
                  (_%__match4438044381%_
                   _%e3976940069%_
                   _%hd3977040073%_
                   _%tl3977140076%_
                   _%e3977240079%_
                   _%hd3977340083%_
                   _%tl3977440086%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl3977740096%_)
                                                      (let ((_%__splice4430844309%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3977740096%_
                                                              '0)))
                                                        (let ((_%tl3979539963%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4430844309%_ '1)))
                      (_%target3979339960%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4430844309%_ '0))))
                  (if (gx#stx-null? _%tl3979539963%_)
                      (_%__match4436844369%_
                       _%e3976940069%_
                       _%hd3977040073%_
                       _%tl3977140076%_
                       _%e3977240079%_
                       _%hd3977340083%_
                       _%tl3977440086%_
                       _%e3977540089%_
                       _%hd3977640093%_
                       _%tl3977740096%_
                       _%__splice4430844309%_
                       _%target3979339960%_
                       _%tl3979539963%_)
                      (_%__match4438044381%_
                       _%e3976940069%_
                       _%hd3977040073%_
                       _%tl3977140076%_
                       _%e3977240079%_
                       _%hd3977340083%_
                       _%tl3977440086%_))))
              (_%__match4438044381%_
               _%e3976940069%_
               _%hd3977040073%_
               _%tl3977140076%_
               _%e3977240079%_
               _%hd3977340083%_
               _%tl3977440086%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl3977740096%_)
                                              (let ((_%__splice4430844309%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl3977740096%_
                                                      '0)))
                                                (let ((_%tl3979539963%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4430844309%_
                                                          '1)))
                                                      (_%target3979339960%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4430844309%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl3979539963%_)
                                                      (_%__match4436844369%_
                                                       _%e3976940069%_
                                                       _%hd3977040073%_
                                                       _%tl3977140076%_
                                                       _%e3977240079%_
                                                       _%hd3977340083%_
                                                       _%tl3977440086%_
                                                       _%e3977540089%_
                                                       _%hd3977640093%_
                                                       _%tl3977740096%_
                                                       _%__splice4430844309%_
                                                       _%target3979339960%_
                                                       _%tl3979539963%_)
                                                      (_%__match4438044381%_
                                                       _%e3976940069%_
                                                       _%hd3977040073%_
                                                       _%tl3977140076%_
                                                       _%e3977240079%_
                                                       _%hd3977340083%_
                                                       _%tl3977440086%_))))
                                              (_%__match4438044381%_
                                               _%e3976940069%_
                                               _%hd3977040073%_
                                               _%tl3977140076%_
                                               _%e3977240079%_
                                               _%hd3977340083%_
                                               _%tl3977440086%_)))))
                                  (_%__match4438044381%_
                                   _%e3976940069%_
                                   _%hd3977040073%_
                                   _%tl3977140076%_
                                   _%e3977240079%_
                                   _%hd3977340083%_
                                   _%tl3977440086%_))))
                          (let () (declare (not safe)) (_%g3976539828%_)))))
                  (let () (declare (not safe)) (_%g3976539828%_))))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx40147%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40147%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx40150%_)
        (let* ((_%g4015340177%_
                (lambda (_%g4015440173%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4015440173%_)))
               (_%g4015240351%_
                (lambda (_%g4015440181%_)
                  (if (gx#stx-pair? _%g4015440181%_)
                      (let ((_%e4015740184%_ (gx#syntax-e _%g4015440181%_)))
                        (let ((_%hd4015840188%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4015740184%_)))
                              (_%tl4015940191%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4015740184%_))))
                          (if (gx#stx-pair/null? _%tl4015940191%_)
                              (if (let ((__tmp44774
                                         (gx#stx-length _%tl4015940191%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp44774 '1))
                                  (let ((_g44775_
                                         (gx#syntax-split-splice
                                          _%tl4015940191%_
                                          '1)))
                                    (begin
                                      (let ((_g44776_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g44775_)
                                                   (##values-length _g44775_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g44776_ 2)))
                                            (error "Context expects 2 values"
                                                   _g44776_)))
                                      (let ((_%target4016040194%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g44775_ 0)))
                                            (_%tl4016240197%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g44775_ 1))))
                                        (if (gx#stx-pair? _%tl4016240197%_)
                                            (let ((_%e4016940200%_
                                                   (gx#syntax-e
                                                    _%tl4016240197%_)))
                                              (let ((_%hd4017040204%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4016940200%_)))
                                                    (_%tl4017140207%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4016940200%_))))
                                                (if (gx#stx-null?
                                                     _%tl4017140207%_)
                                                    (letrec ((_%loop4016340210%_
                                                              (lambda (_%hd4016140214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tgt4016740217%_)
                        (if (gx#stx-pair? _%hd4016140214%_)
                            (let ((_%e4016440219%_
                                   (gx#syntax-e _%hd4016140214%_)))
                              (let ((_%lp-hd4016540223%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4016440219%_)))
                                    (_%lp-tl4016640226%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4016440219%_))))
                                (_%loop4016340210%_
                                 _%lp-tl4016640226%_
                                 (cons _%lp-hd4016540223%_
                                       _%tgt4016740217%_))))
                            (let ((_%tgt4016840229%_
                                   (reverse _%tgt4016740217%_)))
                              ((lambda (_%g4015540232%_ _%g4015640234%_)
                                 (let* ((_%g4025240269%_
                                         (lambda (_%g4025340265%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g4025340265%_)))
                                        (_%g4025140339%_
                                         (lambda (_%g4025340273%_)
                                           (if (gx#stx-pair/null?
                                                _%g4025340273%_)
                                               (let ((_g44777_
                                                      (gx#syntax-split-splice
                                                       _%g4025340273%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g44778_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g44777_)
                        (##values-length _g44777_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g44778_ 2)))
                 (error "Context expects 2 values" _g44778_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target4025540276%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g44777_
                                                             0)))
                                                         (_%tl4025740279%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g44777_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl4025740279%_)
                                                         (letrec ((_%loop4025840282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd4025640286%_ _%$e4026240289%_)
                             (if (gx#stx-pair? _%hd4025640286%_)
                                 (let ((_%e4025940291%_
                                        (gx#syntax-e _%hd4025640286%_)))
                                   (let ((_%lp-hd4026040295%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4025940291%_)))
                                         (_%lp-tl4026140298%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4025940291%_))))
                                     (_%loop4025840282%_
                                      _%lp-tl4026140298%_
                                      (cons _%lp-hd4026040295%_
                                            _%$e4026240289%_))))
                                 (let ((_%$e4026340301%_
                                        (reverse _%$e4026240289%_)))
                                   ((lambda (_%g4025440304%_)
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g4031940325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4032040328%_)
                               (cons _%g4031940325%_ _%g4032040328%_))
                             '()
                             _%g4025440304%_)
                      (cons _%g4015540232%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g4025440304%_
                                                     _%g4015640234%_)
                                                    (foldr (lambda (_%g4032140331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4032240334%_
                            _%g4032340336%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g4032240334%_
                                       (cons _%g4032140331%_ '())))
                           _%g4032340336%_))
                   '()
                   _%g4025440304%_
                   _%g4015640234%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$e4026340301%_))))))
                   (_%loop4025840282%_ _%target4025540276%_ '()))
                 (_%g4025240269%_ _%g4025340273%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4025240269%_
                                                _%g4025340273%_)))))
                                   (_%g4025140339%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g4034240345%_
                                                     _%g4034340348%_)
                                              (cons _%g4034240345%_
                                                    _%g4034340348%_))
                                            '()
                                            _%g4015640234%_)))))
                               _%hd4017040204%_
                               _%tgt4016840229%_))))))
              (_%loop4016340210%_ _%target4016040194%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4015340177%_
                                                     _%g4015440181%_))))
                                            (_%g4015340177%_
                                             _%g4015440181%_)))))
                                  (_%g4015340177%_ _%g4015440181%_))
                              (_%g4015340177%_ _%g4015440181%_))))
                      (_%g4015340177%_ _%g4015440181%_)))))
          (_%g4015240351%_ _%stx40150%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx40357%_)
        (let* ((_%__stx4440344404%_ _%$stx40357%_)
               (_%g4036340451%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4440344404%_))))
          (let ((_%__kont4440644407%_
                 (lambda (_%g4036540791%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4080740810%_ _%g4080840813%_)
                                        (cons _%g4080740810%_ _%g4080840813%_))
                                      '()
                                      _%g4036540791%_)))))
                (_%__kont4441044411%_
                 (lambda (_%g4038140701%_ _%g4038240703%_ _%g4038340704%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%g4072740730%_
                                                           _%g4072840733%_)
                                                    (cons _%g4072740730%_
                                                          _%g4072840733%_))
                                                  '()
                                                  _%g4038140701%_)))
                               (cons _%g4038340704%_
                                     (cons _%g4038240703%_ '()))))))
                (_%__kont4441444415%_
                 (lambda (_%g4040840564%_
                          _%g4040940566%_
                          _%g4041040567%_
                          _%g4041140568%_
                          _%g4041240569%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%g4041240569%_
                                                       (cons (foldr (lambda (_%g4059940604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4060040607%_)
                              (cons _%g4059940604%_ _%g4060040607%_))
                            '()
                            _%g4040940566%_)
                     (foldr (lambda (_%g4060140610%_ _%g4060240613%_)
                              (cons _%g4060140610%_ _%g4060240613%_))
                            '()
                            _%g4040840564%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g4041140568%_
                                     (cons _%g4041040567%_ '())))))))
            (let* ((_%__match4452444525%_
                    (lambda (_%e4041340458%_
                             _%hd4041440462%_
                             _%tl4041540465%_
                             _%e4041640468%_
                             _%hd4041740472%_
                             _%tl4041840475%_
                             _%e4041940478%_
                             _%hd4042040482%_
                             _%tl4042140485%_
                             _%e4042240488%_
                             _%hd4042340492%_
                             _%tl4042440495%_
                             _%e4042540498%_
                             _%hd4042640502%_
                             _%tl4042740505%_
                             _%__splice4441644417%_
                             _%target4042840508%_
                             _%tl4043040511%_)
                      (letrec ((_%loop4043140514%_
                                (lambda (_%hd4042940518%_ _%rest4043540521%_)
                                  (if (gx#stx-pair? _%hd4042940518%_)
                                      (let ((_%e4043240523%_
                                             (gx#syntax-e _%hd4042940518%_)))
                                        (let ((_%lp-tl4043440530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4043240523%_)))
                                              (_%lp-hd4043340527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4043240523%_))))
                                          (_%loop4043140514%_
                                           _%lp-tl4043440530%_
                                           (cons _%lp-hd4043340527%_
                                                 _%rest4043540521%_))))
                                      (let ((_%rest4043640533%_
                                             (reverse _%rest4043540521%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl4041840475%_)
                                            (let ((_%__splice4441844419%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4041840475%_
                                                    '0)))
                                              (let ((_%tl4043940539%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4441844419%_
                                                        '1)))
                                                    (_%target4043740536%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4441844419%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4043940539%_)
                                                    (letrec ((_%loop4044040542%_
                                                              (lambda (_%hd4043840546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body4044440549%_)
                        (if (gx#stx-pair? _%hd4043840546%_)
                            (let ((_%e4044140551%_
                                   (gx#syntax-e _%hd4043840546%_)))
                              (let ((_%lp-tl4044340558%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4044140551%_)))
                                    (_%lp-hd4044240555%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4044140551%_))))
                                (_%loop4044040542%_
                                 _%lp-tl4044340558%_
                                 (cons _%lp-hd4044240555%_
                                       _%body4044440549%_))))
                            (let ((_%body4044540561%_
                                   (reverse _%body4044440549%_)))
                              (_%__kont4441444415%_
                               _%body4044540561%_
                               _%rest4043640533%_
                               _%hd4042640502%_
                               _%hd4042340492%_
                               _%hd4041440462%_))))))
              (_%loop4044040542%_ _%target4043740536%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4036340451%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4036340451%_))))))))
                        (_%loop4043140514%_ _%target4042840508%_ '()))))
                   (_%__match4448444485%_
                    (lambda (_%e4038440623%_
                             _%hd4038540627%_
                             _%tl4038640630%_
                             _%e4038740633%_
                             _%hd4038840637%_
                             _%tl4038940640%_
                             _%e4039040643%_
                             _%hd4039140647%_
                             _%tl4039240650%_
                             _%e4039340653%_
                             _%hd4039440657%_
                             _%tl4039540660%_
                             _%e4039640663%_
                             _%hd4039740667%_
                             _%tl4039840670%_
                             _%__splice4441244413%_
                             _%target4039940673%_
                             _%tl4040140676%_)
                      (letrec ((_%loop4040240679%_
                                (lambda (_%hd4040040683%_ _%body4040640686%_)
                                  (if (gx#stx-pair? _%hd4040040683%_)
                                      (let ((_%e4040340688%_
                                             (gx#syntax-e _%hd4040040683%_)))
                                        (let ((_%lp-tl4040540695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4040340688%_)))
                                              (_%lp-hd4040440692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4040340688%_))))
                                          (_%loop4040240679%_
                                           _%lp-tl4040540695%_
                                           (cons _%lp-hd4040440692%_
                                                 _%body4040640686%_))))
                                      (let ((_%body4040740698%_
                                             (reverse _%body4040640686%_)))
                                        (_%__kont4441044411%_
                                         _%body4040740698%_
                                         _%hd4039740667%_
                                         _%hd4039440657%_))))))
                        (_%loop4040240679%_ _%target4039940673%_ '()))))
                   (_%__match4444244443%_
                    (lambda (_%e4036640743%_
                             _%hd4036740747%_
                             _%tl4036840750%_
                             _%e4036940753%_
                             _%hd4037040757%_
                             _%tl4037140760%_
                             _%__splice4440844409%_
                             _%target4037240763%_
                             _%tl4037440766%_)
                      (letrec ((_%loop4037540769%_
                                (lambda (_%hd4037340773%_ _%body4037940776%_)
                                  (if (gx#stx-pair? _%hd4037340773%_)
                                      (let ((_%e4037640778%_
                                             (gx#syntax-e _%hd4037340773%_)))
                                        (let ((_%lp-tl4037840785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4037640778%_)))
                                              (_%lp-hd4037740782%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4037640778%_))))
                                          (_%loop4037540769%_
                                           _%lp-tl4037840785%_
                                           (cons _%lp-hd4037740782%_
                                                 _%body4037940776%_))))
                                      (let ((_%body4038040788%_
                                             (reverse _%body4037940776%_)))
                                        (_%__kont4440644407%_
                                         _%body4038040788%_))))))
                        (_%loop4037540769%_ _%target4037240763%_ '())))))
              (if (gx#stx-pair? _%__stx4440344404%_)
                  (let ((_%e4036640743%_ (gx#syntax-e _%__stx4440344404%_)))
                    (let ((_%tl4036840750%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4036640743%_)))
                          (_%hd4036740747%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4036640743%_))))
                      (if (gx#stx-pair? _%tl4036840750%_)
                          (let ((_%e4036940753%_
                                 (gx#syntax-e _%tl4036840750%_)))
                            (let ((_%tl4037140760%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4036940753%_)))
                                  (_%hd4037040757%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4036940753%_))))
                              (if (gx#stx-null? _%hd4037040757%_)
                                  (if (gx#stx-pair/null? _%tl4037140760%_)
                                      (let ((_%__splice4440844409%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4037140760%_
                                              '0)))
                                        (let ((_%tl4037440766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4440844409%_
                                                  '1)))
                                              (_%target4037240763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4440844409%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4037440766%_)
                                              (_%__match4444244443%_
                                               _%e4036640743%_
                                               _%hd4036740747%_
                                               _%tl4036840750%_
                                               _%e4036940753%_
                                               _%hd4037040757%_
                                               _%tl4037140760%_
                                               _%__splice4440844409%_
                                               _%target4037240763%_
                                               _%tl4037440766%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4036340451%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4036340451%_)))
                                  (if (gx#stx-pair? _%hd4037040757%_)
                                      (let ((_%e4039040643%_
                                             (gx#syntax-e _%hd4037040757%_)))
                                        (let ((_%tl4039240650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4039040643%_)))
                                              (_%hd4039140647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4039040643%_))))
                                          (if (gx#stx-pair? _%hd4039140647%_)
                                              (let ((_%e4039340653%_
                                                     (gx#syntax-e
                                                      _%hd4039140647%_)))
                                                (let ((_%tl4039540660%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4039340653%_)))
                                                      (_%hd4039440657%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4039340653%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4039540660%_)
                                                      (let ((_%e4039640663%_
                                                             (gx#syntax-e
                                                              _%tl4039540660%_)))
                                                        (let ((_%tl4039840670%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4039640663%_)))
                      (_%hd4039740667%_
                       (let () (declare (not safe)) (##car _%e4039640663%_))))
                  (if (gx#stx-null? _%tl4039840670%_)
                      (if (gx#stx-null? _%tl4039240650%_)
                          (if (gx#stx-pair/null? _%tl4037140760%_)
                              (let ((_%__splice4441244413%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4037140760%_
                                      '0)))
                                (let ((_%tl4040140676%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4441244413%_
                                          '1)))
                                      (_%target4039940673%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4441244413%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4040140676%_)
                                      (_%__match4448444485%_
                                       _%e4036640743%_
                                       _%hd4036740747%_
                                       _%tl4036840750%_
                                       _%e4036940753%_
                                       _%hd4037040757%_
                                       _%tl4037140760%_
                                       _%e4039040643%_
                                       _%hd4039140647%_
                                       _%tl4039240650%_
                                       _%e4039340653%_
                                       _%hd4039440657%_
                                       _%tl4039540660%_
                                       _%e4039640663%_
                                       _%hd4039740667%_
                                       _%tl4039840670%_
                                       _%__splice4441244413%_
                                       _%target4039940673%_
                                       _%tl4040140676%_)
                                      (if (gx#stx-pair/null? _%tl4039240650%_)
                                          (let ((_%__splice4441644417%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4039240650%_
                                                  '0)))
                                            (let ((_%tl4043040511%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4441644417%_
                                                      '1)))
                                                  (_%target4042840508%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4441644417%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4043040511%_)
                                                  (_%__match4452444525%_
                                                   _%e4036640743%_
                                                   _%hd4036740747%_
                                                   _%tl4036840750%_
                                                   _%e4036940753%_
                                                   _%hd4037040757%_
                                                   _%tl4037140760%_
                                                   _%e4039040643%_
                                                   _%hd4039140647%_
                                                   _%tl4039240650%_
                                                   _%e4039340653%_
                                                   _%hd4039440657%_
                                                   _%tl4039540660%_
                                                   _%e4039640663%_
                                                   _%hd4039740667%_
                                                   _%tl4039840670%_
                                                   _%__splice4441644417%_
                                                   _%target4042840508%_
                                                   _%tl4043040511%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4036340451%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4036340451%_))))))
                              (if (gx#stx-pair/null? _%tl4039240650%_)
                                  (let ((_%__splice4441644417%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4039240650%_
                                          '0)))
                                    (let ((_%tl4043040511%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4441644417%_
                                              '1)))
                                          (_%target4042840508%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4441644417%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4043040511%_)
                                          (_%__match4452444525%_
                                           _%e4036640743%_
                                           _%hd4036740747%_
                                           _%tl4036840750%_
                                           _%e4036940753%_
                                           _%hd4037040757%_
                                           _%tl4037140760%_
                                           _%e4039040643%_
                                           _%hd4039140647%_
                                           _%tl4039240650%_
                                           _%e4039340653%_
                                           _%hd4039440657%_
                                           _%tl4039540660%_
                                           _%e4039640663%_
                                           _%hd4039740667%_
                                           _%tl4039840670%_
                                           _%__splice4441644417%_
                                           _%target4042840508%_
                                           _%tl4043040511%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4036340451%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4036340451%_))))
                          (if (gx#stx-pair/null? _%tl4039240650%_)
                              (let ((_%__splice4441644417%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4039240650%_
                                      '0)))
                                (let ((_%tl4043040511%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4441644417%_
                                          '1)))
                                      (_%target4042840508%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4441644417%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4043040511%_)
                                      (_%__match4452444525%_
                                       _%e4036640743%_
                                       _%hd4036740747%_
                                       _%tl4036840750%_
                                       _%e4036940753%_
                                       _%hd4037040757%_
                                       _%tl4037140760%_
                                       _%e4039040643%_
                                       _%hd4039140647%_
                                       _%tl4039240650%_
                                       _%e4039340653%_
                                       _%hd4039440657%_
                                       _%tl4039540660%_
                                       _%e4039640663%_
                                       _%hd4039740667%_
                                       _%tl4039840670%_
                                       _%__splice4441644417%_
                                       _%target4042840508%_
                                       _%tl4043040511%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4036340451%_)))))
                              (let () (declare (not safe)) (_%g4036340451%_))))
                      (let () (declare (not safe)) (_%g4036340451%_)))))
              (let () (declare (not safe)) (_%g4036340451%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4036340451%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4036340451%_))))))
                          (let () (declare (not safe)) (_%g4036340451%_)))))
                  (let () (declare (not safe)) (_%g4036340451%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx40824%_)
        (let* ((_%g4082840852%_
                (lambda (_%g4082940848%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4082940848%_)))
               (_%g4082740935%_
                (lambda (_%g4082940856%_)
                  (if (gx#stx-pair? _%g4082940856%_)
                      (let ((_%e4083240859%_ (gx#syntax-e _%g4082940856%_)))
                        (let ((_%hd4083340863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4083240859%_)))
                              (_%tl4083440866%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4083240859%_))))
                          (if (gx#stx-pair? _%tl4083440866%_)
                              (let ((_%e4083540869%_
                                     (gx#syntax-e _%tl4083440866%_)))
                                (let ((_%hd4083640873%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4083540869%_)))
                                      (_%tl4083740876%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4083540869%_))))
                                  (if (gx#stx-pair/null? _%tl4083740876%_)
                                      (let ((_g44779_
                                             (gx#syntax-split-splice
                                              _%tl4083740876%_
                                              '0)))
                                        (begin
                                          (let ((_g44780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44779_)
                                                       (##values-length
                                                        _g44779_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44780_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44780_)))
                                          (let ((_%target4083840879%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44779_ 0)))
                                                (_%tl4084040882%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44779_ 1))))
                                            (if (gx#stx-null? _%tl4084040882%_)
                                                (letrec ((_%loop4084140885%_
                                                          (lambda (_%hd4083940889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4084540892%_)
                    (if (gx#stx-pair? _%hd4083940889%_)
                        (let ((_%e4084240894%_ (gx#syntax-e _%hd4083940889%_)))
                          (let ((_%lp-hd4084340898%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4084240894%_)))
                                (_%lp-tl4084440901%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4084240894%_))))
                            (_%loop4084140885%_
                             _%lp-tl4084440901%_
                             (cons _%lp-hd4084340898%_ _%body4084540892%_))))
                        (let ((_%body4084640904%_
                               (reverse _%body4084540892%_)))
                          ((lambda (_%g4083040907%_ _%g4083140909%_)
                             (if (gx#identifier? _%g4083140909%_)
                                 (cons (gx#datum->syntax '#f 'call/cc)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g4083140909%_
                                                               '())
                                                         (foldr (lambda (_%g4092640929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4092740932%_)
                          (cons _%g4092640929%_ _%g4092740932%_))
                        '()
                        _%g4083040907%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (_%g4082840852%_ _%g4082940856%_)))
                           _%body4084640904%_
                           _%hd4083640873%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4084140885%_
                                                   _%target4083840879%_
                                                   '()))
                                                (_%g4082840852%_
                                                 _%g4082940856%_)))))
                                      (_%g4082840852%_ _%g4082940856%_))))
                              (_%g4082840852%_ _%g4082940856%_))))
                      (_%g4082840852%_ _%g4082940856%_)))))
          (_%g4082740935%_ _%$stx40824%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx40940%_)
        (let* ((_%g4094440972%_
                (lambda (_%g4094540968%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4094540968%_)))
               (_%g4094341069%_
                (lambda (_%g4094540976%_)
                  (if (gx#stx-pair? _%g4094540976%_)
                      (let ((_%e4094940979%_ (gx#syntax-e _%g4094540976%_)))
                        (let ((_%hd4095040983%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4094940979%_)))
                              (_%tl4095140986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4094940979%_))))
                          (if (gx#stx-pair? _%tl4095140986%_)
                              (let ((_%e4095240989%_
                                     (gx#syntax-e _%tl4095140986%_)))
                                (let ((_%hd4095340993%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4095240989%_)))
                                      (_%tl4095440996%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4095240989%_))))
                                  (if (gx#stx-pair? _%tl4095440996%_)
                                      (let ((_%e4095540999%_
                                             (gx#syntax-e _%tl4095440996%_)))
                                        (let ((_%hd4095641003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4095540999%_)))
                                              (_%tl4095741006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4095540999%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4095741006%_)
                                              (let ((_g44781_
                                                     (gx#syntax-split-splice
                                                      _%tl4095741006%_
                                                      '0)))
                                                (begin
                                                  (let ((_g44782_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g44781_)
                                                               (##values-length
                                                                _g44781_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g44782_ 2)))
                (error "Context expects 2 values" _g44782_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4095841009%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44781_
                                                            0)))
                                                        (_%tl4096041012%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44781_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4096041012%_)
                                                        (letrec ((_%loop4096141015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4095941019%_ _%rest4096541022%_)
                            (if (gx#stx-pair? _%hd4095941019%_)
                                (let ((_%e4096241024%_
                                       (gx#syntax-e _%hd4095941019%_)))
                                  (let ((_%lp-hd4096341028%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4096241024%_)))
                                        (_%lp-tl4096441031%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4096241024%_))))
                                    (_%loop4096141015%_
                                     _%lp-tl4096441031%_
                                     (cons _%lp-hd4096341028%_
                                           _%rest4096541022%_))))
                                (let ((_%rest4096641034%_
                                       (reverse _%rest4096541022%_)))
                                  ((lambda (_%g4094641037%_
                                            _%g4094741039%_
                                            _%g4094841040%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'with-unwind-protect)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons '()
                                                             (cons _%g4094841040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g4094741039%_
                                 (foldr (lambda (_%g4106041063%_
                                                 _%g4106141066%_)
                                          (cons _%g4106041063%_
                                                _%g4106141066%_))
                                        '()
                                        _%g4094641037%_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest4096641034%_
                                   _%hd4095641003%_
                                   _%hd4095340993%_))))))
                  (_%loop4096141015%_ _%target4095841009%_ '()))
                (_%g4094440972%_ _%g4094540976%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4094440972%_
                                               _%g4094540976%_))))
                                      (_%g4094440972%_ _%g4094540976%_))))
                              (_%g4094440972%_ _%g4094540976%_))))
                      (_%g4094440972%_ _%g4094540976%_)))))
          (_%g4094341069%_ _%$stx40940%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx41074%_)
        (let* ((_%g4107841149%_
                (lambda (_%g4107941145%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4107941145%_)))
               (_%g4107741426%_
                (lambda (_%g4107941153%_)
                  (if (gx#stx-pair? _%g4107941153%_)
                      (let ((_%e4108641156%_ (gx#syntax-e _%g4107941153%_)))
                        (let ((_%hd4108741160%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4108641156%_)))
                              (_%tl4108841163%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4108641156%_))))
                          (if (gx#stx-pair? _%tl4108841163%_)
                              (let ((_%e4108941166%_
                                     (gx#syntax-e _%tl4108841163%_)))
                                (let ((_%hd4109041170%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4108941166%_)))
                                      (_%tl4109141173%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4108941166%_))))
                                  (if (gx#stx-pair/null? _%hd4109041170%_)
                                      (let ((_g44783_
                                             (gx#syntax-split-splice
                                              _%hd4109041170%_
                                              '0)))
                                        (begin
                                          (let ((_g44784_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44783_)
                                                       (##values-length
                                                        _g44783_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44784_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44784_)))
                                          (let ((_%target4109241176%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44783_ 0)))
                                                (_%tl4109441179%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44783_ 1))))
                                            (if (gx#stx-null? _%tl4109441179%_)
                                                (letrec ((_%loop4109541182%_
                                                          (lambda (_%hd4109341186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4109941189%_
                           _%init4110041190%_
                           _%var4110141191%_)
                    (if (gx#stx-pair? _%hd4109341186%_)
                        (let ((_%e4109641193%_ (gx#syntax-e _%hd4109341186%_)))
                          (let ((_%lp-hd4109741197%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4109641193%_)))
                                (_%lp-tl4109841200%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4109641193%_))))
                            (if (gx#stx-pair? _%lp-hd4109741197%_)
                                (let ((_%e4110541203%_
                                       (gx#syntax-e _%lp-hd4109741197%_)))
                                  (let ((_%hd4110641207%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4110541203%_)))
                                        (_%tl4110741210%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4110541203%_))))
                                    (if (gx#stx-pair? _%tl4110741210%_)
                                        (let ((_%e4110841213%_
                                               (gx#syntax-e _%tl4110741210%_)))
                                          (let ((_%hd4110941217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4110841213%_)))
                                                (_%tl4111041220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4110841213%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4111041220%_)
                                                (let ((_g44785_
                                                       (gx#syntax-split-splice
                                                        _%tl4111041220%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g44786_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g44785_)
                         (##values-length _g44785_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g44786_ 2)))
                  (error "Context expects 2 values" _g44786_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4111141223%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g44785_
                                                              0)))
                                                          (_%tl4111341226%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g44785_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4111341226%_)
                                                          (letrec ((_%loop4111441229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4111241233%_ _%step4111841236%_)
                              (if (gx#stx-pair? _%hd4111241233%_)
                                  (let ((_%e4111541238%_
                                         (gx#syntax-e _%hd4111241233%_)))
                                    (let ((_%lp-hd4111641242%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4111541238%_)))
                                          (_%lp-tl4111741245%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4111541238%_))))
                                      (_%loop4111441229%_
                                       _%lp-tl4111741245%_
                                       (cons _%lp-hd4111641242%_
                                             _%step4111841236%_))))
                                  (let ((_%step4111941248%_
                                         (reverse _%step4111841236%_)))
                                    (_%loop4109541182%_
                                     _%lp-tl4109841200%_
                                     (cons _%step4111941248%_
                                           _%step4109941189%_)
                                     (cons _%hd4110941217%_ _%init4110041190%_)
                                     (cons _%hd4110641207%_
                                           _%var4110141191%_)))))))
                    (_%loop4111441229%_ _%target4111141223%_ '()))
                  (_%g4107841149%_ _%g4107941153%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4107841149%_
                                                 _%g4107941153%_))))
                                        (_%g4107841149%_ _%g4107941153%_))))
                                (_%g4107841149%_ _%g4107941153%_))))
                        (let ((_%step4110241251%_ (reverse _%step4109941189%_))
                              (_%init4110341253%_ (reverse _%init4110041190%_))
                              (_%var4110441254%_ (reverse _%var4110141191%_)))
                          (if (gx#stx-pair? _%tl4109141173%_)
                              (let ((_%e4112041256%_
                                     (gx#syntax-e _%tl4109141173%_)))
                                (let ((_%hd4112141260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4112041256%_)))
                                      (_%tl4112241263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4112041256%_))))
                                  (if (gx#stx-pair? _%hd4112141260%_)
                                      (let ((_%e4112341266%_
                                             (gx#syntax-e _%hd4112141260%_)))
                                        (let ((_%hd4112441270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4112341266%_)))
                                              (_%tl4112541273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4112341266%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4112541273%_)
                                              (let ((_g44787_
                                                     (gx#syntax-split-splice
                                                      _%tl4112541273%_
                                                      '0)))
                                                (begin
                                                  (let ((_g44788_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g44787_)
                                                               (##values-length
                                                                _g44787_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g44788_ 2)))
                (error "Context expects 2 values" _g44788_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4112641276%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44787_
                                                            0)))
                                                        (_%tl4112841279%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44787_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4112841279%_)
                                                        (letrec ((_%loop4112941282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4112741286%_ _%fini4113341289%_)
                            (if (gx#stx-pair? _%hd4112741286%_)
                                (let ((_%e4113041291%_
                                       (gx#syntax-e _%hd4112741286%_)))
                                  (let ((_%lp-hd4113141295%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4113041291%_)))
                                        (_%lp-tl4113241298%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4113041291%_))))
                                    (_%loop4112941282%_
                                     _%lp-tl4113241298%_
                                     (cons _%lp-hd4113141295%_
                                           _%fini4113341289%_))))
                                (let ((_%fini4113441301%_
                                       (reverse _%fini4113341289%_)))
                                  (if (gx#stx-pair/null? _%tl4112241263%_)
                                      (let ((_g44789_
                                             (gx#syntax-split-splice
                                              _%tl4112241263%_
                                              '0)))
                                        (begin
                                          (let ((_g44790_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44789_)
                                                       (##values-length
                                                        _g44789_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44790_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44790_)))
                                          (let ((_%target4113541304%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44789_ 0)))
                                                (_%tl4113741307%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44789_ 1))))
                                            (if (gx#stx-null? _%tl4113741307%_)
                                                (letrec ((_%loop4113841310%_
                                                          (lambda (_%hd4113641314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4114241317%_)
                    (if (gx#stx-pair? _%hd4113641314%_)
                        (let ((_%e4113941319%_ (gx#syntax-e _%hd4113641314%_)))
                          (let ((_%lp-hd4114041323%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4113941319%_)))
                                (_%lp-tl4114141326%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4113941319%_))))
                            (_%loop4113841310%_
                             _%lp-tl4114141326%_
                             (cons _%lp-hd4114041323%_ _%body4114241317%_))))
                        (let ((_%body4114341329%_
                               (reverse _%body4114241317%_)))
                          ((lambda (_%g4108041332%_
                                    _%g4108141334%_
                                    _%g4108241335%_
                                    _%g4108341336%_
                                    _%g4108441337%_
                                    _%g4108541338%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4137141374%_
                                                  _%g4137241377%_)
                                           (cons _%g4137141374%_
                                                 _%g4137241377%_))
                                         '()
                                         _%g4108541338%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4108441337%_
                                                      _%g4108541338%_)
                                                     (foldr (lambda (_%g4137941392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4138041395%_
                             _%g4138141397%_)
                      (cons (cons _%g4138041395%_ (cons _%g4137941392%_ '()))
                            _%g4138141397%_))
                    '()
                    _%g4108441337%_
                    _%g4108541338%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%g4108241335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g4138241400%_
                                                               _%g4138341403%_)
                                                        (cons _%g4138241400%_
                                                              _%g4138341403%_))
                                                      '()
                                                      _%g4108141334%_)))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4138441406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4138541409%_)
                      (cons _%g4138441406%_ _%g4138541409%_))
                    (cons (cons (gx#datum->syntax '#f '$loop)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _%g4108341336%_
                                   _%g4108541338%_)
                                  (foldr (lambda (_%g4138641412%_
                                                  _%g4138741415%_
                                                  _%g4138841417%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons _%g4138741415%_
                                                             (foldr (lambda (_%g4138941420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4139041423%_)
                              (cons _%g4138941420%_ _%g4139041423%_))
                            '()
                            _%g4138641412%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g4138841417%_))
                                         '()
                                         _%g4108341336%_
                                         _%g4108541338%_)))
                          '())
                    _%g4108041332%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4107841149%_ _%g4107941153%_)))
                           _%body4114341329%_
                           _%fini4113441301%_
                           _%hd4112441270%_
                           _%step4110241251%_
                           _%init4110341253%_
                           _%var4110441254%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4113841310%_
                                                   _%target4113541304%_
                                                   '()))
                                                (_%g4107841149%_
                                                 _%g4107941153%_)))))
                                      (_%g4107841149%_ _%g4107941153%_)))))))
                  (_%loop4112941282%_ _%target4112641276%_ '()))
                (_%g4107841149%_ _%g4107941153%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4107841149%_
                                               _%g4107941153%_))))
                                      (_%g4107841149%_ _%g4107941153%_))))
                              (_%g4107841149%_ _%g4107941153%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4109541182%_
                                                   _%target4109241176%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4107841149%_
                                                 _%g4107941153%_)))))
                                      (_%g4107841149%_ _%g4107941153%_))))
                              (_%g4107841149%_ _%g4107941153%_))))
                      (_%g4107841149%_ _%g4107941153%_)))))
          (_%g4107741426%_ _%$stx41074%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx41434%_)
        (let* ((_%g4143841509%_
                (lambda (_%g4143941505%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4143941505%_)))
               (_%g4143741786%_
                (lambda (_%g4143941513%_)
                  (if (gx#stx-pair? _%g4143941513%_)
                      (let ((_%e4144641516%_ (gx#syntax-e _%g4143941513%_)))
                        (let ((_%hd4144741520%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4144641516%_)))
                              (_%tl4144841523%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4144641516%_))))
                          (if (gx#stx-pair? _%tl4144841523%_)
                              (let ((_%e4144941526%_
                                     (gx#syntax-e _%tl4144841523%_)))
                                (let ((_%hd4145041530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4144941526%_)))
                                      (_%tl4145141533%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4144941526%_))))
                                  (if (gx#stx-pair/null? _%hd4145041530%_)
                                      (let ((_g44791_
                                             (gx#syntax-split-splice
                                              _%hd4145041530%_
                                              '0)))
                                        (begin
                                          (let ((_g44792_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44791_)
                                                       (##values-length
                                                        _g44791_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44792_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44792_)))
                                          (let ((_%target4145241536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44791_ 0)))
                                                (_%tl4145441539%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44791_ 1))))
                                            (if (gx#stx-null? _%tl4145441539%_)
                                                (letrec ((_%loop4145541542%_
                                                          (lambda (_%hd4145341546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4145941549%_
                           _%init4146041550%_
                           _%var4146141551%_)
                    (if (gx#stx-pair? _%hd4145341546%_)
                        (let ((_%e4145641553%_ (gx#syntax-e _%hd4145341546%_)))
                          (let ((_%lp-hd4145741557%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4145641553%_)))
                                (_%lp-tl4145841560%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4145641553%_))))
                            (if (gx#stx-pair? _%lp-hd4145741557%_)
                                (let ((_%e4146541563%_
                                       (gx#syntax-e _%lp-hd4145741557%_)))
                                  (let ((_%hd4146641567%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4146541563%_)))
                                        (_%tl4146741570%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4146541563%_))))
                                    (if (gx#stx-pair? _%tl4146741570%_)
                                        (let ((_%e4146841573%_
                                               (gx#syntax-e _%tl4146741570%_)))
                                          (let ((_%hd4146941577%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4146841573%_)))
                                                (_%tl4147041580%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4146841573%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4147041580%_)
                                                (let ((_g44793_
                                                       (gx#syntax-split-splice
                                                        _%tl4147041580%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g44794_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g44793_)
                         (##values-length _g44793_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g44794_ 2)))
                  (error "Context expects 2 values" _g44794_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4147141583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g44793_
                                                              0)))
                                                          (_%tl4147341586%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g44793_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4147341586%_)
                                                          (letrec ((_%loop4147441589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4147241593%_ _%step4147841596%_)
                              (if (gx#stx-pair? _%hd4147241593%_)
                                  (let ((_%e4147541598%_
                                         (gx#syntax-e _%hd4147241593%_)))
                                    (let ((_%lp-hd4147641602%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4147541598%_)))
                                          (_%lp-tl4147741605%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4147541598%_))))
                                      (_%loop4147441589%_
                                       _%lp-tl4147741605%_
                                       (cons _%lp-hd4147641602%_
                                             _%step4147841596%_))))
                                  (let ((_%step4147941608%_
                                         (reverse _%step4147841596%_)))
                                    (_%loop4145541542%_
                                     _%lp-tl4145841560%_
                                     (cons _%step4147941608%_
                                           _%step4145941549%_)
                                     (cons _%hd4146941577%_ _%init4146041550%_)
                                     (cons _%hd4146641567%_
                                           _%var4146141551%_)))))))
                    (_%loop4147441589%_ _%target4147141583%_ '()))
                  (_%g4143841509%_ _%g4143941513%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4143841509%_
                                                 _%g4143941513%_))))
                                        (_%g4143841509%_ _%g4143941513%_))))
                                (_%g4143841509%_ _%g4143941513%_))))
                        (let ((_%step4146241611%_ (reverse _%step4145941549%_))
                              (_%init4146341613%_ (reverse _%init4146041550%_))
                              (_%var4146441614%_ (reverse _%var4146141551%_)))
                          (if (gx#stx-pair? _%tl4145141533%_)
                              (let ((_%e4148041616%_
                                     (gx#syntax-e _%tl4145141533%_)))
                                (let ((_%hd4148141620%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4148041616%_)))
                                      (_%tl4148241623%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4148041616%_))))
                                  (if (gx#stx-pair? _%hd4148141620%_)
                                      (let ((_%e4148341626%_
                                             (gx#syntax-e _%hd4148141620%_)))
                                        (let ((_%hd4148441630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4148341626%_)))
                                              (_%tl4148541633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4148341626%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4148541633%_)
                                              (let ((_g44795_
                                                     (gx#syntax-split-splice
                                                      _%tl4148541633%_
                                                      '0)))
                                                (begin
                                                  (let ((_g44796_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g44795_)
                                                               (##values-length
                                                                _g44795_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g44796_ 2)))
                (error "Context expects 2 values" _g44796_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4148641636%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44795_
                                                            0)))
                                                        (_%tl4148841639%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g44795_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4148841639%_)
                                                        (letrec ((_%loop4148941642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4148741646%_ _%fini4149341649%_)
                            (if (gx#stx-pair? _%hd4148741646%_)
                                (let ((_%e4149041651%_
                                       (gx#syntax-e _%hd4148741646%_)))
                                  (let ((_%lp-hd4149141655%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4149041651%_)))
                                        (_%lp-tl4149241658%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4149041651%_))))
                                    (_%loop4148941642%_
                                     _%lp-tl4149241658%_
                                     (cons _%lp-hd4149141655%_
                                           _%fini4149341649%_))))
                                (let ((_%fini4149441661%_
                                       (reverse _%fini4149341649%_)))
                                  (if (gx#stx-pair/null? _%tl4148241623%_)
                                      (let ((_g44797_
                                             (gx#syntax-split-splice
                                              _%tl4148241623%_
                                              '0)))
                                        (begin
                                          (let ((_g44798_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44797_)
                                                       (##values-length
                                                        _g44797_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44798_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44798_)))
                                          (let ((_%target4149541664%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44797_ 0)))
                                                (_%tl4149741667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44797_ 1))))
                                            (if (gx#stx-null? _%tl4149741667%_)
                                                (letrec ((_%loop4149841670%_
                                                          (lambda (_%hd4149641674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4150241677%_)
                    (if (gx#stx-pair? _%hd4149641674%_)
                        (let ((_%e4149941679%_ (gx#syntax-e _%hd4149641674%_)))
                          (let ((_%lp-hd4150041683%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4149941679%_)))
                                (_%lp-tl4150141686%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4149941679%_))))
                            (_%loop4149841670%_
                             _%lp-tl4150141686%_
                             (cons _%lp-hd4150041683%_ _%body4150241677%_))))
                        (let ((_%body4150341689%_
                               (reverse _%body4150241677%_)))
                          ((lambda (_%g4144041692%_
                                    _%g4144141694%_
                                    _%g4144241695%_
                                    _%g4144341696%_
                                    _%g4144441697%_
                                    _%g4144541698%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4173141734%_
                                                  _%g4173241737%_)
                                           (cons _%g4173141734%_
                                                 _%g4173241737%_))
                                         '()
                                         _%g4144541698%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4144441697%_
                                                      _%g4144541698%_)
                                                     (foldr (lambda (_%g4173941752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4174041755%_
                             _%g4174141757%_)
                      (cons (cons _%g4174041755%_ (cons _%g4173941752%_ '()))
                            _%g4174141757%_))
                    '()
                    _%g4144441697%_
                    _%g4144541698%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%g4174241760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4174341763%_)
                    (cons _%g4174241760%_ _%g4174341763%_))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons _%g4144241695%_
                                    (cons (cons (gx#datum->syntax '#f '$loop)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%g4144341696%_
                                                   _%g4144541698%_)
                                                  (foldr (lambda (_%g4174441766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4174541769%_
                          _%g4174641771%_)
                   (cons (cons (gx#datum->syntax '#f 'begin)
                               (cons _%g4174541769%_
                                     (foldr (lambda (_%g4174741774%_
                                                     _%g4174841777%_)
                                              (cons _%g4174741774%_
                                                    _%g4174841777%_))
                                            '()
                                            _%g4174441766%_)))
                         _%g4174641771%_))
                 '()
                 _%g4144341696%_
                 _%g4144541698%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons '#!void
                                                            (foldr (lambda (_%g4174941780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4175041783%_)
                             (cons _%g4174941780%_ _%g4175041783%_))
                           '()
                           _%g4144141694%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())
                  _%g4144041692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4143841509%_ _%g4143941513%_)))
                           _%body4150341689%_
                           _%fini4149441661%_
                           _%hd4148441630%_
                           _%step4146241611%_
                           _%init4146341613%_
                           _%var4146441614%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4149841670%_
                                                   _%target4149541664%_
                                                   '()))
                                                (_%g4143841509%_
                                                 _%g4143941513%_)))))
                                      (_%g4143841509%_ _%g4143941513%_)))))))
                  (_%loop4148941642%_ _%target4148641636%_ '()))
                (_%g4143841509%_ _%g4143941513%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4143841509%_
                                               _%g4143941513%_))))
                                      (_%g4143841509%_ _%g4143941513%_))))
                              (_%g4143841509%_ _%g4143941513%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4145541542%_
                                                   _%target4145241536%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4143841509%_
                                                 _%g4143941513%_)))))
                                      (_%g4143841509%_ _%g4143941513%_))))
                              (_%g4143841509%_ _%g4143941513%_))))
                      (_%g4143841509%_ _%g4143941513%_)))))
          (_%g4143741786%_ _%$stx41434%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx41794%_)
        (let* ((_%g4179841822%_
                (lambda (_%g4179941818%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4179941818%_)))
               (_%g4179741905%_
                (lambda (_%g4179941826%_)
                  (if (gx#stx-pair? _%g4179941826%_)
                      (let ((_%e4180241829%_ (gx#syntax-e _%g4179941826%_)))
                        (let ((_%hd4180341833%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4180241829%_)))
                              (_%tl4180441836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4180241829%_))))
                          (if (gx#stx-pair? _%tl4180441836%_)
                              (let ((_%e4180541839%_
                                     (gx#syntax-e _%tl4180441836%_)))
                                (let ((_%hd4180641843%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4180541839%_)))
                                      (_%tl4180741846%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4180541839%_))))
                                  (if (gx#stx-pair/null? _%tl4180741846%_)
                                      (let ((_g44799_
                                             (gx#syntax-split-splice
                                              _%tl4180741846%_
                                              '0)))
                                        (begin
                                          (let ((_g44800_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44799_)
                                                       (##values-length
                                                        _g44799_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44800_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44800_)))
                                          (let ((_%target4180841849%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44799_ 0)))
                                                (_%tl4181041852%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44799_ 1))))
                                            (if (gx#stx-null? _%tl4181041852%_)
                                                (letrec ((_%loop4181141855%_
                                                          (lambda (_%hd4180941859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4181541862%_)
                    (if (gx#stx-pair? _%hd4180941859%_)
                        (let ((_%e4181241864%_ (gx#syntax-e _%hd4180941859%_)))
                          (let ((_%lp-hd4181341868%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4181241864%_)))
                                (_%lp-tl4181441871%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4181241864%_))))
                            (_%loop4181141855%_
                             _%lp-tl4181441871%_
                             (cons _%lp-hd4181341868%_ _%body4181541862%_))))
                        (let ((_%body4181641874%_
                               (reverse _%body4181541862%_)))
                          ((lambda (_%g4180041877%_ _%g4180141879%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'when)
                                                           (cons _%g4180141879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4189641899%_ _%g4189741902%_)
                                  (cons _%g4189641899%_ _%g4189741902%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4180041877%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4181641874%_
                           _%hd4180641843%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4181141855%_
                                                   _%target4180841849%_
                                                   '()))
                                                (_%g4179841822%_
                                                 _%g4179941826%_)))))
                                      (_%g4179841822%_ _%g4179941826%_))))
                              (_%g4179841822%_ _%g4179941826%_))))
                      (_%g4179841822%_ _%g4179941826%_)))))
          (_%g4179741905%_ _%$stx41794%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx41910%_)
        (let* ((_%g4191441938%_
                (lambda (_%g4191541934%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4191541934%_)))
               (_%g4191342021%_
                (lambda (_%g4191541942%_)
                  (if (gx#stx-pair? _%g4191541942%_)
                      (let ((_%e4191841945%_ (gx#syntax-e _%g4191541942%_)))
                        (let ((_%hd4191941949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4191841945%_)))
                              (_%tl4192041952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4191841945%_))))
                          (if (gx#stx-pair? _%tl4192041952%_)
                              (let ((_%e4192141955%_
                                     (gx#syntax-e _%tl4192041952%_)))
                                (let ((_%hd4192241959%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4192141955%_)))
                                      (_%tl4192341962%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4192141955%_))))
                                  (if (gx#stx-pair/null? _%tl4192341962%_)
                                      (let ((_g44801_
                                             (gx#syntax-split-splice
                                              _%tl4192341962%_
                                              '0)))
                                        (begin
                                          (let ((_g44802_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44801_)
                                                       (##values-length
                                                        _g44801_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44802_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44802_)))
                                          (let ((_%target4192441965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44801_ 0)))
                                                (_%tl4192641968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44801_ 1))))
                                            (if (gx#stx-null? _%tl4192641968%_)
                                                (letrec ((_%loop4192741971%_
                                                          (lambda (_%hd4192541975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4193141978%_)
                    (if (gx#stx-pair? _%hd4192541975%_)
                        (let ((_%e4192841980%_ (gx#syntax-e _%hd4192541975%_)))
                          (let ((_%lp-hd4192941984%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4192841980%_)))
                                (_%lp-tl4193041987%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4192841980%_))))
                            (_%loop4192741971%_
                             _%lp-tl4193041987%_
                             (cons _%lp-hd4192941984%_ _%body4193141978%_))))
                        (let ((_%body4193241990%_
                               (reverse _%body4193141978%_)))
                          ((lambda (_%g4191641993%_ _%g4191741995%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'unless)
                                                           (cons _%g4191741995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4201242015%_ _%g4201342018%_)
                                  (cons _%g4201242015%_ _%g4201342018%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4191641993%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4193241990%_
                           _%hd4192241959%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4192741971%_
                                                   _%target4192441965%_
                                                   '()))
                                                (_%g4191441938%_
                                                 _%g4191541942%_)))))
                                      (_%g4191441938%_ _%g4191541942%_))))
                              (_%g4191441938%_ _%g4191541942%_))))
                      (_%g4191441938%_ _%g4191541942%_)))))
          (_%g4191342021%_ _%$stx41910%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx42026%_)
        (let ((_%g4202942036%_
               (lambda (_%g4203042032%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4203042032%_))))
          (_%g4202942036%_ _%$stx42026%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx42040%_)
        (let ((_%g4204342050%_
               (lambda (_%g4204442046%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4204442046%_))))
          (_%g4204342050%_ _%$stx42040%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx42054%_)
        (letrec ((_%generate-thunk42057%_
                  (lambda (_%body43376%_)
                    (if (null? _%body43376%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx42054%_)
                        (let* ((_%g4337943396%_
                                (lambda (_%g4338043392%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g4338043392%_)))
                               (_%g4337843455%_
                                (lambda (_%g4338043400%_)
                                  (if (gx#stx-pair/null? _%g4338043400%_)
                                      (let ((_g44803_
                                             (gx#syntax-split-splice
                                              _%g4338043400%_
                                              '0)))
                                        (begin
                                          (let ((_g44804_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44803_)
                                                       (##values-length
                                                        _g44803_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44804_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44804_)))
                                          (let ((_%target4338243403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44803_ 0)))
                                                (_%tl4338443406%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44803_ 1))))
                                            (if (gx#stx-null? _%tl4338443406%_)
                                                (letrec ((_%loop4338543409%_
                                                          (lambda (_%hd4338343413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e4338943416%_)
                    (if (gx#stx-pair? _%hd4338343413%_)
                        (let ((_%e4338643418%_ (gx#syntax-e _%hd4338343413%_)))
                          (let ((_%lp-hd4338743422%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4338643418%_)))
                                (_%lp-tl4338843425%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4338643418%_))))
                            (_%loop4338543409%_
                             _%lp-tl4338843425%_
                             (cons _%lp-hd4338743422%_ _%e4338943416%_))))
                        (let ((_%e4339043428%_ (reverse _%e4338943416%_)))
                          ((lambda (_%g4338143431%_)
                             (cons (gx#datum->syntax '#f 'lambda)
                                   (cons '()
                                         (foldr (lambda (_%g4344643449%_
                                                         _%g4344743452%_)
                                                  (cons _%g4344643449%_
                                                        _%g4344743452%_))
                                                '()
                                                _%g4338143431%_))))
                           _%e4339043428%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4338543409%_
                                                   _%target4338243403%_
                                                   '()))
                                                (_%g4337943396%_
                                                 _%g4338043400%_)))))
                                      (_%g4337943396%_ _%g4338043400%_)))))
                          (_%g4337843455%_ (reverse _%body43376%_))))))
                 (_%generate-fini42059%_
                  (lambda (_%thunk43259%_ _%fini43261%_)
                    (let* ((_%g4326343287%_
                            (lambda (_%g4326443283%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4326443283%_)))
                           (_%g4326243372%_
                            (lambda (_%g4326443291%_)
                              (if (gx#stx-pair? _%g4326443291%_)
                                  (let ((_%e4326743294%_
                                         (gx#syntax-e _%g4326443291%_)))
                                    (let ((_%hd4326843298%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4326743294%_)))
                                          (_%tl4326943301%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4326743294%_))))
                                      (if (gx#stx-pair? _%tl4326943301%_)
                                          (let ((_%e4327043304%_
                                                 (gx#syntax-e
                                                  _%tl4326943301%_)))
                                            (let ((_%hd4327143308%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4327043304%_)))
                                                  (_%tl4327243311%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4327043304%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4327143308%_)
                                                  (let ((_g44805_
                                                         (gx#syntax-split-splice
                                                          _%hd4327143308%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g44806_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g44805_)
                           (##values-length _g44805_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g44806_ 2)))
                    (error "Context expects 2 values" _g44806_)))
              (let ((_%target4327343314%_
                     (let () (declare (not safe)) (##values-ref _g44805_ 0)))
                    (_%tl4327543317%_
                     (let () (declare (not safe)) (##values-ref _g44805_ 1))))
                (if (gx#stx-null? _%tl4327543317%_)
                    (letrec ((_%loop4327643320%_
                              (lambda (_%hd4327443324%_ _%e4328043327%_)
                                (if (gx#stx-pair? _%hd4327443324%_)
                                    (let ((_%e4327743329%_
                                           (gx#syntax-e _%hd4327443324%_)))
                                      (let ((_%lp-hd4327843333%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4327743329%_)))
                                            (_%lp-tl4327943336%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4327743329%_))))
                                        (_%loop4327643320%_
                                         _%lp-tl4327943336%_
                                         (cons _%lp-hd4327843333%_
                                               _%e4328043327%_))))
                                    (let ((_%e4328143339%_
                                           (reverse _%e4328043327%_)))
                                      (if (gx#stx-null? _%tl4327243311%_)
                                          ((lambda (_%g4326543342%_
                                                    _%g4326643344%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'with-unwind-protect)
                                                   (cons _%g4326643344%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '()
                                   (foldr (lambda (_%g4336343366%_
                                                   _%g4336443369%_)
                                            (cons _%g4336343366%_
                                                  _%g4336443369%_))
                                          '()
                                          _%g4326543342%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%e4328143339%_
                                           _%hd4326843298%_)
                                          (_%g4326343287%_
                                           _%g4326443291%_)))))))
                      (_%loop4327643320%_ _%target4327343314%_ '()))
                    (_%g4326343287%_ _%g4326443291%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4326343287%_
                                                   _%g4326443291%_))))
                                          (_%g4326343287%_ _%g4326443291%_))))
                                  (_%g4326343287%_ _%g4326443291%_)))))
                      (_%g4326243372%_ (list _%thunk43259%_ _%fini43261%_)))))
                 (_%generate-catch42060%_
                  (lambda (_%handlers42674%_ _%thunk42676%_)
                    (let* ((_%g4267842686%_
                            (lambda (_%g4267942682%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4267942682%_)))
                           (_%g4267743255%_
                            (lambda (_%g4267942690%_)
                              ((lambda (_%g4268042693%_)
                                 (let _%lp42705%_ ((_%rest42708%_
                                                    _%handlers42674%_)
                                                   (_%clauses42710%_ '()))
                                   (let* ((_%rest4271142719%_ _%rest42708%_)
                                          (_%else4271342850%_
                                           (lambda ()
                                             (let* ((_%g4273142755%_
                                                     (lambda (_%g4273242751%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4273242751%_)))
                                                    (_%g4273042846%_
                                                     (lambda (_%g4273242759%_)
                                                       (if (gx#stx-pair?
                                                            _%g4273242759%_)
                                                           (let ((_%e4273542762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g4273242759%_)))
                     (let ((_%hd4273642766%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4273542762%_)))
                           (_%tl4273742769%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4273542762%_))))
                       (if (gx#stx-pair/null? _%hd4273642766%_)
                           (let ((_g44807_
                                  (gx#syntax-split-splice
                                   _%hd4273642766%_
                                   '0)))
                             (begin
                               (let ((_g44808_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g44807_)
                                            (##values-length _g44807_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g44808_ 2)))
                                     (error "Context expects 2 values"
                                            _g44808_)))
                               (let ((_%target4273842772%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g44807_ 0)))
                                     (_%tl4274042775%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g44807_ 1))))
                                 (if (gx#stx-null? _%tl4274042775%_)
                                     (letrec ((_%loop4274142778%_
                                               (lambda (_%hd4273942782%_
                                                        _%clause4274542785%_)
                                                 (if (gx#stx-pair?
                                                      _%hd4273942782%_)
                                                     (let ((_%e4274242787%_
                                                            (gx#syntax-e
                                                             _%hd4273942782%_)))
                                                       (let ((_%lp-hd4274342791%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e4274242787%_)))
                     (_%lp-tl4274442794%_
                      (let () (declare (not safe)) (##cdr _%e4274242787%_))))
                 (_%loop4274142778%_
                  _%lp-tl4274442794%_
                  (cons _%lp-hd4274342791%_ _%clause4274542785%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause4274642797%_
                                                            (reverse _%clause4274542785%_)))
                                                       (if (gx#stx-pair?
                                                            _%tl4273742769%_)
                                                           (let ((_%e4274742800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4273742769%_)))
                     (let ((_%hd4274842804%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4274742800%_)))
                           (_%tl4274942807%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4274742800%_))))
                       (if (gx#stx-null? _%tl4274942807%_)
                           ((lambda (_%g4273342810%_ _%g4273442812%_)
                              (cons (gx#datum->syntax '#f 'with-catch)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g4268042693%_
                                                            '())
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cond)
                          (foldr (lambda (_%g4283742840%_ _%g4283842843%_)
                                   (cons _%g4283742840%_ _%g4283842843%_))
                                 (cons (cons (gx#datum->syntax '#f 'else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise)
                                                         (cons _%g4268042693%_
                                                               '()))
                                                   '()))
                                       '())
                                 _%g4273442812%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%g4273342810%_ '()))))
                            _%hd4274842804%_
                            _%clause4274642797%_)
                           (_%g4273142755%_ _%g4273242759%_))))
                   (_%g4273142755%_ _%g4273242759%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop4274142778%_
                                        _%target4273842772%_
                                        '()))
                                     (_%g4273142755%_ _%g4273242759%_)))))
                           (_%g4273142755%_ _%g4273242759%_))))
                   (_%g4273142755%_ _%g4273242759%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4273042846%_
                                                (list _%clauses42710%_
                                                      _%thunk42676%_)))))
                                          (_%K4271543239%_
                                           (lambda (_%rest42854%_ _%hd42856%_)
                                             (let* ((_%__stx4452744528%_
                                                     _%hd42856%_)
                                                    (_%g4286142931%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx4452744528%_))))
                                               (let ((_%__kont4453044531%_
                                                      (lambda (_%g4286343218%_
                                                               _%g4286443220%_)
                                                        (_%lp42705%_
                                                         _%rest42854%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4286443220%_ '()))
                                   (cons _%g4268042693%_ '()))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons _%g4286343218%_ '())))
                       _%clauses42710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4453244533%_
                                                      (lambda (_%g4287443150%_
                                                               _%g4287543152%_
                                                               _%g4287643153%_)
                                                        (_%lp42705%_
                                                         _%rest42854%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4287643153%_ '()))
                                   (cons _%g4268042693%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4287543152%_
                                                           (cons _%g4268042693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4317243175%_
                                                               _%g4317343178%_)
                                                        (cons _%g4317243175%_
                                                              _%g4317343178%_))
                                                      '()
                                                      _%g4287443150%_)))
                                   '()))
                       _%clauses42710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4453644537%_
                                                      (lambda (_%g4289543058%_
                                                               _%g4289643060%_)
                                                        (_%lp42705%_
                                                         _%rest42854%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4289643060%_
                                                           (cons _%g4268042693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4307643079%_
                                                               _%g4307743082%_)
                                                        (cons _%g4307643079%_
                                                              _%g4307743082%_))
                                                      '()
                                                      _%g4289543058%_)))
                                   '()))
                       _%clauses42710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4454044541%_
                                                      (lambda (_%g4291242976%_
                                                               _%g4291342978%_)
                                                        (_%lp42705%_
                                                         _%rest42854%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (foldr (lambda (_%g4299442997%_
                                                         _%g4299543000%_)
                                                  (cons _%g4299442997%_
                                                        _%g4299543000%_))
                                                '()
                                                _%g4291242976%_))
                                   '()))
                       _%clauses42710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__match4463244633%_
                                                         (lambda (_%e4291442938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd4291542942%_
                          _%tl4291642945%_
                          _%__splice4454244543%_
                          _%target4291742948%_
                          _%tl4291942951%_)
                   (letrec ((_%loop4292042954%_
                             (lambda (_%hd4291842958%_ _%body4292442961%_)
                               (if (gx#stx-pair? _%hd4291842958%_)
                                   (let ((_%e4292142963%_
                                          (gx#syntax-e _%hd4291842958%_)))
                                     (let ((_%lp-tl4292342970%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4292142963%_)))
                                           (_%lp-hd4292242967%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4292142963%_))))
                                       (_%loop4292042954%_
                                        _%lp-tl4292342970%_
                                        (cons _%lp-hd4292242967%_
                                              _%body4292442961%_))))
                                   (let ((_%body4292542973%_
                                          (reverse _%body4292442961%_)))
                                     (let ((_%g4291242976%_ _%body4292542973%_)
                                           (_%g4291342978%_ _%hd4291542942%_))
                                       (if (gx#underscore? _%g4291342978%_)
                                           (_%__kont4454044541%_
                                            _%g4291242976%_
                                            _%g4291342978%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g4286142931%_)))))))))
                     (_%loop4292042954%_ _%target4291742948%_ '()))))
                (_%__match4461844619%_
                 (lambda (_%e4289743010%_
                          _%hd4289843014%_
                          _%tl4289943017%_
                          _%e4290043020%_
                          _%hd4290143024%_
                          _%tl4290243027%_
                          _%__splice4453844539%_
                          _%target4290343030%_
                          _%tl4290543033%_)
                   (letrec ((_%loop4290643036%_
                             (lambda (_%hd4290443040%_ _%body4291043043%_)
                               (if (gx#stx-pair? _%hd4290443040%_)
                                   (let ((_%e4290743045%_
                                          (gx#syntax-e _%hd4290443040%_)))
                                     (let ((_%lp-tl4290943052%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4290743045%_)))
                                           (_%lp-hd4290843049%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4290743045%_))))
                                       (_%loop4290643036%_
                                        _%lp-tl4290943052%_
                                        (cons _%lp-hd4290843049%_
                                              _%body4291043043%_))))
                                   (let ((_%body4291143055%_
                                          (reverse _%body4291043043%_)))
                                     (let ((_%g4289543058%_ _%body4291143055%_)
                                           (_%g4289643060%_ _%hd4290143024%_))
                                       (if (gx#identifier? _%g4289643060%_)
                                           (_%__kont4453644537%_
                                            _%g4289543058%_
                                            _%g4289643060%_)
                                           (_%__match4463244633%_
                                            _%e4289743010%_
                                            _%hd4289843014%_
                                            _%tl4289943017%_
                                            _%__splice4453844539%_
                                            _%target4290343030%_
                                            _%tl4290543033%_))))))))
                     (_%loop4290643036%_ _%target4290343030%_ '()))))
                (_%__match4459644597%_
                 (lambda (_%e4287743092%_
                          _%hd4287843096%_
                          _%tl4287943099%_
                          _%e4288043102%_
                          _%hd4288143106%_
                          _%tl4288243109%_
                          _%e4288343112%_
                          _%hd4288443116%_
                          _%tl4288543119%_
                          _%__splice4453444535%_
                          _%target4288643122%_
                          _%tl4288843125%_)
                   (letrec ((_%loop4288943128%_
                             (lambda (_%hd4288743132%_ _%body4289343135%_)
                               (if (gx#stx-pair? _%hd4288743132%_)
                                   (let ((_%e4289043137%_
                                          (gx#syntax-e _%hd4288743132%_)))
                                     (let ((_%lp-tl4289243144%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4289043137%_)))
                                           (_%lp-hd4289143141%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4289043137%_))))
                                       (_%loop4288943128%_
                                        _%lp-tl4289243144%_
                                        (cons _%lp-hd4289143141%_
                                              _%body4289343135%_))))
                                   (let ((_%body4289443147%_
                                          (reverse _%body4289343135%_)))
                                     (let ((_%g4287443150%_ _%body4289443147%_)
                                           (_%g4287543152%_ _%hd4288443116%_)
                                           (_%g4287643153%_ _%hd4288143106%_))
                                       (if (gx#identifier? _%g4287543152%_)
                                           (_%__kont4453244533%_
                                            _%g4287443150%_
                                            _%g4287543152%_
                                            _%g4287643153%_)
                                           (_%__match4463244633%_
                                            _%e4287743092%_
                                            _%hd4287843096%_
                                            _%tl4287943099%_
                                            _%__splice4453444535%_
                                            _%target4288643122%_
                                            _%tl4288843125%_))))))))
                     (_%loop4288943128%_ _%target4288643122%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx4452744528%_)
                                                       (let ((_%e4286543188%_
                                                              (gx#syntax-e
                                                               _%__stx4452744528%_)))
                                                         (let ((_%tl4286743195%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4286543188%_)))
                       (_%hd4286643192%_
                        (let () (declare (not safe)) (##car _%e4286543188%_))))
                   (if (gx#stx-pair? _%tl4286743195%_)
                       (let ((_%e4286843198%_ (gx#syntax-e _%tl4286743195%_)))
                         (let ((_%tl4287043205%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4286843198%_)))
                               (_%hd4286943202%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4286843198%_))))
                           (if (gx#identifier? _%hd4286943202%_)
                               (if (gx#free-identifier=?
                                    |gerbil/core/more-sugar[1]#_g44809_|
                                    _%hd4286943202%_)
                                   (if (gx#stx-pair? _%tl4287043205%_)
                                       (let ((_%e4287143208%_
                                              (gx#syntax-e _%tl4287043205%_)))
                                         (let ((_%tl4287343215%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4287143208%_)))
                                               (_%hd4287243212%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4287143208%_))))
                                           (if (gx#stx-null? _%tl4287343215%_)
                                               (_%__kont4453044531%_
                                                _%hd4287243212%_
                                                _%hd4286643192%_)
                                               (if (gx#stx-pair?
                                                    _%hd4286643192%_)
                                                   (let ((_%e4288043102%_
                                                          (gx#syntax-e
                                                           _%hd4286643192%_)))
                                                     (let ((_%tl4288243109%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4288043102%_)))
                                                           (_%hd4288143106%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4288043102%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl4288243109%_)
                                                           (let ((_%e4288343112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4288243109%_)))
                     (let ((_%tl4288543119%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4288343112%_)))
                           (_%hd4288443116%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4288343112%_))))
                       (if (gx#stx-null? _%tl4288543119%_)
                           (if (gx#stx-pair/null? _%tl4286743195%_)
                               (let ((_%__splice4453444535%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4286743195%_
                                       '0)))
                                 (let ((_%tl4288843125%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4453444535%_
                                           '1)))
                                       (_%target4288643122%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4453444535%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4288843125%_)
                                       (_%__match4459644597%_
                                        _%e4286543188%_
                                        _%hd4286643192%_
                                        _%tl4286743195%_
                                        _%e4288043102%_
                                        _%hd4288143106%_
                                        _%tl4288243109%_
                                        _%e4288343112%_
                                        _%hd4288443116%_
                                        _%tl4288543119%_
                                        _%__splice4453444535%_
                                        _%target4288643122%_
                                        _%tl4288843125%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4286142931%_)))))
                               (let () (declare (not safe)) (_%g4286142931%_)))
                           (if (gx#stx-pair/null? _%tl4286743195%_)
                               (let ((_%__splice4454244543%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4286743195%_
                                       '0)))
                                 (let ((_%tl4291942951%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4454244543%_
                                           '1)))
                                       (_%target4291742948%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4454244543%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4291942951%_)
                                       (_%__match4463244633%_
                                        _%e4286543188%_
                                        _%hd4286643192%_
                                        _%tl4286743195%_
                                        _%__splice4454244543%_
                                        _%target4291742948%_
                                        _%tl4291942951%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4286142931%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4286142931%_))))))
                   (if (gx#stx-null? _%tl4288243109%_)
                       (if (gx#stx-pair/null? _%tl4286743195%_)
                           (let ((_%__splice4453844539%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4286743195%_
                                   '0)))
                             (let ((_%tl4290543033%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4453844539%_
                                       '1)))
                                   (_%target4290343030%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4453844539%_
                                       '0))))
                               (if (gx#stx-null? _%tl4290543033%_)
                                   (_%__match4461844619%_
                                    _%e4286543188%_
                                    _%hd4286643192%_
                                    _%tl4286743195%_
                                    _%e4288043102%_
                                    _%hd4288143106%_
                                    _%tl4288243109%_
                                    _%__splice4453844539%_
                                    _%target4290343030%_
                                    _%tl4290543033%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4286142931%_)))))
                           (let () (declare (not safe)) (_%g4286142931%_)))
                       (if (gx#stx-pair/null? _%tl4286743195%_)
                           (let ((_%__splice4454244543%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4286743195%_
                                   '0)))
                             (let ((_%tl4291942951%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4454244543%_
                                       '1)))
                                   (_%target4291742948%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4454244543%_
                                       '0))))
                               (if (gx#stx-null? _%tl4291942951%_)
                                   (_%__match4463244633%_
                                    _%e4286543188%_
                                    _%hd4286643192%_
                                    _%tl4286743195%_
                                    _%__splice4454244543%_
                                    _%target4291742948%_
                                    _%tl4291942951%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4286142931%_)))))
                           (let () (declare (not safe)) (_%g4286142931%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4286743195%_)
                                                       (let ((_%__splice4454244543%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4286743195%_
                                                               '0)))
                                                         (let ((_%tl4291942951%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4454244543%_ '1)))
                       (_%target4291742948%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4454244543%_ '0))))
                   (if (gx#stx-null? _%tl4291942951%_)
                       (_%__match4463244633%_
                        _%e4286543188%_
                        _%hd4286643192%_
                        _%tl4286743195%_
                        _%__splice4454244543%_
                        _%target4291742948%_
                        _%tl4291942951%_)
                       (let () (declare (not safe)) (_%g4286142931%_)))))
               (let () (declare (not safe)) (_%g4286142931%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? _%hd4286643192%_)
                                           (let ((_%e4288043102%_
                                                  (gx#syntax-e
                                                   _%hd4286643192%_)))
                                             (let ((_%tl4288243109%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4288043102%_)))
                                                   (_%hd4288143106%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4288043102%_))))
                                               (if (gx#stx-pair?
                                                    _%tl4288243109%_)
                                                   (let ((_%e4288343112%_
                                                          (gx#syntax-e
                                                           _%tl4288243109%_)))
                                                     (let ((_%tl4288543119%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4288343112%_)))
                                                           (_%hd4288443116%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4288343112%_))))
                                                       (if (gx#stx-null?
                                                            _%tl4288543119%_)
                                                           (if (gx#stx-pair/null?
                                                                _%tl4286743195%_)
                                                               (let ((_%__splice4453444535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-split-splice->vector
                               _%tl4286743195%_
                               '0)))
                         (let ((_%tl4288843125%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4453444535%_ '1)))
                               (_%target4288643122%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4453444535%_ '0))))
                           (if (gx#stx-null? _%tl4288843125%_)
                               (_%__match4459644597%_
                                _%e4286543188%_
                                _%hd4286643192%_
                                _%tl4286743195%_
                                _%e4288043102%_
                                _%hd4288143106%_
                                _%tl4288243109%_
                                _%e4288343112%_
                                _%hd4288443116%_
                                _%tl4288543119%_
                                _%__splice4453444535%_
                                _%target4288643122%_
                                _%tl4288843125%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4286142931%_)))))
                       (let () (declare (not safe)) (_%g4286142931%_)))
                   (if (gx#stx-pair/null? _%tl4286743195%_)
                       (let ((_%__splice4454244543%_
                              (gx#syntax-split-splice->vector
                               _%tl4286743195%_
                               '0)))
                         (let ((_%tl4291942951%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4454244543%_ '1)))
                               (_%target4291742948%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4454244543%_ '0))))
                           (if (gx#stx-null? _%tl4291942951%_)
                               (_%__match4463244633%_
                                _%e4286543188%_
                                _%hd4286643192%_
                                _%tl4286743195%_
                                _%__splice4454244543%_
                                _%target4291742948%_
                                _%tl4291942951%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4286142931%_)))))
                       (let () (declare (not safe)) (_%g4286142931%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-null?
                                                        _%tl4288243109%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4286743195%_)
                                                           (let ((_%__splice4453844539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4286743195%_
                           '0)))
                     (let ((_%tl4290543033%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4453844539%_ '1)))
                           (_%target4290343030%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4453844539%_ '0))))
                       (if (gx#stx-null? _%tl4290543033%_)
                           (_%__match4461844619%_
                            _%e4286543188%_
                            _%hd4286643192%_
                            _%tl4286743195%_
                            _%e4288043102%_
                            _%hd4288143106%_
                            _%tl4288243109%_
                            _%__splice4453844539%_
                            _%target4290343030%_
                            _%tl4290543033%_)
                           (let () (declare (not safe)) (_%g4286142931%_)))))
                   (let () (declare (not safe)) (_%g4286142931%_)))
               (if (gx#stx-pair/null? _%tl4286743195%_)
                   (let ((_%__splice4454244543%_
                          (gx#syntax-split-splice->vector
                           _%tl4286743195%_
                           '0)))
                     (let ((_%tl4291942951%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4454244543%_ '1)))
                           (_%target4291742948%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4454244543%_ '0))))
                       (if (gx#stx-null? _%tl4291942951%_)
                           (_%__match4463244633%_
                            _%e4286543188%_
                            _%hd4286643192%_
                            _%tl4286743195%_
                            _%__splice4454244543%_
                            _%target4291742948%_
                            _%tl4291942951%_)
                           (let () (declare (not safe)) (_%g4286142931%_)))))
                   (let () (declare (not safe)) (_%g4286142931%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _%tl4286743195%_)
                                               (let ((_%__splice4454244543%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4286743195%_
                                                       '0)))
                                                 (let ((_%tl4291942951%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4454244543%_
                                                           '1)))
                                                       (_%target4291742948%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4454244543%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4291942951%_)
                                                       (_%__match4463244633%_
                                                        _%e4286543188%_
                                                        _%hd4286643192%_
                                                        _%tl4286743195%_
                                                        _%__splice4454244543%_
                                                        _%target4291742948%_
                                                        _%tl4291942951%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4286142931%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4286142931%_)))))
                                   (if (gx#stx-pair? _%hd4286643192%_)
                                       (let ((_%e4288043102%_
                                              (gx#syntax-e _%hd4286643192%_)))
                                         (let ((_%tl4288243109%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4288043102%_)))
                                               (_%hd4288143106%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4288043102%_))))
                                           (if (gx#stx-pair? _%tl4288243109%_)
                                               (let ((_%e4288343112%_
                                                      (gx#syntax-e
                                                       _%tl4288243109%_)))
                                                 (let ((_%tl4288543119%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4288343112%_)))
                                                       (_%hd4288443116%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4288343112%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4288543119%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4286743195%_)
                                                           (let ((_%__splice4453444535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4286743195%_
                           '0)))
                     (let ((_%tl4288843125%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4453444535%_ '1)))
                           (_%target4288643122%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4453444535%_ '0))))
                       (if (gx#stx-null? _%tl4288843125%_)
                           (_%__match4459644597%_
                            _%e4286543188%_
                            _%hd4286643192%_
                            _%tl4286743195%_
                            _%e4288043102%_
                            _%hd4288143106%_
                            _%tl4288243109%_
                            _%e4288343112%_
                            _%hd4288443116%_
                            _%tl4288543119%_
                            _%__splice4453444535%_
                            _%target4288643122%_
                            _%tl4288843125%_)
                           (let () (declare (not safe)) (_%g4286142931%_)))))
                   (let () (declare (not safe)) (_%g4286142931%_)))
               (if (gx#stx-pair/null? _%tl4286743195%_)
                   (let ((_%__splice4454244543%_
                          (gx#syntax-split-splice->vector
                           _%tl4286743195%_
                           '0)))
                     (let ((_%tl4291942951%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4454244543%_ '1)))
                           (_%target4291742948%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4454244543%_ '0))))
                       (if (gx#stx-null? _%tl4291942951%_)
                           (_%__match4463244633%_
                            _%e4286543188%_
                            _%hd4286643192%_
                            _%tl4286743195%_
                            _%__splice4454244543%_
                            _%target4291742948%_
                            _%tl4291942951%_)
                           (let () (declare (not safe)) (_%g4286142931%_)))))
                   (let () (declare (not safe)) (_%g4286142931%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%tl4288243109%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4286743195%_)
                                                       (let ((_%__splice4453844539%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4286743195%_
                                                               '0)))
                                                         (let ((_%tl4290543033%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4453844539%_ '1)))
                       (_%target4290343030%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4453844539%_ '0))))
                   (if (gx#stx-null? _%tl4290543033%_)
                       (_%__match4461844619%_
                        _%e4286543188%_
                        _%hd4286643192%_
                        _%tl4286743195%_
                        _%e4288043102%_
                        _%hd4288143106%_
                        _%tl4288243109%_
                        _%__splice4453844539%_
                        _%target4290343030%_
                        _%tl4290543033%_)
                       (let () (declare (not safe)) (_%g4286142931%_)))))
               (let () (declare (not safe)) (_%g4286142931%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4286743195%_)
                                                       (let ((_%__splice4454244543%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4286743195%_
                                                               '0)))
                                                         (let ((_%tl4291942951%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4454244543%_ '1)))
                       (_%target4291742948%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4454244543%_ '0))))
                   (if (gx#stx-null? _%tl4291942951%_)
                       (_%__match4463244633%_
                        _%e4286543188%_
                        _%hd4286643192%_
                        _%tl4286743195%_
                        _%__splice4454244543%_
                        _%target4291742948%_
                        _%tl4291942951%_)
                       (let () (declare (not safe)) (_%g4286142931%_)))))
               (let () (declare (not safe)) (_%g4286142931%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair/null? _%tl4286743195%_)
                                           (let ((_%__splice4454244543%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4286743195%_
                                                   '0)))
                                             (let ((_%tl4291942951%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4454244543%_
                                                       '1)))
                                                   (_%target4291742948%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4454244543%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4291942951%_)
                                                   (_%__match4463244633%_
                                                    _%e4286543188%_
                                                    _%hd4286643192%_
                                                    _%tl4286743195%_
                                                    _%__splice4454244543%_
                                                    _%target4291742948%_
                                                    _%tl4291942951%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4286142931%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4286142931%_)))))
                               (if (gx#stx-pair? _%hd4286643192%_)
                                   (let ((_%e4288043102%_
                                          (gx#syntax-e _%hd4286643192%_)))
                                     (let ((_%tl4288243109%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4288043102%_)))
                                           (_%hd4288143106%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4288043102%_))))
                                       (if (gx#stx-pair? _%tl4288243109%_)
                                           (let ((_%e4288343112%_
                                                  (gx#syntax-e
                                                   _%tl4288243109%_)))
                                             (let ((_%tl4288543119%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4288343112%_)))
                                                   (_%hd4288443116%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4288343112%_))))
                                               (if (gx#stx-null?
                                                    _%tl4288543119%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4286743195%_)
                                                       (let ((_%__splice4453444535%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4286743195%_
                                                               '0)))
                                                         (let ((_%tl4288843125%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4453444535%_ '1)))
                       (_%target4288643122%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4453444535%_ '0))))
                   (if (gx#stx-null? _%tl4288843125%_)
                       (_%__match4459644597%_
                        _%e4286543188%_
                        _%hd4286643192%_
                        _%tl4286743195%_
                        _%e4288043102%_
                        _%hd4288143106%_
                        _%tl4288243109%_
                        _%e4288343112%_
                        _%hd4288443116%_
                        _%tl4288543119%_
                        _%__splice4453444535%_
                        _%target4288643122%_
                        _%tl4288843125%_)
                       (let () (declare (not safe)) (_%g4286142931%_)))))
               (let () (declare (not safe)) (_%g4286142931%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4286743195%_)
                                                       (let ((_%__splice4454244543%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4286743195%_
                                                               '0)))
                                                         (let ((_%tl4291942951%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4454244543%_ '1)))
                       (_%target4291742948%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4454244543%_ '0))))
                   (if (gx#stx-null? _%tl4291942951%_)
                       (_%__match4463244633%_
                        _%e4286543188%_
                        _%hd4286643192%_
                        _%tl4286743195%_
                        _%__splice4454244543%_
                        _%target4291742948%_
                        _%tl4291942951%_)
                       (let () (declare (not safe)) (_%g4286142931%_)))))
               (let () (declare (not safe)) (_%g4286142931%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-null? _%tl4288243109%_)
                                               (if (gx#stx-pair/null?
                                                    _%tl4286743195%_)
                                                   (let ((_%__splice4453844539%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4286743195%_
                                                           '0)))
                                                     (let ((_%tl4290543033%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4453844539%_
                                                               '1)))
                                                           (_%target4290343030%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4453844539%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4290543033%_)
                                                           (_%__match4461844619%_
                                                            _%e4286543188%_
                                                            _%hd4286643192%_
                                                            _%tl4286743195%_
                                                            _%e4288043102%_
                                                            _%hd4288143106%_
                                                            _%tl4288243109%_
                                                            _%__splice4453844539%_
                                                            _%target4290343030%_
                                                            _%tl4290543033%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4286142931%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4286142931%_)))
                                               (if (gx#stx-pair/null?
                                                    _%tl4286743195%_)
                                                   (let ((_%__splice4454244543%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4286743195%_
                                                           '0)))
                                                     (let ((_%tl4291942951%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4454244543%_
                                                               '1)))
                                                           (_%target4291742948%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4454244543%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4291942951%_)
                                                           (_%__match4463244633%_
                                                            _%e4286543188%_
                                                            _%hd4286643192%_
                                                            _%tl4286743195%_
                                                            _%__splice4454244543%_
                                                            _%target4291742948%_
                                                            _%tl4291942951%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4286142931%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4286142931%_)))))))
                                   (if (gx#stx-pair/null? _%tl4286743195%_)
                                       (let ((_%__splice4454244543%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4286743195%_
                                               '0)))
                                         (let ((_%tl4291942951%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4454244543%_
                                                   '1)))
                                               (_%target4291742948%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4454244543%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4291942951%_)
                                               (_%__match4463244633%_
                                                _%e4286543188%_
                                                _%hd4286643192%_
                                                _%tl4286743195%_
                                                _%__splice4454244543%_
                                                _%target4291742948%_
                                                _%tl4291942951%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4286142931%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4286142931%_)))))))
                       (if (gx#stx-pair? _%hd4286643192%_)
                           (let ((_%e4288043102%_
                                  (gx#syntax-e _%hd4286643192%_)))
                             (let ((_%tl4288243109%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4288043102%_)))
                                   (_%hd4288143106%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4288043102%_))))
                               (if (gx#stx-pair? _%tl4288243109%_)
                                   (let ((_%e4288343112%_
                                          (gx#syntax-e _%tl4288243109%_)))
                                     (let ((_%tl4288543119%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4288343112%_)))
                                           (_%hd4288443116%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4288343112%_))))
                                       (if (gx#stx-null? _%tl4288543119%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4286743195%_)
                                               (let ((_%__splice4453444535%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4286743195%_
                                                       '0)))
                                                 (let ((_%tl4288843125%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4453444535%_
                                                           '1)))
                                                       (_%target4288643122%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4453444535%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4288843125%_)
                                                       (_%__match4459644597%_
                                                        _%e4286543188%_
                                                        _%hd4286643192%_
                                                        _%tl4286743195%_
                                                        _%e4288043102%_
                                                        _%hd4288143106%_
                                                        _%tl4288243109%_
                                                        _%e4288343112%_
                                                        _%hd4288443116%_
                                                        _%tl4288543119%_
                                                        _%__splice4453444535%_
                                                        _%target4288643122%_
                                                        _%tl4288843125%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4286142931%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4286142931%_)))
                                           (if (gx#stx-pair/null?
                                                _%tl4286743195%_)
                                               (let ((_%__splice4454244543%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4286743195%_
                                                       '0)))
                                                 (let ((_%tl4291942951%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4454244543%_
                                                           '1)))
                                                       (_%target4291742948%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4454244543%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4291942951%_)
                                                       (_%__match4463244633%_
                                                        _%e4286543188%_
                                                        _%hd4286643192%_
                                                        _%tl4286743195%_
                                                        _%__splice4454244543%_
                                                        _%target4291742948%_
                                                        _%tl4291942951%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4286142931%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4286142931%_))))))
                                   (if (gx#stx-null? _%tl4288243109%_)
                                       (if (gx#stx-pair/null? _%tl4286743195%_)
                                           (let ((_%__splice4453844539%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4286743195%_
                                                   '0)))
                                             (let ((_%tl4290543033%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4453844539%_
                                                       '1)))
                                                   (_%target4290343030%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4453844539%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4290543033%_)
                                                   (_%__match4461844619%_
                                                    _%e4286543188%_
                                                    _%hd4286643192%_
                                                    _%tl4286743195%_
                                                    _%e4288043102%_
                                                    _%hd4288143106%_
                                                    _%tl4288243109%_
                                                    _%__splice4453844539%_
                                                    _%target4290343030%_
                                                    _%tl4290543033%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4286142931%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4286142931%_)))
                                       (if (gx#stx-pair/null? _%tl4286743195%_)
                                           (let ((_%__splice4454244543%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4286743195%_
                                                   '0)))
                                             (let ((_%tl4291942951%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4454244543%_
                                                       '1)))
                                                   (_%target4291742948%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4454244543%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4291942951%_)
                                                   (_%__match4463244633%_
                                                    _%e4286543188%_
                                                    _%hd4286643192%_
                                                    _%tl4286743195%_
                                                    _%__splice4454244543%_
                                                    _%target4291742948%_
                                                    _%tl4291942951%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4286142931%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4286142931%_)))))))
                           (if (gx#stx-pair/null? _%tl4286743195%_)
                               (let ((_%__splice4454244543%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4286743195%_
                                       '0)))
                                 (let ((_%tl4291942951%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4454244543%_
                                           '1)))
                                       (_%target4291742948%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4454244543%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4291942951%_)
                                       (_%__match4463244633%_
                                        _%e4286543188%_
                                        _%hd4286643192%_
                                        _%tl4286743195%_
                                        _%__splice4454244543%_
                                        _%target4291742948%_
                                        _%tl4291942951%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4286142931%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4286142931%_)))))))
               (let () (declare (not safe)) (_%g4286142931%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (pair? _%rest4271142719%_)
                                         (let ((_%hd4271643243%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%rest4271142719%_)))
                                               (_%tl4271743246%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest4271142719%_))))
                                           (let* ((_%hd43249%_
                                                   _%hd4271643243%_)
                                                  (_%rest43252%_
                                                   _%tl4271743246%_))
                                             (_%K4271543239%_
                                              _%rest43252%_
                                              _%hd43249%_)))
                                         (_%else4271342850%_)))))
                               _%g4267942690%_))))
                      (_%g4267743255%_ (gx#genident))))))
          (let* ((_%g4206242082%_
                  (lambda (_%g4206342078%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g4206342078%_)))
                 (_%g4206142670%_
                  (lambda (_%g4206342086%_)
                    (if (gx#stx-pair? _%g4206342086%_)
                        (let ((_%e4206542089%_ (gx#syntax-e _%g4206342086%_)))
                          (let ((_%hd4206642093%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4206542089%_)))
                                (_%tl4206742096%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4206542089%_))))
                            (if (gx#stx-pair/null? _%tl4206742096%_)
                                (let ((_g44810_
                                       (gx#syntax-split-splice
                                        _%tl4206742096%_
                                        '0)))
                                  (begin
                                    (let ((_g44811_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g44810_)
                                                 (##values-length _g44810_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g44811_ 2)))
                                          (error "Context expects 2 values"
                                                 _g44811_)))
                                    (let ((_%target4206842099%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g44810_ 0)))
                                          (_%tl4207042102%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g44810_ 1))))
                                      (if (gx#stx-null? _%tl4207042102%_)
                                          (letrec ((_%loop4207142105%_
                                                    (lambda (_%hd4206942109%_
                                                             _%e4207542112%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4206942109%_)
                                                          (let ((_%e4207242114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4206942109%_)))
                    (let ((_%lp-hd4207342118%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4207242114%_)))
                          (_%lp-tl4207442121%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4207242114%_))))
                      (_%loop4207142105%_
                       _%lp-tl4207442121%_
                       (cons _%lp-hd4207342118%_ _%e4207542112%_))))
                  (let ((_%e4207642124%_ (reverse _%e4207542112%_)))
                    ((lambda (_%g4206442127%_)
                       (let _%lp42144%_ ((_%rest42147%_
                                          (foldr (lambda (_%g4266142664%_
                                                          _%g4266242667%_)
                                                   (cons _%g4266142664%_
                                                         _%g4266242667%_))
                                                 '()
                                                 _%g4206442127%_))
                                         (_%body42149%_ '()))
                         (let* ((_%__stx4475344754%_ _%rest42147%_)
                                (_%g4215242164%_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%__stx4475344754%_))))
                           (let ((_%__kont4475644757%_
                                  (lambda (_%g4215442192%_ _%g4215542194%_)
                                    (let* ((_%__stx4470144702%_
                                            _%g4215542194%_)
                                           (_%g4221142244%_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%__stx4470144702%_))))
                                      (let ((_%__kont4470444705%_
                                             (lambda (_%g4221342631%_)
                                               (if (gx#stx-null?
                                                    _%g4215442192%_)
                                                   (_%generate-fini42059%_
                                                    (_%generate-thunk42057%_
                                                     _%body42149%_)
                                                    (foldr (lambda (_%g4264542648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4264642651%_)
                     (cons _%g4264542648%_ _%g4264642651%_))
                   '()
                   _%g4221342631%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced finally clause"
                                                    _%stx42054%_))))
                                            (_%__kont4470844709%_
                                             (lambda (_%g4222642300%_)
                                               (let _%lp42317%_ ((_%rest42320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4215442192%_)
                         (_%handlers42322%_
                          (cons (foldr (lambda (_%g4257742580%_
                                                _%g4257842583%_)
                                         (cons _%g4257742580%_
                                               _%g4257842583%_))
                                       '()
                                       _%g4222642300%_)
                                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx4463544636%_
                                                         _%rest42320%_)
                                                        (_%g4232642366%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx4463544636%_))))
                                                   (let ((_%__kont4463844639%_
                                                          (lambda (_%g4232842547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4232942549%_)
                    (_%lp42317%_
                     _%g4232842547%_
                     (cons (foldr (lambda (_%g4256542568%_ _%g4256642571%_)
                                    (cons _%g4256542568%_ _%g4256642571%_))
                                  '()
                                  _%g4232942549%_)
                           _%handlers42322%_))))
                 (_%__kont4464244643%_
                  (lambda (_%g4234542432%_)
                    (let* ((_%g4245342461%_
                            (lambda (_%g4245442457%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4245442457%_)))
                           (_%g4245242488%_
                            (lambda (_%g4245442465%_)
                              ((lambda (_%g4245542468%_)
                                 (_%generate-fini42059%_
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '() (cons _%g4245542468%_ '())))
                                  (foldr (lambda (_%g4247942482%_
                                                  _%g4248042485%_)
                                           (cons _%g4247942482%_
                                                 _%g4248042485%_))
                                         '()
                                         _%g4234542432%_)))
                               _%g4245442465%_))))
                      (_%g4245242488%_
                       (_%generate-catch42060%_
                        _%handlers42322%_
                        (_%generate-thunk42057%_ _%body42149%_))))))
                 (_%__kont4464644647%_
                  (lambda ()
                    (_%generate-catch42060%_
                     _%handlers42322%_
                     (_%generate-thunk42057%_ _%body42149%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%g4232542377%_
                                                             (lambda ()
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%__stx4463544636%_)
                           (_%__kont4464644647%_)
                           (let () (declare (not safe)) (_%g4232642366%_)))))
                    (_%__match4469644697%_
                     (lambda (_%e4234642384%_
                              _%hd4234742388%_
                              _%tl4234842391%_
                              _%e4234942394%_
                              _%hd4235042398%_
                              _%tl4235142401%_
                              _%__splice4464444645%_
                              _%target4235242404%_
                              _%tl4235442407%_)
                       (letrec ((_%loop4235542410%_
                                 (lambda (_%hd4235342414%_ _%fini4235942417%_)
                                   (if (gx#stx-pair? _%hd4235342414%_)
                                       (let ((_%e4235642419%_
                                              (gx#syntax-e _%hd4235342414%_)))
                                         (let ((_%lp-tl4235842426%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4235642419%_)))
                                               (_%lp-hd4235742423%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4235642419%_))))
                                           (_%loop4235542410%_
                                            _%lp-tl4235842426%_
                                            (cons _%lp-hd4235742423%_
                                                  _%fini4235942417%_))))
                                       (let ((_%fini4236042429%_
                                              (reverse _%fini4235942417%_)))
                                         (if (gx#stx-null? _%tl4234842391%_)
                                             (_%__kont4464244643%_
                                              _%fini4236042429%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4232642366%_))))))))
                         (_%loop4235542410%_ _%target4235242404%_ '()))))
                    (_%__match4467244673%_
                     (lambda (_%e4233042499%_
                              _%hd4233142503%_
                              _%tl4233242506%_
                              _%e4233342509%_
                              _%hd4233442513%_
                              _%tl4233542516%_
                              _%__splice4464044641%_
                              _%target4233642519%_
                              _%tl4233842522%_)
                       (letrec ((_%loop4233942525%_
                                 (lambda (_%hd4233742529%_
                                          _%handler4234342532%_)
                                   (if (gx#stx-pair? _%hd4233742529%_)
                                       (let ((_%e4234042534%_
                                              (gx#syntax-e _%hd4233742529%_)))
                                         (let ((_%lp-tl4234242541%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4234042534%_)))
                                               (_%lp-hd4234142538%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4234042534%_))))
                                           (_%loop4233942525%_
                                            _%lp-tl4234242541%_
                                            (cons _%lp-hd4234142538%_
                                                  _%handler4234342532%_))))
                                       (let ((_%handler4234442544%_
                                              (reverse _%handler4234342532%_)))
                                         (_%__kont4463844639%_
                                          _%tl4233242506%_
                                          _%handler4234442544%_))))))
                         (_%loop4233942525%_ _%target4233642519%_ '())))))
               (if (gx#stx-pair? _%__stx4463544636%_)
                   (let ((_%e4233042499%_ (gx#syntax-e _%__stx4463544636%_)))
                     (let ((_%tl4233242506%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4233042499%_)))
                           (_%hd4233142503%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4233042499%_))))
                       (if (gx#stx-pair? _%hd4233142503%_)
                           (let ((_%e4233342509%_
                                  (gx#syntax-e _%hd4233142503%_)))
                             (let ((_%tl4233542516%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4233342509%_)))
                                   (_%hd4233442513%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4233342509%_))))
                               (if (gx#identifier? _%hd4233442513%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/more-sugar[1]#_g44812_|
                                        _%hd4233442513%_)
                                       (if (gx#stx-pair/null? _%tl4233542516%_)
                                           (let ((_%__splice4464044641%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4233542516%_
                                                   '0)))
                                             (let ((_%tl4233842522%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4464044641%_
                                                       '1)))
                                                   (_%target4233642519%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4464044641%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4233842522%_)
                                                   (_%__match4467244673%_
                                                    _%e4233042499%_
                                                    _%hd4233142503%_
                                                    _%tl4233242506%_
                                                    _%e4233342509%_
                                                    _%hd4233442513%_
                                                    _%tl4233542516%_
                                                    _%__splice4464044641%_
                                                    _%target4233642519%_
                                                    _%tl4233842522%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4232642366%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4232642366%_)))
                                       (if (gx#free-identifier=?
                                            |gerbil/core/more-sugar[1]#_g44813_|
                                            _%hd4233442513%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4233542516%_)
                                               (let ((_%__splice4464444645%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4233542516%_
                                                       '0)))
                                                 (let ((_%tl4235442407%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4464444645%_
                                                           '1)))
                                                       (_%target4235242404%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4464444645%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4235442407%_)
                                                       (_%__match4469644697%_
                                                        _%e4233042499%_
                                                        _%hd4233142503%_
                                                        _%tl4233242506%_
                                                        _%e4233342509%_
                                                        _%hd4233442513%_
                                                        _%tl4233542516%_
                                                        _%__splice4464444645%_
                                                        _%target4235242404%_
                                                        _%tl4235442407%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4232642366%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4232642366%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4232642366%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4232642366%_)))))
                           (let () (declare (not safe)) (_%g4232642366%_)))))
                   (let () (declare (not safe)) (_%g4232542377%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont4471244713%_
                                             (lambda ()
                                               (_%lp42144%_
                                                _%g4215442192%_
                                                (cons _%g4215542194%_
                                                      _%body42149%_)))))
                                        (let* ((_%__match4475044751%_
                                                (lambda (_%e4222742262%_
                                                         _%hd4222842266%_
                                                         _%tl4222942269%_
                                                         _%__splice4471044711%_
                                                         _%target4223042272%_
                                                         _%tl4223242275%_)
                                                  (letrec ((_%loop4223342278%_
                                                            (lambda (_%hd4223142282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%handler4223742285%_)
                      (if (gx#stx-pair? _%hd4223142282%_)
                          (let ((_%e4223442287%_
                                 (gx#syntax-e _%hd4223142282%_)))
                            (let ((_%lp-tl4223642294%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4223442287%_)))
                                  (_%lp-hd4223542291%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4223442287%_))))
                              (_%loop4223342278%_
                               _%lp-tl4223642294%_
                               (cons _%lp-hd4223542291%_
                                     _%handler4223742285%_))))
                          (let ((_%handler4223842297%_
                                 (reverse _%handler4223742285%_)))
                            (_%__kont4470844709%_ _%handler4223842297%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4223342278%_
                                                     _%target4223042272%_
                                                     '()))))
                                               (_%__match4473244733%_
                                                (lambda (_%e4221442593%_
                                                         _%hd4221542597%_
                                                         _%tl4221642600%_
                                                         _%__splice4470644707%_
                                                         _%target4221742603%_
                                                         _%tl4221942606%_)
                                                  (letrec ((_%loop4222042609%_
                                                            (lambda (_%hd4221842613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%fini4222442616%_)
                      (if (gx#stx-pair? _%hd4221842613%_)
                          (let ((_%e4222142618%_
                                 (gx#syntax-e _%hd4221842613%_)))
                            (let ((_%lp-tl4222342625%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4222142618%_)))
                                  (_%lp-hd4222242622%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4222142618%_))))
                              (_%loop4222042609%_
                               _%lp-tl4222342625%_
                               (cons _%lp-hd4222242622%_ _%fini4222442616%_))))
                          (let ((_%fini4222542628%_
                                 (reverse _%fini4222442616%_)))
                            (_%__kont4470444705%_ _%fini4222542628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4222042609%_
                                                     _%target4221742603%_
                                                     '())))))
                                          (if (gx#stx-pair?
                                               _%__stx4470144702%_)
                                              (let ((_%e4221442593%_
                                                     (gx#syntax-e
                                                      _%__stx4470144702%_)))
                                                (let ((_%tl4221642600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4221442593%_)))
                                                      (_%hd4221542597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4221442593%_))))
                                                  (if (gx#identifier?
                                                       _%hd4221542597%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/more-sugar[1]#_g44814_|
                                                           _%hd4221542597%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4221642600%_)
                                                              (let ((_%__splice4470644707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4221642600%_
                              '0)))
                        (let ((_%tl4221942606%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4470644707%_ '1)))
                              (_%target4221742603%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4470644707%_ '0))))
                          (if (gx#stx-null? _%tl4221942606%_)
                              (_%__match4473244733%_
                               _%e4221442593%_
                               _%hd4221542597%_
                               _%tl4221642600%_
                               _%__splice4470644707%_
                               _%target4221742603%_
                               _%tl4221942606%_)
                              (_%__kont4471244713%_))))
                      (_%__kont4471244713%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/more-sugar[1]#_g44815_|
                       _%hd4221542597%_)
                      (if (gx#stx-pair/null? _%tl4221642600%_)
                          (let ((_%__splice4471044711%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4221642600%_
                                  '0)))
                            (let ((_%tl4223242275%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice4471044711%_ '1)))
                                  (_%target4223042272%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice4471044711%_
                                      '0))))
                              (if (gx#stx-null? _%tl4223242275%_)
                                  (_%__match4475044751%_
                                   _%e4221442593%_
                                   _%hd4221542597%_
                                   _%tl4221642600%_
                                   _%__splice4471044711%_
                                   _%target4223042272%_
                                   _%tl4223242275%_)
                                  (_%__kont4471244713%_))))
                          (_%__kont4471244713%_))
                      (_%__kont4471244713%_)))
              (_%__kont4471244713%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont4471244713%_)))))))
                                 (_%__kont4475844759%_
                                  (lambda ()
                                    (cons 'begin (reverse _%body42149%_)))))
                             (let ((_%g4215142175%_
                                    (lambda ()
                                      (if (gx#stx-null? _%__stx4475344754%_)
                                          (_%__kont4475844759%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4215242164%_))))))
                               (if (gx#stx-pair? _%__stx4475344754%_)
                                   (let ((_%e4215642182%_
                                          (gx#syntax-e _%__stx4475344754%_)))
                                     (let ((_%tl4215842189%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4215642182%_)))
                                           (_%hd4215742186%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4215642182%_))))
                                       (_%__kont4475644757%_
                                        _%tl4215842189%_
                                        _%hd4215742186%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4215142175%_))))))))
                     _%e4207642124%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop4207142105%_
                                             _%target4206842099%_
                                             '()))
                                          (_%g4206242082%_ _%g4206342086%_)))))
                                (_%g4206242082%_ _%g4206342086%_))))
                        (_%g4206242082%_ _%g4206342086%_)))))
            (_%g4206142670%_ _%stx42054%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx43470%_)
        (let* ((_%g4347443503%_
                (lambda (_%g4347543499%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4347543499%_)))
               (_%g4347343599%_
                (lambda (_%g4347543507%_)
                  (if (gx#stx-pair? _%g4347543507%_)
                      (let ((_%e4347843510%_ (gx#syntax-e _%g4347543507%_)))
                        (let ((_%hd4347943514%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4347843510%_)))
                              (_%tl4348043517%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4347843510%_))))
                          (if (gx#stx-pair/null? _%tl4348043517%_)
                              (let ((_g44816_
                                     (gx#syntax-split-splice
                                      _%tl4348043517%_
                                      '0)))
                                (begin
                                  (let ((_g44817_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g44816_)
                                               (##values-length _g44816_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g44817_ 2)))
                                        (error "Context expects 2 values"
                                               _g44817_)))
                                  (let ((_%target4348143520%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44816_ 0)))
                                        (_%tl4348343523%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44816_ 1))))
                                    (if (gx#stx-null? _%tl4348343523%_)
                                        (letrec ((_%loop4348443526%_
                                                  (lambda (_%hd4348243530%_
                                                           _%val4348843533%_
                                                           _%key4348943534%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4348243530%_)
                                                        (let ((_%e4348543536%_
                                                               (gx#syntax-e
                                                                _%hd4348243530%_)))
                                                          (let ((_%lp-hd4348643540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4348543536%_)))
                        (_%lp-tl4348743543%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4348543536%_))))
                    (if (gx#stx-pair? _%lp-hd4348643540%_)
                        (let ((_%e4349243546%_
                               (gx#syntax-e _%lp-hd4348643540%_)))
                          (let ((_%hd4349343550%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4349243546%_)))
                                (_%tl4349443553%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4349243546%_))))
                            (if (gx#stx-pair? _%tl4349443553%_)
                                (let ((_%e4349543556%_
                                       (gx#syntax-e _%tl4349443553%_)))
                                  (let ((_%hd4349643560%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4349543556%_)))
                                        (_%tl4349743563%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4349543556%_))))
                                    (if (gx#stx-null? _%tl4349743563%_)
                                        (_%loop4348443526%_
                                         _%lp-tl4348743543%_
                                         (cons _%hd4349643560%_
                                               _%val4348843533%_)
                                         (cons _%hd4349343550%_
                                               _%key4348943534%_))
                                        (_%g4347443503%_ _%g4347543507%_))))
                                (_%g4347443503%_ _%g4347543507%_))))
                        (_%g4347443503%_ _%g4347543507%_))))
                (let ((_%val4349043566%_ (reverse _%val4348843533%_))
                      (_%key4349143568%_ (reverse _%key4348943534%_)))
                  ((lambda (_%g4347643570%_ _%g4347743572%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4347643570%_
                                    _%g4347743572%_)
                                   (foldr (lambda (_%g4358743591%_
                                                   _%g4358843594%_
                                                   _%g4358943596%_)
                                            (cons (cons _%g4358843594%_
                                                        (cons _%g4358743591%_
                                                              '()))
                                                  _%g4358943596%_))
                                          '()
                                          _%g4347643570%_
                                          _%g4347743572%_)))))
                   _%val4349043566%_
                   _%key4349143568%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4348443526%_
                                           _%target4348143520%_
                                           '()
                                           '()))
                                        (_%g4347443503%_ _%g4347543507%_)))))
                              (_%g4347443503%_ _%g4347543507%_))))
                      (_%g4347443503%_ _%g4347543507%_)))))
          (_%g4347343599%_ _%$stx43470%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx43604%_)
        (let* ((_%g4360843637%_
                (lambda (_%g4360943633%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4360943633%_)))
               (_%g4360743733%_
                (lambda (_%g4360943641%_)
                  (if (gx#stx-pair? _%g4360943641%_)
                      (let ((_%e4361243644%_ (gx#syntax-e _%g4360943641%_)))
                        (let ((_%hd4361343648%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4361243644%_)))
                              (_%tl4361443651%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4361243644%_))))
                          (if (gx#stx-pair/null? _%tl4361443651%_)
                              (let ((_g44818_
                                     (gx#syntax-split-splice
                                      _%tl4361443651%_
                                      '0)))
                                (begin
                                  (let ((_g44819_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g44818_)
                                               (##values-length _g44818_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g44819_ 2)))
                                        (error "Context expects 2 values"
                                               _g44819_)))
                                  (let ((_%target4361543654%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44818_ 0)))
                                        (_%tl4361743657%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44818_ 1))))
                                    (if (gx#stx-null? _%tl4361743657%_)
                                        (letrec ((_%loop4361843660%_
                                                  (lambda (_%hd4361643664%_
                                                           _%val4362243667%_
                                                           _%key4362343668%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4361643664%_)
                                                        (let ((_%e4361943670%_
                                                               (gx#syntax-e
                                                                _%hd4361643664%_)))
                                                          (let ((_%lp-hd4362043674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4361943670%_)))
                        (_%lp-tl4362143677%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4361943670%_))))
                    (if (gx#stx-pair? _%lp-hd4362043674%_)
                        (let ((_%e4362643680%_
                               (gx#syntax-e _%lp-hd4362043674%_)))
                          (let ((_%hd4362743684%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4362643680%_)))
                                (_%tl4362843687%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4362643680%_))))
                            (if (gx#stx-pair? _%tl4362843687%_)
                                (let ((_%e4362943690%_
                                       (gx#syntax-e _%tl4362843687%_)))
                                  (let ((_%hd4363043694%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4362943690%_)))
                                        (_%tl4363143697%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4362943690%_))))
                                    (if (gx#stx-null? _%tl4363143697%_)
                                        (_%loop4361843660%_
                                         _%lp-tl4362143677%_
                                         (cons _%hd4363043694%_
                                               _%val4362243667%_)
                                         (cons _%hd4362743684%_
                                               _%key4362343668%_))
                                        (_%g4360843637%_ _%g4360943641%_))))
                                (_%g4360843637%_ _%g4360943641%_))))
                        (_%g4360843637%_ _%g4360943641%_))))
                (let ((_%val4362443700%_ (reverse _%val4362243667%_))
                      (_%key4362543702%_ (reverse _%key4362343668%_)))
                  ((lambda (_%g4361043704%_ _%g4361143706%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4361043704%_
                                    _%g4361143706%_)
                                   (foldr (lambda (_%g4372143725%_
                                                   _%g4372243728%_
                                                   _%g4372343730%_)
                                            (cons (cons _%g4372243728%_
                                                        (cons _%g4372143725%_
                                                              '()))
                                                  _%g4372343730%_))
                                          '()
                                          _%g4361043704%_
                                          _%g4361143706%_)))))
                   _%val4362443700%_
                   _%key4362543702%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4361843660%_
                                           _%target4361543654%_
                                           '()
                                           '()))
                                        (_%g4360843637%_ _%g4360943641%_)))))
                              (_%g4360843637%_ _%g4360943641%_))))
                      (_%g4360843637%_ _%g4360943641%_)))))
          (_%g4360743733%_ _%$stx43604%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx43738%_)
        (let* ((_%g4374243771%_
                (lambda (_%g4374343767%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4374343767%_)))
               (_%g4374143867%_
                (lambda (_%g4374343775%_)
                  (if (gx#stx-pair? _%g4374343775%_)
                      (let ((_%e4374643778%_ (gx#syntax-e _%g4374343775%_)))
                        (let ((_%hd4374743782%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4374643778%_)))
                              (_%tl4374843785%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4374643778%_))))
                          (if (gx#stx-pair/null? _%tl4374843785%_)
                              (let ((_g44820_
                                     (gx#syntax-split-splice
                                      _%tl4374843785%_
                                      '0)))
                                (begin
                                  (let ((_g44821_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g44820_)
                                               (##values-length _g44820_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g44821_ 2)))
                                        (error "Context expects 2 values"
                                               _g44821_)))
                                  (let ((_%target4374943788%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44820_ 0)))
                                        (_%tl4375143791%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g44820_ 1))))
                                    (if (gx#stx-null? _%tl4375143791%_)
                                        (letrec ((_%loop4375243794%_
                                                  (lambda (_%hd4375043798%_
                                                           _%val4375643801%_
                                                           _%key4375743802%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4375043798%_)
                                                        (let ((_%e4375343804%_
                                                               (gx#syntax-e
                                                                _%hd4375043798%_)))
                                                          (let ((_%lp-hd4375443808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4375343804%_)))
                        (_%lp-tl4375543811%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4375343804%_))))
                    (if (gx#stx-pair? _%lp-hd4375443808%_)
                        (let ((_%e4376043814%_
                               (gx#syntax-e _%lp-hd4375443808%_)))
                          (let ((_%hd4376143818%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4376043814%_)))
                                (_%tl4376243821%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4376043814%_))))
                            (if (gx#stx-pair? _%tl4376243821%_)
                                (let ((_%e4376343824%_
                                       (gx#syntax-e _%tl4376243821%_)))
                                  (let ((_%hd4376443828%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4376343824%_)))
                                        (_%tl4376543831%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4376343824%_))))
                                    (if (gx#stx-null? _%tl4376543831%_)
                                        (_%loop4375243794%_
                                         _%lp-tl4375543811%_
                                         (cons _%hd4376443828%_
                                               _%val4375643801%_)
                                         (cons _%hd4376143818%_
                                               _%key4375743802%_))
                                        (_%g4374243771%_ _%g4374343775%_))))
                                (_%g4374243771%_ _%g4374343775%_))))
                        (_%g4374243771%_ _%g4374343775%_))))
                (let ((_%val4375843834%_ (reverse _%val4375643801%_))
                      (_%key4375943836%_ (reverse _%key4375743802%_)))
                  ((lambda (_%g4374443838%_ _%g4374543840%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4374443838%_
                                    _%g4374543840%_)
                                   (foldr (lambda (_%g4385543859%_
                                                   _%g4385643862%_
                                                   _%g4385743864%_)
                                            (cons (cons _%g4385643862%_
                                                        (cons _%g4385543859%_
                                                              '()))
                                                  _%g4385743864%_))
                                          '()
                                          _%g4374443838%_
                                          _%g4374543840%_)))))
                   _%val4375843834%_
                   _%key4375943836%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4375243794%_
                                           _%target4374943788%_
                                           '()
                                           '()))
                                        (_%g4374243771%_ _%g4374343775%_)))))
                              (_%g4374243771%_ _%g4374343775%_))))
                      (_%g4374243771%_ _%g4374343775%_)))))
          (_%g4374143867%_ _%$stx43738%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx43872%_)
        (let* ((_%g4387543899%_
                (lambda (_%g4387643895%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4387643895%_)))
               (_%g4387444140%_
                (lambda (_%g4387643903%_)
                  (if (gx#stx-pair? _%g4387643903%_)
                      (let ((_%e4387943906%_ (gx#syntax-e _%g4387643903%_)))
                        (let ((_%hd4388043910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4387943906%_)))
                              (_%tl4388143913%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4387943906%_))))
                          (if (gx#stx-pair? _%tl4388143913%_)
                              (let ((_%e4388243916%_
                                     (gx#syntax-e _%tl4388143913%_)))
                                (let ((_%hd4388343920%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4388243916%_)))
                                      (_%tl4388443923%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4388243916%_))))
                                  (if (gx#stx-pair/null? _%tl4388443923%_)
                                      (let ((_g44822_
                                             (gx#syntax-split-splice
                                              _%tl4388443923%_
                                              '0)))
                                        (begin
                                          (let ((_g44823_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g44822_)
                                                       (##values-length
                                                        _g44822_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g44823_ 2)))
                                                (error "Context expects 2 values"
                                                       _g44823_)))
                                          (let ((_%target4388543926%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44822_ 0)))
                                                (_%tl4388743929%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g44822_ 1))))
                                            (if (gx#stx-null? _%tl4388743929%_)
                                                (letrec ((_%loop4388843932%_
                                                          (lambda (_%hd4388643936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%entry4389243939%_)
                    (if (gx#stx-pair? _%hd4388643936%_)
                        (let ((_%e4388943941%_ (gx#syntax-e _%hd4388643936%_)))
                          (let ((_%lp-hd4389043945%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4388943941%_)))
                                (_%lp-tl4389143948%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4388943941%_))))
                            (_%loop4388843932%_
                             _%lp-tl4389143948%_
                             (cons _%lp-hd4389043945%_ _%entry4389243939%_))))
                        (let ((_%entry4389343951%_
                               (reverse _%entry4389243939%_)))
                          ((lambda (_%g4387743954%_ _%g4387843956%_)
                             (let* ((_%g4397443982%_
                                     (lambda (_%g4397543978%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g4397543978%_)))
                                    (_%g4397344128%_
                                     (lambda (_%g4397543986%_)
                                       ((lambda (_%g4397643989%_)
                                          (let* ((_%g4400144027%_
                                                  (lambda (_%g4400244023%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g4400244023%_)))
                                                 (_%g4400044116%_
                                                  (lambda (_%g4400244031%_)
                                                    (if (gx#stx-pair/null?
                                                         _%g4400244031%_)
                                                        (let ((_g44824_
                                                               (gx#syntax-split-splice
                                                                _%g4400244031%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g44825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g44824_)
                                 (##values-length _g44824_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g44825_ 2)))
                          (error "Context expects 2 values" _g44825_)))
                    (let ((_%target4400544034%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g44824_ 0)))
                          (_%tl4400744037%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g44824_ 1))))
                      (if (gx#stx-null? _%tl4400744037%_)
                          (letrec ((_%loop4400844040%_
                                    (lambda (_%hd4400644044%_
                                             _%val4401244047%_
                                             _%key4401344048%_)
                                      (if (gx#stx-pair? _%hd4400644044%_)
                                          (let ((_%e4400944050%_
                                                 (gx#syntax-e
                                                  _%hd4400644044%_)))
                                            (let ((_%lp-hd4401044054%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4400944050%_)))
                                                  (_%lp-tl4401144057%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4400944050%_))))
                                              (if (gx#stx-pair?
                                                   _%lp-hd4401044054%_)
                                                  (let ((_%e4401644060%_
                                                         (gx#syntax-e
                                                          _%lp-hd4401044054%_)))
                                                    (let ((_%hd4401744064%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4401644060%_)))
                                                          (_%tl4401844067%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4401644060%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4401844067%_)
                                                          (let ((_%e4401944070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4401844067%_)))
                    (let ((_%hd4402044074%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4401944070%_)))
                          (_%tl4402144077%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4401944070%_))))
                      (if (gx#stx-null? _%tl4402144077%_)
                          (_%loop4400844040%_
                           _%lp-tl4401144057%_
                           (cons _%hd4402044074%_ _%val4401244047%_)
                           (cons _%hd4401744064%_ _%key4401344048%_))
                          (_%g4400144027%_ _%g4400244031%_))))
                  (_%g4400144027%_ _%g4400244031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4400144027%_
                                                   _%g4400244031%_))))
                                          (let ((_%val4401444080%_
                                                 (reverse _%val4401244047%_))
                                                (_%key4401544082%_
                                                 (reverse _%key4401344048%_)))
                                            ((lambda (_%g4400344084%_
                                                      _%g4400444086%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ht)
                         (cons (cons _%g4387843956%_
                                     (cons 'size: (cons _%g4397643989%_ '())))
                               '()))
                   (begin
                     (gx#syntax-check-splice-targets
                      _%g4400344084%_
                      _%g4400444086%_)
                     (foldr (lambda (_%g4410444108%_
                                     _%g4410544111%_
                                     _%g4410644113%_)
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'ht)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            (cons _%g4410544111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g4410444108%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g4410644113%_))
                            (cons (gx#datum->syntax '#f 'ht) '())
                            _%g4400344084%_
                            _%g4400444086%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%val4401444080%_
                                             _%key4401544082%_))))))
                            (_%loop4400844040%_ _%target4400544034%_ '() '()))
                          (_%g4400144027%_ _%g4400244031%_)))))
                (_%g4400144027%_ _%g4400244031%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4400044116%_
                                             (foldr (lambda (_%g4411944122%_
                                                             _%g4412044125%_)
                                                      (cons _%g4411944122%_
                                                            _%g4412044125%_))
                                                    '()
                                                    _%g4387743954%_))))
                                        _%g4397543986%_))))
                               (_%g4397344128%_
                                (gx#stx-length
                                 (foldr (lambda (_%g4413144134%_
                                                 _%g4413244137%_)
                                          (cons _%g4413144134%_
                                                _%g4413244137%_))
                                        '()
                                        _%g4387743954%_)))))
                           _%entry4389343951%_
                           _%hd4388343920%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4388843932%_
                                                   _%target4388543926%_
                                                   '()))
                                                (_%g4387543899%_
                                                 _%g4387643903%_)))))
                                      (_%g4387543899%_ _%g4387643903%_))))
                              (_%g4387543899%_ _%g4387643903%_))))
                      (_%g4387543899%_ _%g4387643903%_)))))
          (_%g4387444140%_ _%stx43872%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx44146%_)
        (let* ((_%g4414944163%_
                (lambda (_%g4415044159%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4415044159%_)))
               (_%g4414844235%_
                (lambda (_%g4415044167%_)
                  (if (gx#stx-pair? _%g4415044167%_)
                      (let ((_%e4415244170%_ (gx#syntax-e _%g4415044167%_)))
                        (let ((_%hd4415344174%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4415244170%_)))
                              (_%tl4415444177%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4415244170%_))))
                          (if (gx#stx-pair? _%tl4415444177%_)
                              (let ((_%e4415544180%_
                                     (gx#syntax-e _%tl4415444177%_)))
                                (let ((_%hd4415644184%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4415544180%_)))
                                      (_%tl4415744187%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4415544180%_))))
                                  (if (gx#stx-null? _%tl4415744187%_)
                                      ((lambda (_%g4415144190%_)
                                         (if (gx#stx-string? _%g4415144190%_)
                                             (let* ((_%g4420444212%_
                                                     (lambda (_%g4420544208%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4420544208%_)))
                                                    (_%g4420344231%_
                                                     (lambda (_%g4420544216%_)
                                                       ((lambda (_%g4420644219%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g4420644219%_ '())))
                _%g4420544216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4420344231%_
                                                (string->bytes
                                                 (gx#stx-e _%g4415144190%_))))
                                             (_%g4414944163%_
                                              _%g4415044167%_)))
                                       _%hd4415644184%_)
                                      (_%g4414944163%_ _%g4415044167%_))))
                              (_%g4414944163%_ _%g4415044167%_))))
                      (_%g4414944163%_ _%g4415044167%_)))))
          (_%g4414844235%_ _%stx44146%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx44239%_)
        (let* ((_%g4424244256%_
                (lambda (_%g4424344252%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4424344252%_)))
               (_%g4424144297%_
                (lambda (_%g4424344260%_)
                  (if (gx#stx-pair? _%g4424344260%_)
                      (let ((_%e4424544263%_ (gx#syntax-e _%g4424344260%_)))
                        (let ((_%hd4424644267%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4424544263%_)))
                              (_%tl4424744270%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4424544263%_))))
                          (if (gx#stx-pair? _%tl4424744270%_)
                              (let ((_%e4424844273%_
                                     (gx#syntax-e _%tl4424744270%_)))
                                (let ((_%hd4424944277%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4424844273%_)))
                                      (_%tl4425044280%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4424844273%_))))
                                  (if (gx#stx-null? _%tl4425044280%_)
                                      ((lambda (_%g4424444283%_)
                                         (if (gx#current-expander-compiling?)
                                             (gx#eval-syntax _%g4424444283%_)
                                             '#!void)
                                         (cons (gx#datum->syntax '#f 'void)
                                               '()))
                                       _%hd4424944277%_)
                                      (_%g4424244256%_ _%g4424344260%_))))
                              (_%g4424244256%_ _%g4424344260%_))))
                      (_%g4424244256%_ _%g4424344260%_)))))
          (_%g4424144297%_ _%stx44239%_))))))
