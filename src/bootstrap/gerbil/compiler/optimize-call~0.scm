(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1781697575)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp260839 (list gxc#::basic-xform::t))
            (__tmp260838 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp260839
         '()
         __tmp260838
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args259936%_
        (apply make-instance gxc#::optimize-call::t _%$args259936%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp260840
             (lambda ()
               (force gxc#::basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#call
                  gxc#optimize-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#if
                  gxc#optimize-if%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp260840)))
    (define gxc#apply-optimize-call
      (lambda (_%stx259928%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self259931%_
                (let ((__obj260830
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj260830))
               (__tmp260841
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self259931%_ _%stx259928%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp260841
           gxc#current-compile-method
           _%self259931%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp260843 (list gxc#::void::t))
            (__tmp260842 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp260843
         '()
         __tmp260842
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args259925%_
        (apply make-instance gxc#::check-return-type::t _%$args259925%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp260844
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-annotation
                  gxc#apply-check-return-type-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-values
                  gxc#apply-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-syntax
                  gxc#apply-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#call
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#if
                  gxc#apply-path-type-if%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::check-return-type::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp260844)))
    (define gxc#apply-check-return-type
      (lambda (_%stx259917%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self259920%_
                (let ((__obj260832
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj260832))
               (__tmp260845
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self259920%_ _%stx259917%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp260845
           gxc#current-compile-method
           _%self259920%_))))
    (define gxc#optimize-call%
      (lambda (_%self259065%_ _%stx259066%_)
        (let* ((_%__stx260077260078%_ _%stx259066%_)
               (_%$%g259070259152%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx260077260078%_)))))
          (let ((_%__kont260079260080%_
                 (lambda (_%$%g259072259713%_ _%$%g259073259714%_)
                   (let* ((_%rator-id259734%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g259073259714%_)))
                          (_%rator-type259736%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id259734%_))))
                     (if (or (not _%rator-type259736%_)
                             (eq? (##structure-ref
                                   _%rator-type259736%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self259065%_ _%stx259066%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type259736%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp260846
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type259736%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id259734%_
                                  '" => "
                                  _%rator-type259736%_
                                  '" "
                                  __tmp260846))
                               (let* ((_%optimized259751%_
                                       (let ((__method260833
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type259736%_
                                                 'optimize-call))))
                                         (if __method260833
                                             (let ((__tmp260847
                                                    (let ((__tmp260848
                                                           (lambda (_%$%g259743259746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g259744259748%_)
                     (cons _%$%g259743259746%_ _%$%g259744259748%_))))
              (declare (not safe))
              (foldr__0 __tmp260848 '() _%$%g259072259713%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method260833
                                                _%rator-type259736%_
                                                _%self259065%_
                                                _%stx259066%_
                                                __tmp260847))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type259736%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx260025260026%_
                                       _%optimized259751%_)
                                      (_%$%g259754259783%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx260025260026%_)))))
                                 (let ((_%__kont260027260028%_
                                        (lambda (_%$%g259756259849%_
                                                 _%$%g259757259850%_)
                                          (let* ((_%optimized-rator-id259877%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%$%g259757259850%_)))
                                                 (_%rator-type259882%_
                                                  (let ((_%$e259879%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id259877%_))))
                                                    (if _%$e259879%_
                                                        _%$e259879%_
                                                        _%rator-type259736%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type259882%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id259877%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type259882%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type259882%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized259751%_
                                                (let ((__tmp260849
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%$%g259757259850%_ '()))
                           (let ((__tmp260850
                                  (lambda (_%$%g259890259893%_
                                           _%$%g259891259895%_)
                                    (cons _%$%g259890259893%_
                                          _%$%g259891259895%_))))
                             (declare (not safe))
                             (foldr__0
                              __tmp260850
                              '()
                              _%$%g259756259849%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp260849
                                                   _%stx259066%_))))))
                                       (_%__kont260031260032%_
                                        (lambda () _%optimized259751%_)))
                                   (let ((_%__match260074260075%_
                                          (lambda (_%$%e259758259795%_
                                                   _%$%hd259759259798%_
                                                   _%$%tl259760259800%_
                                                   _%$%e259761259803%_
                                                   _%$%hd259762259806%_
                                                   _%$%tl259763259808%_
                                                   _%$%e259764259811%_
                                                   _%$%hd259765259814%_
                                                   _%$%tl259766259816%_
                                                   _%$%e259767259819%_
                                                   _%$%hd259768259822%_
                                                   _%$%tl259769259824%_
                                                   _%__splice260029260030%_
                                                   _%$%target259770259827%_
                                                   _%$%tl259772259829%_)
                                            (letrec ((_%$%loop259773259832%_
                                                      (lambda (_%$%hd259771259835%_
                                                               _%$%arg259777259837%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd259771259835%_))
                                                            (let ((_%$%e259774259839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd259771259835%_))))
                      (let ((_%$%lp-tl259776259844%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e259774259839%_)))
                            (_%$%lp-hd259775259842%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e259774259839%_))))
                        (_%$%loop259773259832%_
                         _%$%lp-tl259776259844%_
                         (cons _%$%lp-hd259775259842%_
                               _%$%arg259777259837%_))))
                    (let ((_%$%arg259778259847%_
                           (reverse _%$%arg259777259837%_)))
                      (_%__kont260027260028%_
                       _%$%arg259778259847%_
                       _%$%hd259768259822%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop259773259832%_
                                               _%$%target259770259827%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx260025260026%_))
                                         (let ((_%$%e259758259795%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx260025260026%_))))
                                           (let ((_%$%tl259760259800%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e259758259795%_)))
                                                 (_%$%hd259759259798%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e259758259795%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%$%hd259759259798%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%$%hd259759259798%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl259760259800%_))
                                                         (let ((_%$%e259761259803%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl259760259800%_))))
                   (let ((_%$%tl259763259808%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e259761259803%_)))
                         (_%$%hd259762259806%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e259761259803%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%hd259762259806%_))
                         (let ((_%$%e259764259811%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%hd259762259806%_))))
                           (let ((_%$%tl259766259816%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e259764259811%_)))
                                 (_%$%hd259765259814%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e259764259811%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%hd259765259814%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#ref
                                        _%$%hd259765259814%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%tl259766259816%_))
                                         (let ((_%$%e259767259819%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%tl259766259816%_))))
                                           (let ((_%$%tl259769259824%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e259767259819%_)))
                                                 (_%$%hd259768259822%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e259767259819%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%$%tl259769259824%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%$%tl259763259808%_))
                                                     (let ((_%__splice260029260030%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%$%tl259763259808%_
                                                               '0))))
                                                       (let ((_%$%tl259772259829%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice260029260030%_ '1)))
                     (_%$%target259770259827%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice260029260030%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl259772259829%_))
                     (_%__match260074260075%_
                      _%$%e259758259795%_
                      _%$%hd259759259798%_
                      _%$%tl259760259800%_
                      _%$%e259761259803%_
                      _%$%hd259762259806%_
                      _%$%tl259763259808%_
                      _%$%e259764259811%_
                      _%$%hd259765259814%_
                      _%$%tl259766259816%_
                      _%$%e259767259819%_
                      _%$%hd259768259822%_
                      _%$%tl259769259824%_
                      _%__splice260029260030%_
                      _%$%target259770259827%_
                      _%$%tl259772259829%_)
                     (_%__kont260031260032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont260031260032%_))
                                                 (_%__kont260031260032%_))))
                                         (_%__kont260031260032%_))
                                     (_%__kont260031260032%_))
                                 (_%__kont260031260032%_))))
                         (_%__kont260031260032%_))))
                 (_%__kont260031260032%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont260031260032%_))
                                                 (_%__kont260031260032%_))))
                                         (_%__kont260031260032%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type259736%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type259736%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp260851
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%$%g259073259714%_
                                                                '()))
                                                    (map (lambda (_%$%g259901259903%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self259065%_
                                                              _%$%g259901259903%_)))
                                                         (let ((__tmp260852
                                                                (lambda (_%$%g259905259908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g259906259910%_)
                          (cons _%$%g259905259908%_ _%$%g259906259910%_))))
                   (declare (not safe))
                   (foldr__0 __tmp260852 '() _%$%g259072259713%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp260851
                                    _%stx259066%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx259066%_
                                    _%rator-type259736%_))))))))
                (_%__kont260083260084%_
                 (lambda (_%$%g259095259321%_
                          _%$%g259096259322%_
                          _%$%g259097259323%_)
                   (let _%loop259441%_ ((_%rest-arg259443%_
                                         (let ((__tmp260859
                                                (lambda (_%$%g259639259642%_
                                                         _%$%g259640259644%_)
                                                  (cons _%$%g259639259642%_
                                                        _%$%g259640259644%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp260859
                                            '()
                                            _%$%g259097259323%_)))
                                        (_%rest-rand259444%_
                                         (let ((__tmp260860
                                                (lambda (_%$%g259646259649%_
                                                         _%$%g259647259651%_)
                                                  (cons _%$%g259646259649%_
                                                        _%$%g259647259651%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp260860
                                            '()
                                            _%$%g259095259321%_)))
                                        (_%bind259445%_ '())
                                        (_%subst259446%_ '()))
                     (let* ((_%$%rest-arg259447259455%_ _%rest-arg259443%_)
                            (_%$%else259449259468%_
                             (lambda ()
                               (let* ((_%body259463%_
                                       (if (null? _%subst259446%_)
                                           _%$%g259096259322%_
                                           (let ((__tmp260853
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-inline-subst__%
                                                     '#f
                                                     _%subst259446%_
                                                     _%$%g259096259322%_))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp260853
                                              _%stx259066%_))))
                                      (_%expr259465%_
                                       (let ((__tmp260854
                                              (cons '%#let-values
                                                    (cons _%bind259445%_
                                                          (cons _%body259463%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp260854
                                          _%stx259066%_))))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-refine-type-info _%expr259465%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self259065%_
                                    _%expr259465%_)))))
                            (_%$%K259451259628%_
                             (lambda (_%rest-arg259471%_ _%arg-id259472%_)
                               (let* ((_%$%rest-rand259473259481%_
                                       _%rest-rand259444%_)
                                      (_%$%else259475259503%_
                                       (lambda ()
                                         (let ((__tmp260857
                                                (let ((__tmp260858
                                                       (lambda (_%$%g259488259491%_
                                                                _%$%g259489259493%_)
                                                         (cons _%$%g259488259491%_
                                                               _%$%g259489259493%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp260858
                                                   '()
                                                   _%$%g259097259323%_)))
                                               (__tmp260855
                                                (let ((__tmp260856
                                                       (lambda (_%$%g259495259498%_
                                                                _%$%g259496259500%_)
                                                         (cons _%$%g259495259498%_
                                                               _%$%g259496259500%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp260856
                                                   '()
                                                   _%$%g259095259321%_))))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"inline lambda arity mismatch"
                                            _%stx259066%_
                                            __tmp260857
                                            __tmp260855))))
                                      (_%$%K259477259616%_
                                       (lambda (_%rest-rand259506%_
                                                _%rand259507%_)
                                         (let* ((_%__stx259979259980%_
                                                 _%rand259507%_)
                                                (_%$%g259511259531%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx259979259980%_)))))
                                           (let ((_%__kont259981259982%_
                                                  (lambda (_%$%g259513259602%_)
                                                    (_%loop259441%_
                                                     _%rest-arg259471%_
                                                     _%rest-rand259506%_
                                                     _%bind259445%_
                                                     (cons (cons _%arg-id259472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand259507%_)
                   _%subst259446%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont259983259984%_
                                                  (lambda (_%$%g259520259559%_)
                                                    (_%loop259441%_
                                                     _%rest-arg259471%_
                                                     _%rest-rand259506%_
                                                     _%bind259445%_
                                                     (cons (cons _%arg-id259472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand259507%_)
                   _%subst259446%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont259985259986%_
                                                  (lambda ()
                                                    (_%loop259441%_
                                                     _%rest-arg259471%_
                                                     _%rest-rand259506%_
                                                     (cons (cons (cons _%arg-id259472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%rand259507%_ '()))
                   _%bind259445%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%subst259446%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx259979259980%_))
                                                 (let ((_%$%e259514259586%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx259979259980%_))))
                                                   (let ((_%$%tl259516259591%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e259514259586%_)))
                                                         (_%$%hd259515259589%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e259514259586%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%$%hd259515259589%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#quote _%$%hd259515259589%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl259516259591%_))
                         (let ((_%$%e259517259594%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl259516259591%_))))
                           (let ((_%$%tl259519259599%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e259517259594%_)))
                                 (_%$%hd259518259597%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e259517259594%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl259519259599%_))
                                 (_%__kont259981259982%_ _%$%hd259518259597%_)
                                 (_%__kont259985259986%_))))
                         (_%__kont259985259986%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#ref _%$%hd259515259589%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl259516259591%_))
                             (let ((_%$%e259524259551%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl259516259591%_))))
                               (let ((_%$%tl259526259556%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e259524259551%_)))
                                     (_%$%hd259525259554%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e259524259551%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl259526259556%_))
                                     (_%__kont259983259984%_
                                      _%$%hd259525259554%_)
                                     (_%__kont259985259986%_))))
                             (_%__kont259985259986%_))
                         (_%__kont259985259986%_)))
                 (_%__kont259985259986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont259985259986%_)))))))
                                 (if (pair? _%$%rest-rand259473259481%_)
                                     (let ((_%$%hd259478259619%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%rest-rand259473259481%_)))
                                           (_%$%tl259479259621%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%rest-rand259473259481%_))))
                                       (let* ((_%rand259624%_
                                               _%$%hd259478259619%_)
                                              (_%rest-rand259626%_
                                               _%$%tl259479259621%_))
                                         (_%$%K259477259616%_
                                          _%rest-rand259626%_
                                          _%rand259624%_)))
                                     (_%$%else259475259503%_))))))
                       (if (pair? _%$%rest-arg259447259455%_)
                           (let ((_%$%hd259452259631%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest-arg259447259455%_)))
                                 (_%$%tl259453259633%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest-arg259447259455%_))))
                             (let* ((_%arg-id259636%_ _%$%hd259452259631%_)
                                    (_%rest-arg259638%_ _%$%tl259453259633%_))
                               (_%$%K259451259628%_
                                _%rest-arg259638%_
                                _%arg-id259636%_)))
                           (_%$%else259449259468%_))))))
                (_%__kont260089260090%_
                 (lambda (_%$%g259131259195%_ _%$%g259132259196%_)
                   (let ((_%rator-type259213%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%$%g259132259196%_))))
                     (if (and _%rator-type259213%_
                              (eq? (##structure-ref
                                    _%rator-type259213%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type259213%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type259213%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type259213%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp260861
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self259065%_
                                               _%$%g259132259196%_))
                                            (map (lambda (_%$%g259215259217%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self259065%_
                                                      _%$%g259215259217%_)))
                                                 (let ((__tmp260862
                                                        (lambda (_%$%g259219259222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g259220259224%_)
                  (cons _%$%g259219259222%_ _%$%g259220259224%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp260862
                                                    '()
                                                    _%$%g259131259195%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp260861 _%stx259066%_))
                         (if (or (not _%rator-type259213%_)
                                 (let ((__tmp260863
                                        (##structure-ref
                                         _%rator-type259213%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp260863 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self259065%_ _%stx259066%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx259066%_
                                _%rator-type259213%_))))))))
            (let* ((_%__match260186260187%_
                    (lambda (_%$%e259133259157%_
                             _%$%hd259134259160%_
                             _%$%tl259135259162%_
                             _%$%e259136259165%_
                             _%$%hd259137259168%_
                             _%$%tl259138259170%_
                             _%__splice260091260092%_
                             _%$%target259139259173%_
                             _%$%tl259141259175%_)
                      (letrec ((_%$%loop259142259178%_
                                (lambda (_%$%hd259140259181%_
                                         _%$%rand259146259183%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd259140259181%_))
                                      (let ((_%$%e259143259185%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd259140259181%_))))
                                        (let ((_%$%lp-tl259145259190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e259143259185%_)))
                                              (_%$%lp-hd259144259188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e259143259185%_))))
                                          (_%$%loop259142259178%_
                                           _%$%lp-tl259145259190%_
                                           (cons _%$%lp-hd259144259188%_
                                                 _%$%rand259146259183%_))))
                                      (let ((_%$%rand259147259193%_
                                             (reverse _%$%rand259146259183%_)))
                                        (_%__kont260089260090%_
                                         _%$%rand259147259193%_
                                         _%$%hd259137259168%_))))))
                        (_%$%loop259142259178%_
                         _%$%target259139259173%_
                         '()))))
                   (_%__match260178260179%_
                    (lambda (_%$%e259133259157%_
                             _%$%hd259134259160%_
                             _%$%tl259135259162%_
                             _%$%e259136259165%_
                             _%$%hd259137259168%_
                             _%$%tl259138259170%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl259138259170%_))
                          (let ((_%__splice260091260092%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl259138259170%_
                                    '0))))
                            (let ((_%$%tl259141259175%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice260091260092%_
                                      '1)))
                                  (_%$%target259139259173%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice260091260092%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl259141259175%_))
                                  (_%__match260186260187%_
                                   _%$%e259133259157%_
                                   _%$%hd259134259160%_
                                   _%$%tl259135259162%_
                                   _%$%e259136259165%_
                                   _%$%hd259137259168%_
                                   _%$%tl259138259170%_
                                   _%__splice260091260092%_
                                   _%$%target259139259173%_
                                   _%$%tl259141259175%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g259070259152%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g259070259152%_)))))
                   (_%__match260166260167%_
                    (lambda (_%$%e259098259237%_
                             _%$%hd259099259240%_
                             _%$%tl259100259242%_
                             _%$%e259101259245%_
                             _%$%hd259102259248%_
                             _%$%tl259103259250%_
                             _%$%e259104259253%_
                             _%$%hd259105259256%_
                             _%$%tl259106259258%_
                             _%$%e259107259261%_
                             _%$%hd259108259264%_
                             _%$%tl259109259266%_
                             _%__splice260085260086%_
                             _%$%target259110259269%_
                             _%$%tl259112259271%_)
                      (letrec ((_%$%loop259113259274%_
                                (lambda (_%$%hd259111259277%_
                                         _%$%arg259117259279%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd259111259277%_))
                                      (let ((_%$%e259114259281%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd259111259277%_))))
                                        (let ((_%$%lp-tl259116259286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e259114259281%_)))
                                              (_%$%lp-hd259115259284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e259114259281%_))))
                                          (_%$%loop259113259274%_
                                           _%$%lp-tl259116259286%_
                                           (cons _%$%lp-hd259115259284%_
                                                 _%$%arg259117259279%_))))
                                      (let ((_%$%arg259118259289%_
                                             (reverse _%$%arg259117259279%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl259109259266%_))
                                            (let ((_%$%e259119259291%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl259109259266%_))))
                                              (let ((_%$%tl259121259296%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e259119259291%_)))
                                                    (_%$%hd259120259294%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e259119259291%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl259121259296%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl259103259250%_))
                                                        (let ((_%__splice260087260088%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl259103259250%_
                          '0))))
                  (let ((_%$%tl259124259301%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice260087260088%_ '1)))
                        (_%$%target259122259299%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice260087260088%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl259124259301%_))
                        (letrec ((_%$%loop259125259304%_
                                  (lambda (_%$%hd259123259307%_
                                           _%$%rand259129259309%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd259123259307%_))
                                        (let ((_%$%e259126259311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd259123259307%_))))
                                          (let ((_%$%lp-tl259128259316%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e259126259311%_)))
                                                (_%$%lp-hd259127259314%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e259126259311%_))))
                                            (_%$%loop259125259304%_
                                             _%$%lp-tl259128259316%_
                                             (cons _%$%lp-hd259127259314%_
                                                   _%$%rand259129259309%_))))
                                        (let ((_%$%rand259130259319%_
                                               (reverse _%$%rand259129259309%_)))
                                          (let ((_%$%g259095259321%_
                                                 _%$%rand259130259319%_)
                                                (_%$%g259096259322%_
                                                 _%$%hd259120259294%_)
                                                (_%$%g259097259323%_
                                                 _%$%arg259118259289%_))
                                            (if (and (= (length (let ((__tmp260864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%$%g259349259352%_
                                        _%$%g259350259354%_)
                                 (cons _%$%g259349259352%_
                                       _%$%g259350259354%_))))
                          (declare (not safe))
                          (foldr__0 __tmp260864 '() _%$%g259097259323%_)))
                (length (let ((__tmp260865
                               (lambda (_%$%g259356259359%_
                                        _%$%g259357259361%_)
                                 (cons _%$%g259356259359%_
                                       _%$%g259357259361%_))))
                          (declare (not safe))
                          (foldr__0 __tmp260865 '() _%$%g259095259321%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp260868
                                                            (lambda (_%id259364%_)
                                                              (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gxc#mutable-binding? _%id259364%_)))))
                   (__tmp260866
                    (let ((__tmp260867
                           (lambda (_%$%g259365259368%_ _%$%g259366259370%_)
                             (cons _%$%g259365259368%_ _%$%g259366259370%_))))
                      (declare (not safe))
                      (foldr__0 __tmp260867 '() _%$%g259097259323%_))))
               (declare (not safe))
               (andmap__0 __tmp260868 __tmp260866))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp260871
                                                            (lambda (_%rand259373%_)
                                                              (let* ((_%__stx259953259954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rand259373%_)
                             (_%$%g259376259389%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx259953259954%_)))))
                        (let ((_%__kont259955259956%_
                               (lambda (_%$%g259378259417%_)
                                 (not (let ()
                                        (declare (not safe))
                                        (gxc#mutable-binding?
                                         _%$%g259378259417%_)))))
                              (_%__kont259957259958%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx259953259954%_))
                              (let ((_%$%e259379259401%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx259953259954%_))))
                                (let ((_%$%tl259381259406%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e259379259401%_)))
                                      (_%$%hd259380259404%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e259379259401%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd259380259404%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd259380259404%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl259381259406%_))
                                              (let ((_%$%e259382259409%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl259381259406%_))))
                                                (let ((_%$%tl259384259414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e259382259409%_)))
                                                      (_%$%hd259383259412%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e259382259409%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl259384259414%_))
                                                      (_%__kont259955259956%_
                                                       _%$%hd259383259412%_)
                                                      (_%__kont259957259958%_))))
                                              (_%__kont259957259958%_))
                                          (_%__kont259957259958%_))
                                      (_%__kont259957259958%_))))
                              (_%__kont259957259958%_))))))
                   (__tmp260869
                    (let ((__tmp260870
                           (lambda (_%$%g259433259436%_ _%$%g259434259438%_)
                             (cons _%$%g259433259436%_ _%$%g259434259438%_))))
                      (declare (not safe))
                      (foldr__0 __tmp260870 '() _%$%g259095259321%_))))
               (declare (not safe))
               (andmap__0 __tmp260871 __tmp260869)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont260083260084%_
                                                 _%$%g259095259321%_
                                                 _%$%g259096259322%_
                                                 _%$%g259097259323%_)
                                                (_%__match260186260187%_
                                                 _%$%e259098259237%_
                                                 _%$%hd259099259240%_
                                                 _%$%tl259100259242%_
                                                 _%$%e259101259245%_
                                                 _%$%hd259102259248%_
                                                 _%$%tl259103259250%_
                                                 _%__splice260087260088%_
                                                 _%$%target259122259299%_
                                                 _%$%tl259124259301%_))))))))
                          (_%$%loop259125259304%_
                           _%$%target259122259299%_
                           '()))
                        (let () (declare (not safe)) (_%$%g259070259152%_)))))
                (let () (declare (not safe)) (_%$%g259070259152%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match260178260179%_
                                                     _%$%e259098259237%_
                                                     _%$%hd259099259240%_
                                                     _%$%tl259100259242%_
                                                     _%$%e259101259245%_
                                                     _%$%hd259102259248%_
                                                     _%$%tl259103259250%_))))
                                            (_%__match260178260179%_
                                             _%$%e259098259237%_
                                             _%$%hd259099259240%_
                                             _%$%tl259100259242%_
                                             _%$%e259101259245%_
                                             _%$%hd259102259248%_
                                             _%$%tl259103259250%_)))))))
                        (_%$%loop259113259274%_
                         _%$%target259110259269%_
                         '()))))
                   (_%__match260130260131%_
                    (lambda (_%$%e259074259659%_
                             _%$%hd259075259662%_
                             _%$%tl259076259664%_
                             _%$%e259077259667%_
                             _%$%hd259078259670%_
                             _%$%tl259079259672%_
                             _%$%e259080259675%_
                             _%$%hd259081259678%_
                             _%$%tl259082259680%_
                             _%$%e259083259683%_
                             _%$%hd259084259686%_
                             _%$%tl259085259688%_
                             _%__splice260081260082%_
                             _%$%target259086259691%_
                             _%$%tl259088259693%_)
                      (letrec ((_%$%loop259089259696%_
                                (lambda (_%$%hd259087259699%_
                                         _%$%rand259093259701%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd259087259699%_))
                                      (let ((_%$%e259090259703%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd259087259699%_))))
                                        (let ((_%$%lp-tl259092259708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e259090259703%_)))
                                              (_%$%lp-hd259091259706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e259090259703%_))))
                                          (_%$%loop259089259696%_
                                           _%$%lp-tl259092259708%_
                                           (cons _%$%lp-hd259091259706%_
                                                 _%$%rand259093259701%_))))
                                      (let ((_%$%rand259094259711%_
                                             (reverse _%$%rand259093259701%_)))
                                        (_%__kont260079260080%_
                                         _%$%rand259094259711%_
                                         _%$%hd259084259686%_))))))
                        (_%$%loop259089259696%_
                         _%$%target259086259691%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx260077260078%_))
                  (let ((_%$%e259074259659%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx260077260078%_))))
                    (let ((_%$%tl259076259664%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e259074259659%_)))
                          (_%$%hd259075259662%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e259074259659%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl259076259664%_))
                          (let ((_%$%e259077259667%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl259076259664%_))))
                            (let ((_%$%tl259079259672%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e259077259667%_)))
                                  (_%$%hd259078259670%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e259077259667%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd259078259670%_))
                                  (let ((_%$%e259080259675%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd259078259670%_))))
                                    (let ((_%$%tl259082259680%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e259080259675%_)))
                                          (_%$%hd259081259678%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e259080259675%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd259081259678%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd259081259678%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl259082259680%_))
                                                  (let ((_%$%e259083259683%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl259082259680%_))))
                                                    (let ((_%$%tl259085259688%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e259083259683%_)))
                                                          (_%$%hd259084259686%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e259083259683%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl259085259688%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl259079259672%_))
                      (let ((_%__splice260081260082%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl259079259672%_
                                '0))))
                        (let ((_%$%tl259088259693%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice260081260082%_ '1)))
                              (_%$%target259086259691%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice260081260082%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl259088259693%_))
                              (_%__match260130260131%_
                               _%$%e259074259659%_
                               _%$%hd259075259662%_
                               _%$%tl259076259664%_
                               _%$%e259077259667%_
                               _%$%hd259078259670%_
                               _%$%tl259079259672%_
                               _%$%e259080259675%_
                               _%$%hd259081259678%_
                               _%$%tl259082259680%_
                               _%$%e259083259683%_
                               _%$%hd259084259686%_
                               _%$%tl259085259688%_
                               _%__splice260081260082%_
                               _%$%target259086259691%_
                               _%$%tl259088259693%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g259070259152%_)))))
                      (let () (declare (not safe)) (_%$%g259070259152%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl259079259672%_))
                      (let ((_%__splice260091260092%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl259079259672%_
                                '0))))
                        (let ((_%$%tl259141259175%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice260091260092%_ '1)))
                              (_%$%target259139259173%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice260091260092%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl259141259175%_))
                              (_%__match260186260187%_
                               _%$%e259074259659%_
                               _%$%hd259075259662%_
                               _%$%tl259076259664%_
                               _%$%e259077259667%_
                               _%$%hd259078259670%_
                               _%$%tl259079259672%_
                               _%__splice260091260092%_
                               _%$%target259139259173%_
                               _%$%tl259141259175%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g259070259152%_)))))
                      (let () (declare (not safe)) (_%$%g259070259152%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl259079259672%_))
                                                      (let ((_%__splice260091260092%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl259079259672%_
                        '0))))
                (let ((_%$%tl259141259175%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice260091260092%_ '1)))
                      (_%$%target259139259173%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice260091260092%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl259141259175%_))
                      (_%__match260186260187%_
                       _%$%e259074259659%_
                       _%$%hd259075259662%_
                       _%$%tl259076259664%_
                       _%$%e259077259667%_
                       _%$%hd259078259670%_
                       _%$%tl259079259672%_
                       _%__splice260091260092%_
                       _%$%target259139259173%_
                       _%$%tl259141259175%_)
                      (let () (declare (not safe)) (_%$%g259070259152%_)))))
              (let () (declare (not safe)) (_%$%g259070259152%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#lambda
                                                     _%$%hd259081259678%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl259082259680%_))
                                                      (let ((_%$%e259107259261%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl259082259680%_))))
                (let ((_%$%tl259109259266%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e259107259261%_)))
                      (_%$%hd259108259264%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e259107259261%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%hd259108259264%_))
                      (let ((_%__splice260085260086%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%hd259108259264%_
                                '0))))
                        (let ((_%$%tl259112259271%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice260085260086%_ '1)))
                              (_%$%target259110259269%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice260085260086%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl259112259271%_))
                              (_%__match260166260167%_
                               _%$%e259074259659%_
                               _%$%hd259075259662%_
                               _%$%tl259076259664%_
                               _%$%e259077259667%_
                               _%$%hd259078259670%_
                               _%$%tl259079259672%_
                               _%$%e259080259675%_
                               _%$%hd259081259678%_
                               _%$%tl259082259680%_
                               _%$%e259107259261%_
                               _%$%hd259108259264%_
                               _%$%tl259109259266%_
                               _%__splice260085260086%_
                               _%$%target259110259269%_
                               _%$%tl259112259271%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _%$%tl259079259672%_))
                                  (let ((_%__splice260091260092%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice->vector
                                            _%$%tl259079259672%_
                                            '0))))
                                    (let ((_%$%tl259141259175%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice260091260092%_
                                              '1)))
                                          (_%$%target259139259173%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice260091260092%_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl259141259175%_))
                                          (_%__match260186260187%_
                                           _%$%e259074259659%_
                                           _%$%hd259075259662%_
                                           _%$%tl259076259664%_
                                           _%$%e259077259667%_
                                           _%$%hd259078259670%_
                                           _%$%tl259079259672%_
                                           _%__splice260091260092%_
                                           _%$%target259139259173%_
                                           _%$%tl259141259175%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g259070259152%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g259070259152%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl259079259672%_))
                          (let ((_%__splice260091260092%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl259079259672%_
                                    '0))))
                            (let ((_%$%tl259141259175%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice260091260092%_
                                      '1)))
                                  (_%$%target259139259173%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice260091260092%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl259141259175%_))
                                  (_%__match260186260187%_
                                   _%$%e259074259659%_
                                   _%$%hd259075259662%_
                                   _%$%tl259076259664%_
                                   _%$%e259077259667%_
                                   _%$%hd259078259670%_
                                   _%$%tl259079259672%_
                                   _%__splice260091260092%_
                                   _%$%target259139259173%_
                                   _%$%tl259141259175%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g259070259152%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g259070259152%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl259079259672%_))
                  (let ((_%__splice260091260092%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl259079259672%_
                            '0))))
                    (let ((_%$%tl259141259175%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice260091260092%_ '1)))
                          (_%$%target259139259173%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice260091260092%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl259141259175%_))
                          (_%__match260186260187%_
                           _%$%e259074259659%_
                           _%$%hd259075259662%_
                           _%$%tl259076259664%_
                           _%$%e259077259667%_
                           _%$%hd259078259670%_
                           _%$%tl259079259672%_
                           _%__splice260091260092%_
                           _%$%target259139259173%_
                           _%$%tl259141259175%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g259070259152%_)))))
                  (let () (declare (not safe)) (_%$%g259070259152%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl259079259672%_))
                                                      (let ((_%__splice260091260092%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl259079259672%_
                        '0))))
                (let ((_%$%tl259141259175%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice260091260092%_ '1)))
                      (_%$%target259139259173%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice260091260092%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl259141259175%_))
                      (_%__match260186260187%_
                       _%$%e259074259659%_
                       _%$%hd259075259662%_
                       _%$%tl259076259664%_
                       _%$%e259077259667%_
                       _%$%hd259078259670%_
                       _%$%tl259079259672%_
                       _%__splice260091260092%_
                       _%$%target259139259173%_
                       _%$%tl259141259175%_)
                      (let () (declare (not safe)) (_%$%g259070259152%_)))))
              (let () (declare (not safe)) (_%$%g259070259152%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl259079259672%_))
                                              (let ((_%__splice260091260092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl259079259672%_
                                                        '0))))
                                                (let ((_%$%tl259141259175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice260091260092%_
                                                          '1)))
                                                      (_%$%target259139259173%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice260091260092%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl259141259175%_))
                                                      (_%__match260186260187%_
                                                       _%$%e259074259659%_
                                                       _%$%hd259075259662%_
                                                       _%$%tl259076259664%_
                                                       _%$%e259077259667%_
                                                       _%$%hd259078259670%_
                                                       _%$%tl259079259672%_
                                                       _%__splice260091260092%_
                                                       _%$%target259139259173%_
                                                       _%$%tl259141259175%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g259070259152%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g259070259152%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl259079259672%_))
                                      (let ((_%__splice260091260092%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl259079259672%_
                                                '0))))
                                        (let ((_%$%tl259141259175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice260091260092%_
                                                  '1)))
                                              (_%$%target259139259173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice260091260092%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl259141259175%_))
                                              (_%__match260186260187%_
                                               _%$%e259074259659%_
                                               _%$%hd259075259662%_
                                               _%$%tl259076259664%_
                                               _%$%e259077259667%_
                                               _%$%hd259078259670%_
                                               _%$%tl259079259672%_
                                               _%__splice260091260092%_
                                               _%$%target259139259173%_
                                               _%$%tl259141259175%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g259070259152%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g259070259152%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g259070259152%_)))))
                  (let () (declare (not safe)) (_%$%g259070259152%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self259027%_ _%ctx259028%_ _%stx259029%_ _%args259030%_)
        (let ((_%self259033%_ _%self259027%_))
          (if (let ((__method260834
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self259033%_ 'check-arguments))))
                (if __method260834
                    (let ()
                      (declare (not safe))
                      (__method260834
                       _%self259033%_
                       _%ctx259028%_
                       _%stx259029%_
                       _%args259030%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self259033%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature259043%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self259033%_ '2 '#f '#f)))
                     (_%signature259045%_ _%signature259043%_)
                     (_%$e259055%_
                      (if _%signature259045%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature259045%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e259055%_
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%$e259055%_))
                        (let ((__tmp260872
                               (cons '%#call
                                     (cons (cons '%#ref
                                                 (cons _%$e259055%_ '()))
                                           (map (lambda (_%$%g259059259061%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx259028%_
                                                     _%$%g259059259061%_)))
                                                _%args259030%_)))))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp260872
                           _%stx259029%_
                           _%ctx259028%_))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx259028%_ _%stx259029%_)))
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx259028%_ _%stx259029%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx259028%_ _%stx259029%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass259938 __method-table259939)
        (let ((__check-arguments259940
               (let ((__tmp260873
                      (lambda ()
                        (let ((__method259941
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table259939
                                  'check-arguments
                                  '#f))))
                          (if __method259941
                              __method259941
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp260873))))
          (lambda (_%self259027%_ _%ctx259028%_ _%stx259029%_ _%args259030%_)
            (let ((_%self259033%_ _%self259027%_))
              (if ((force __check-arguments259940)
                   _%self259033%_
                   _%ctx259028%_
                   _%stx259029%_
                   _%args259030%_)
                  (let* ((_%signature259043%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self259033%_
                             '2
                             '#f
                             '#f)))
                         (_%signature259045%_ _%signature259043%_)
                         (_%$e259055%_
                          (if _%signature259045%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature259045%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e259055%_
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%$e259055%_))
                            (let ((__tmp260874
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%$e259055%_ '()))
                                               (map (lambda (_%$%g259059259061%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%ctx259028%_
                                                         _%$%g259059259061%_)))
                                                    _%args259030%_)))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp260874
                               _%stx259029%_
                               _%ctx259028%_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _%ctx259028%_ _%stx259029%_)))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx259028%_ _%stx259029%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx259028%_ _%stx259029%_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!procedure::optimize-call
       gxc#!procedure::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self258780%_ _%ctx258781%_ _%stx258782%_ _%args258783%_)
        (let* ((_%self258786%_ _%self258780%_)
               (_%$%signature258795258797%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self258786%_ '2 '#f '#f))))
          (if _%$%signature258795258797%_
              (let* ((_%signature258799%_ _%$%signature258795258797%_)
                     (_%$%argument-types258800258802%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature258799%_
                         '3
                         '#f
                         '#f))))
                (if _%$%argument-types258800258802%_
                    (let* ((_%argument-types258804%_
                            _%$%argument-types258800258802%_)
                           (_%argument-types258809%_
                            (let ((__tmp260875
                                   (lambda (_%t258807%_)
                                     (if _%t258807%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx258782%_
                                            _%t258807%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp260875
                               _%argument-types258804%_))))
                      (let _%loop258811%_ ((_%rest-args258813%_ _%args258783%_)
                                           (_%rest-types258814%_
                                            _%argument-types258809%_)
                                           (_%result258815%_ '#t))
                        (let* ((_%$%rest-args258816258824%_
                                _%rest-args258813%_)
                               (_%$%else258818258832%_
                                (lambda () _%result258815%_))
                               (_%$%K258820258893%_
                                (lambda (_%rest-args258835%_ _%arg258836%_)
                                  (let* ((_%$%rest-types258837258848%_
                                          _%rest-types258814%_)
                                         (_%$%E258841258852%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-types258837258848%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%$%K258844258881%_
                                           (lambda (_%rest-types258878%_
                                                    _%type258879%_)
                                             (_%loop258811%_
                                              _%rest-args258835%_
                                              _%rest-types258878%_
                                              (if (gxc#check-expression-type!
                                                   _%stx258782%_
                                                   _%arg258836%_
                                                   _%type258879%_)
                                                  _%result258815%_
                                                  '#f))))
                                          (_%$%K258843258872%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx258782%_
                                                _%argument-types258809%_))))
                                          (_%$%K258842258862%_
                                           (lambda (_%tail-type258856%_)
                                             (if (let ((__tmp260876
                                                        (lambda (_%$%g258857258859%_)
                                                          (gxc#check-expression-type!
                                                           _%stx258782%_
                                                           _%$%g258857258859%_
                                                           _%tail-type258856%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp260876
                                                    _%rest-args258835%_))
                                                 _%result258815%_
                                                 '#f))))
                                      (let ((_%$%try-match258839258875%_
                                             (lambda ()
                                               (if (null? _%$%rest-types258837258848%_)
                                                   (_%$%K258843258872%_)
                                                   (let ((_%tail-type258865%_
                                                          _%$%rest-types258837258848%_))
                                                     (_%$%K258842258862%_
                                                      _%tail-type258865%_))))))
                                        (if (pair? _%$%rest-types258837258848%_)
                                            (let ((_%$%tl258846258886%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%rest-types258837258848%_)))
                                                  (_%$%hd258845258884%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%rest-types258837258848%_))))
                                              (let ((_%type258889%_
                                                     _%$%hd258845258884%_)
                                                    (_%rest-types258891%_
                                                     _%$%tl258846258886%_))
                                                (_%$%K258844258881%_
                                                 _%rest-types258891%_
                                                 _%type258889%_)))
                                            (_%$%try-match258839258875%_))))))))
                          (if (pair? _%$%rest-args258816258824%_)
                              (let ((_%$%hd258821258896%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest-args258816258824%_)))
                                    (_%$%tl258822258898%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest-args258816258824%_))))
                                (let* ((_%arg258901%_ _%$%hd258821258896%_)
                                       (_%rest-args258903%_
                                        _%$%tl258822258898%_))
                                  (_%$%K258820258893%_
                                   _%rest-args258903%_
                                   _%arg258901%_)))
                              (_%$%else258818258832%_)))))
                    '#f))
              '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self258583%_ _%ctx258584%_ _%stx258585%_ _%args258586%_)
        (let* ((_%self258589%_ _%self258583%_)
               (_%$%g258599258609%_
                (lambda (_%$%g258600258606%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g258600258606%_))))
               (_%$%g258598258655%_
                (lambda (_%$%g258600258612%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g258600258612%_))
                      (let ((_%$%e258602258614%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g258600258612%_))))
                        (let ((_%$%hd258603258617%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e258602258614%_)))
                              (_%$%tl258604258619%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e258602258614%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl258604258619%_))
                              (let* ((_%klass258634%_
                                      (let ((__tmp260877
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self258589%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx258585%_
                                         __tmp260877)))
                                     (_%object258636%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx258584%_
                                         _%$%hd258603258617%_)))
                                     (_%instance?258641%_
                                      (let ((_%$e258638%_
                                             (gxc#expression-type?
                                              _%object258636%_
                                              _%klass258634%_)))
                                        (if _%$e258638%_
                                            _%$e258638%_
                                            (gxc#expression-type?
                                             _%$%hd258603258617%_
                                             _%klass258634%_))))
                                     (_%incompatible?258646%_
                                      (let ((_%$e258643%_
                                             (gxc#incompatible-type?
                                              _%object258636%_
                                              _%klass258634%_)))
                                        (if _%$e258643%_
                                            _%$e258643%_
                                            (gxc#incompatible-type?
                                             _%$%hd258603258617%_
                                             _%klass258634%_)))))
                                (if _%instance?258641%_
                                    (let ((__tmp260878
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object258636%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd258603258617%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object258636%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp260878
                                       _%stx258585%_))
                                    (if _%incompatible?258646%_
                                        (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#xform-call%
                                           _%ctx258584%_
                                           _%stx258585%_)))))
                              (_%$%g258599258609%_ _%$%g258600258612%_))))
                      (_%$%g258599258609%_ _%$%g258600258612%_)))))
          (_%$%g258598258655%_ _%args258586%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self258372%_ _%ctx258373%_ _%stx258374%_ _%args258375%_)
        (let* ((_%self258378%_ _%self258372%_)
               (_%$%g258388258398%_
                (lambda (_%$%g258389258395%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g258389258395%_))))
               (_%$%g258387258458%_
                (lambda (_%$%g258389258401%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g258389258401%_))
                      (let ((_%$%e258391258403%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g258389258401%_))))
                        (let ((_%$%hd258392258406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e258391258403%_)))
                              (_%$%tl258393258408%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e258391258403%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl258393258408%_))
                              (let* ((_%klass258423%_
                                      (let ((__tmp260879
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self258378%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx258374%_
                                         __tmp260879)))
                                     (_%object258425%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx258373%_
                                         _%$%hd258392258406%_)))
                                     (_%instance?258430%_
                                      (let ((_%$e258427%_
                                             (gxc#expression-type?
                                              _%object258425%_
                                              _%klass258423%_)))
                                        (if _%$e258427%_
                                            _%$e258427%_
                                            (gxc#expression-type?
                                             _%$%hd258392258406%_
                                             _%klass258423%_))))
                                     (_%incompatible?258435%_
                                      (let ((_%$e258432%_
                                             (gxc#incompatible-type?
                                              _%object258425%_
                                              _%klass258423%_)))
                                        (if _%$e258432%_
                                            _%$e258432%_
                                            (gxc#incompatible-type?
                                             _%$%hd258392258406%_
                                             _%klass258423%_))))
                                     (_%klass258438%_ _%klass258423%_))
                                (if _%instance?258430%_
                                    (let ((__tmp260880
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object258425%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd258392258406%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object258425%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp260880
                                       _%stx258374%_))
                                    (if _%incompatible?258435%_
                                        (cons '%#quote (cons '#f '()))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass258438%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp260881
                                                   (cons '%#struct-direct-instance?
                                                         (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass258438%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%object258425%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp260881
                                               _%stx258374%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass258438%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp260882
                                                       (cons '%#struct-instance?
                                                             (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass258438%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%object258425%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp260882
                                                   _%stx258374%_))
                                                (let ((__tmp260883
                                                       (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons 'class-instance? '()))
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self258378%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons _%object258425%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp260883
                                                   _%stx258374%_)))))))
                              (_%$%g258388258398%_ _%$%g258389258401%_))))
                      (_%$%g258388258398%_ _%$%g258389258401%_)))))
          (_%$%g258387258458%_ _%args258375%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx258040%_)
        (let* ((_%__stx260196260197%_ _%stx258040%_)
               (_%$%g258045258086%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx260196260197%_)))))
          (let ((_%__kont260198260199%_ (lambda () '#t))
                (_%__kont260200260201%_ (lambda () '#t))
                (_%__kont260202260203%_
                 (lambda (_%$%g258059258152%_ _%$%g258060258153%_)
                   (let ((_%$%rator-type258174258176%_
                          (let ((__tmp260884
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol
                                    _%$%g258060258153%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp260884))))
                     (if _%$%rator-type258174258176%_
                         (let* ((_%rator-type258178%_
                                 _%$%rator-type258174258176%_)
                                (_%$%rator-signature258179258181%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type258178%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type258178%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%$%rator-signature258179258181%_
                               (let* ((_%rator-signature258183%_
                                       _%$%rator-signature258179258181%_)
                                      (_%$%rator-effect258184258186%_
                                       (if _%rator-signature258183%_
                                           (##direct-structure-ref
                                            _%rator-signature258183%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%$%rator-effect258184258186%_
                                     (let ((_%rator-effect258188%_
                                            _%$%rator-effect258184258186%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect258188%_)
                                               (equal? '(alloc)
                                                       _%rator-effect258188%_))
                                           (let ((__tmp260885
                                                  (let ((__tmp260886
                                                         (lambda (_%$%g258193258196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g258194258198%_)
                   (cons _%$%g258193258196%_ _%$%g258194258198%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp260886
                                                     '()
                                                     _%$%g258059258152%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp260885))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont260206260207%_ (lambda () '#f)))
            (let ((_%__match260285260286%_
                   (lambda (_%$%e258061258098%_
                            _%$%hd258062258101%_
                            _%$%tl258063258103%_
                            _%$%e258064258106%_
                            _%$%hd258065258109%_
                            _%$%tl258066258111%_
                            _%$%e258067258114%_
                            _%$%hd258068258117%_
                            _%$%tl258069258119%_
                            _%$%e258070258122%_
                            _%$%hd258071258125%_
                            _%$%tl258072258127%_
                            _%__splice260204260205%_
                            _%$%target258073258130%_
                            _%$%tl258075258132%_)
                     (letrec ((_%$%loop258076258135%_
                               (lambda (_%$%hd258074258138%_
                                        _%$%rand258080258140%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd258074258138%_))
                                     (let ((_%$%e258077258142%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd258074258138%_))))
                                       (let ((_%$%lp-tl258079258147%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e258077258142%_)))
                                             (_%$%lp-hd258078258145%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e258077258142%_))))
                                         (_%$%loop258076258135%_
                                          _%$%lp-tl258079258147%_
                                          (cons _%$%lp-hd258078258145%_
                                                _%$%rand258080258140%_))))
                                     (let ((_%$%rand258081258150%_
                                            (reverse _%$%rand258080258140%_)))
                                       (_%__kont260202260203%_
                                        _%$%rand258081258150%_
                                        _%$%hd258071258125%_))))))
                       (_%$%loop258076258135%_
                        _%$%target258073258130%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx260196260197%_))
                  (let ((_%$%e258047258229%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx260196260197%_))))
                    (let ((_%$%tl258049258234%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e258047258229%_)))
                          (_%$%hd258048258232%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e258047258229%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd258048258232%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd258048258232%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl258049258234%_))
                                  (let ((_%$%e258050258237%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl258049258234%_))))
                                    (let ((_%$%tl258052258242%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e258050258237%_)))
                                          (_%$%hd258051258240%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e258050258237%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl258052258242%_))
                                          (_%__kont260198260199%_)
                                          (_%__kont260206260207%_))))
                                  (_%__kont260206260207%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd258048258232%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl258049258234%_))
                                      (let ((_%$%e258056258214%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl258049258234%_))))
                                        (let ((_%$%tl258058258219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e258056258214%_)))
                                              (_%$%hd258057258217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e258056258214%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl258058258219%_))
                                              (_%__kont260200260201%_)
                                              (_%__kont260206260207%_))))
                                      (_%__kont260206260207%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%$%hd258048258232%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl258049258234%_))
                                          (let ((_%$%e258064258106%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl258049258234%_))))
                                            (let ((_%$%tl258066258111%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e258064258106%_)))
                                                  (_%$%hd258065258109%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e258064258106%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd258065258109%_))
                                                  (let ((_%$%e258067258114%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd258065258109%_))))
                                                    (let ((_%$%tl258069258119%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e258067258114%_)))
                                                          (_%$%hd258068258117%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e258067258114%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd258068258117%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%$%hd258068258117%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl258069258119%_))
                          (let ((_%$%e258070258122%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl258069258119%_))))
                            (let ((_%$%tl258072258127%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e258070258122%_)))
                                  (_%$%hd258071258125%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e258070258122%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl258072258127%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl258066258111%_))
                                      (let ((_%__splice260204260205%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl258066258111%_
                                                '0))))
                                        (let ((_%$%tl258075258132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice260204260205%_
                                                  '1)))
                                              (_%$%target258073258130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice260204260205%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl258075258132%_))
                                              (_%__match260285260286%_
                                               _%$%e258047258229%_
                                               _%$%hd258048258232%_
                                               _%$%tl258049258234%_
                                               _%$%e258064258106%_
                                               _%$%hd258065258109%_
                                               _%$%tl258066258111%_
                                               _%$%e258067258114%_
                                               _%$%hd258068258117%_
                                               _%$%tl258069258119%_
                                               _%$%e258070258122%_
                                               _%$%hd258071258125%_
                                               _%$%tl258072258127%_
                                               _%__splice260204260205%_
                                               _%$%target258073258130%_
                                               _%$%tl258075258132%_)
                                              (_%__kont260206260207%_))))
                                      (_%__kont260206260207%_))
                                  (_%__kont260206260207%_))))
                          (_%__kont260206260207%_))
                      (_%__kont260206260207%_))
                  (_%__kont260206260207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont260206260207%_))))
                                          (_%__kont260206260207%_))
                                      (_%__kont260206260207%_))))
                          (_%__kont260206260207%_))))
                  (_%__kont260206260207%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx258035%_ _%klass258036%_)
        (let ((_%expr-type258038%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx258035%_))))
          (if _%expr-type258038%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type258038%_ _%klass258036%_))
              '#f))))
    (define gxc#incompatible-type?
      (lambda (_%expr258019%_ _%type258020%_)
        (if (not _%type258020%_)
            '#f
            (if (eq? (##structure-ref _%type258020%_ '1 gxc#!type::t '#f) 't)
                '#f
                (if (eq? (##structure-ref _%type258020%_ '1 gxc#!type::t '#f)
                         'false)
                    '#f
                    (let ((_%expr-type258026%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr258019%_))))
                      (if (not _%expr-type258026%_)
                          '#f
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type258026%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              '#f
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%expr-type258026%_
                                     'gxc#!abort::t))
                                  '#f
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#!type-subtype?
                                         _%expr-type258026%_
                                         _%type258020%_))
                                      '#f
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#!interface-instance?
                                             _%type258020%_))
                                          '#f
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!type-subtype?
                                                 _%type258020%_
                                                 _%expr-type258026%_))
                                              '#f
                                              '#t))))))))))))
    (define gxc#check-expression-type!
      (lambda (_%stx257997%_ _%expr257998%_ _%type257999%_)
        (if (not _%type257999%_)
            '#f
            (let ((_%$e258002%_
                   (eq? (##structure-ref _%type257999%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e258002%_
                  _%$e258002%_
                  (let ((_%expr-type258006%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr257998%_))))
                    (if (not _%expr-type258006%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type258006%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e258010%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type258006%_
                                      'gxc#!abort::t))))
                              (if _%$e258010%_
                                  _%$e258010%_
                                  (let ((_%$e258013%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type258006%_
                                            _%type257999%_))))
                                    (if _%$e258013%_
                                        _%$e258013%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type257999%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type257999%_
                                                   _%expr-type258006%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx257997%_
                                                   _%expr257998%_
                                                   _%expr-type258006%_
                                                   _%type257999%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self257811%_ _%ctx257812%_ _%stx257813%_ _%args257814%_)
        (let* ((_%self257817%_ _%self257811%_)
               (_%klass257827%_
                (let ((__tmp260887
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self257817%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx257813%_ __tmp260887)))
               (_%fields257829%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass257827%_
                           '5
                           '#f
                           '#f))))
               (_%args257835%_
                (map (lambda (_%$%g257830257832%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx257812%_ _%$%g257830257832%_)))
                     _%args257814%_))
               (_%inline-make-object257837%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self257817%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons '##structure '()))
                                              (cons (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self257817%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields257829%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass257840%_ _%klass257827%_)
               (_%$e257854%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass257840%_ '6 '#f '#f))))
          (if _%$e257854%_
              (let ((_%$obj257859%_
                     (let ((__tmp260888
                            (let () (declare (not safe)) (##gensym '__obj))))
                       (declare (not safe))
                       (make-symbol__0 __tmp260888)))
                    (_%ctor-impl257860%_
                     (let ()
                       (declare (not safe))
                       (gxc#!class-lookup-method
                        _%klass257840%_
                        _%$e257854%_))))
                (let ((__tmp260889
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj257859%_ '())
                                               (cons _%inline-make-object257837%_
                                                     '()))
                                         '())
                                   (cons (cons '%#begin
                                               (cons (if _%ctor-impl257860%_
                                                         (let ((__tmp260890
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl257860%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj257859%_ '()))
                                          _%args257835%_)))))
                   (declare (not safe))
                   (gxc#xform-wrap-apply
                    __tmp260890
                    _%stx257813%_
                    _%ctx257812%_))
                 (let ((_%$ctor257862%_
                        (let ((__tmp260891
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__constructor))))
                          (declare (not safe))
                          (make-symbol__0 __tmp260891))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$ctor257862%_ '())
                                           (cons (cons '%#call
                                                       (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'direct-method-ref '()))
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self257817%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#ref (cons _%$obj257859%_ '()))
                                 (cons (cons '%#quote (cons _%$e257854%_ '()))
                                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#ref
                                                       (cons _%$ctor257862%_
                                                             '()))
                                                 (cons (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$ctor257862%_ '()))
                           (cons (cons '%#ref (cons _%$obj257859%_ '()))
                                 _%args257835%_)))
               (cons (cons '%#call
                           (cons (cons '%#ref (cons 'error '()))
                                 (cons (cons '%#quote
                                             (cons '"missing constructor method implementation"
                                                   '()))
                                       (cons (cons '%#quote (cons 'class: '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self257817%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#quote
                                                               (cons 'method:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _%$e257854%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj257859%_ '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp260889 _%stx257813%_)))
              (let ((_%$e257864%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass257840%_
                        '10
                        '#f
                        '#f))))
                (if _%$e257864%_
                    (let* ((_%$obj257869%_
                            (let ((__tmp260892
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp260892)))
                           (_%metakons257871%_
                            (let ((__tmp260893
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx257813%_
                                      _%$e257864%_))))
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               __tmp260893
                               'instance-init!)))
                           (__tmp260894
                            (cons '%#let-values
                                  (cons (cons (cons (cons _%$obj257869%_ '())
                                                    (cons _%inline-make-object257837%_
                                                          '()))
                                              '())
                                        (cons (cons '%#begin
                                                    (cons (if _%metakons257871%_
                                                              (let ((__tmp260895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons257871%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self257817%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj257869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args257835%_))))))
                        (declare (not safe))
                        (gxc#xform-wrap-apply
                         __tmp260895
                         _%stx257813%_
                         _%ctx257812%_))
                      (cons '%#call
                            (cons (cons '%#ref (cons 'call-method '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self257817%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons 'instance-init! '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj257869%_
                                                                '()))
                                                    _%args257835%_))))))
                  (cons (cons '%#ref (cons _%$obj257869%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp260894 _%stx257813%_))
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass257840%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp260896
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args257835%_))))
                              (declare (not safe))
                              (##fx= __tmp260896 _%fields257829%_))
                            (let ((__tmp260897
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self257817%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '##structure '()))
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self257817%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args257835%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp260897
                               _%stx257813%_))
                            (let ((__tmp260899
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self257817%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp260898
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass257840%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx257813%_
                               __tmp260899
                               __tmp260898)))
                        (let ((_%$obj257876%_
                               (let ((__tmp260900
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp260900))))
                          (let _%lp257878%_ ((_%rest257880%_ _%args257835%_)
                                             (_%initializers257881%_ '()))
                            (let* ((_%__stx260288260289%_ _%rest257880%_)
                                   (_%$%g257885257906%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx260288260289%_)))))
                              (let ((_%__kont260290260291%_
                                     (lambda (_%$%g257887257960%_
                                              _%$%g257888257961%_
                                              _%$%g257889257962%_)
                                       (let* ((_%slot257989%_
                                               (let ((__tmp260901
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g257889257962%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp260901)))
                                              (_%off257991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass257840%_
                                                  _%slot257989%_))))
                                         (if _%off257991%_
                                             (_%lp257878%_
                                              _%$%g257887257960%_
                                              (cons (cons _%off257991%_
                                                          _%$%g257888257961%_)
                                                    _%initializers257881%_))
                                             (let ((__tmp260902
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self257817%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx257813%_
                                                __tmp260902
                                                _%slot257989%_))))))
                                    (_%__kont260292260293%_
                                     (lambda ()
                                       (let ((__tmp260903
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj257876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object257837%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp260906
                                     (cons (cons '%#ref
                                                 (cons _%$obj257876%_ '()))
                                           '()))
                                    (__tmp260904
                                     (let ((__tmp260905
                                            (lambda (_%i257920%_ _%r257921%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self257817%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i257920%_) '()))
                              (cons (cons '%#ref (cons _%$obj257876%_ '()))
                                    (cons (cdr _%i257920%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r257921%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp260905
                                        '()
                                        _%initializers257881%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp260906 __tmp260904)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp260903
                                          _%stx257813%_))))
                                    (_%__kont260294260295%_
                                     (lambda ()
                                       (let ((__tmp260907
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj257876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object257837%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj257876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args257835%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj257876%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp260907
                                          _%stx257813%_)))))
                                (let* ((_%$%g257883257923%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx260288260289%_))
                                              (_%__kont260292260293%_)
                                              (_%__kont260294260295%_))))
                                       (_%__match260325260326%_
                                        (lambda (_%$%e257890257928%_
                                                 _%$%hd257891257931%_
                                                 _%$%tl257892257933%_
                                                 _%$%e257893257936%_
                                                 _%$%hd257894257939%_
                                                 _%$%tl257895257941%_
                                                 _%$%e257896257944%_
                                                 _%$%hd257897257947%_
                                                 _%$%tl257898257949%_
                                                 _%$%e257899257952%_
                                                 _%$%hd257900257955%_
                                                 _%$%tl257901257957%_)
                                          (let ((_%$%g257887257960%_
                                                 _%$%tl257901257957%_)
                                                (_%$%g257888257961%_
                                                 _%$%hd257900257955%_)
                                                (_%$%g257889257962%_
                                                 _%$%hd257897257947%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%$%g257889257962%_))
                                                (_%__kont260290260291%_
                                                 _%$%g257887257960%_
                                                 _%$%g257888257961%_
                                                 _%$%g257889257962%_)
                                                (_%__kont260294260295%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx260288260289%_))
                                      (let ((_%$%e257890257928%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx260288260289%_))))
                                        (let ((_%$%tl257892257933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e257890257928%_)))
                                              (_%$%hd257891257931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e257890257928%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd257891257931%_))
                                              (let ((_%$%e257893257936%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd257891257931%_))))
                                                (let ((_%$%tl257895257941%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e257893257936%_)))
                                                      (_%$%hd257894257939%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e257893257936%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd257894257939%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%$%hd257894257939%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl257895257941%_))
                      (let ((_%$%e257896257944%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl257895257941%_))))
                        (let ((_%$%tl257898257949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e257896257944%_)))
                              (_%$%hd257897257947%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e257896257944%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl257898257949%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl257892257933%_))
                                  (let ((_%$%e257899257952%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl257892257933%_))))
                                    (let ((_%$%tl257901257957%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e257899257952%_)))
                                          (_%$%hd257900257955%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e257899257952%_))))
                                      (_%__match260325260326%_
                                       _%$%e257890257928%_
                                       _%$%hd257891257931%_
                                       _%$%tl257892257933%_
                                       _%$%e257893257936%_
                                       _%$%hd257894257939%_
                                       _%$%tl257895257941%_
                                       _%$%e257896257944%_
                                       _%$%hd257897257947%_
                                       _%$%tl257898257949%_
                                       _%$%e257899257952%_
                                       _%$%hd257900257955%_
                                       _%$%tl257901257957%_)))
                                  (_%__kont260294260295%_))
                              (_%__kont260294260295%_))))
                      (_%__kont260294260295%_))
                  (_%__kont260294260295%_))
              (_%__kont260294260295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont260294260295%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g257883257923%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::check-arguments
      (lambda (_%self257673%_ _%ctx257674%_ _%stx257675%_ _%args257676%_)
        (let ((_%self257679%_ _%self257673%_))
          (if (let ()
                (declare (not safe))
                (##unchecked-structure-ref _%self257679%_ '4 '#f '#f))
              (gxc#!procedure::check-arguments
               _%self257679%_
               _%ctx257674%_
               _%stx257675%_
               _%args257676%_)
              '#t))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'check-arguments
       gxc#!accessor::check-arguments
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self257456%_ _%ctx257457%_ _%stx257458%_ _%args257459%_)
        (let* ((_%self257462%_ _%self257456%_)
               (_%arguments-ok?257472%_
                (let ((__method260835
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self257462%_ 'check-arguments))))
                  (if __method260835
                      (let ()
                        (declare (not safe))
                        (__method260835
                         _%self257462%_
                         _%ctx257457%_
                         _%stx257458%_
                         _%args257459%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self257462%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g257474257484%_
                (lambda (_%$%g257475257481%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g257475257481%_))))
               (_%$%g257473257548%_
                (lambda (_%$%g257475257487%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g257475257487%_))
                      (let ((_%$%e257477257489%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g257475257487%_))))
                        (let ((_%$%hd257478257492%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e257477257489%_)))
                              (_%$%tl257479257494%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e257477257489%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl257479257494%_))
                              (let* ((_%klass257510%_
                                      (let ((__tmp260908
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self257462%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx257458%_
                                         __tmp260908)))
                                     (_%field257512%_
                                      (let ((__tmp260909
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self257462%_
                                                '3
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#!class-slot->field-offset
                                         _%klass257510%_
                                         __tmp260909)))
                                     (_%object257514%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx257457%_
                                         _%$%hd257478257492%_)))
                                     (_%klass257517%_ _%klass257510%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass257517%_
                                       '8
                                       '#f
                                       '#f))
                                    (let ((__tmp260910
                                           (cons (if (or _%arguments-ok?257472%_
                                                         (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self257462%_
                         '4
                         '#f
                         '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '%#struct-unchecked-ref
                                                     '%#struct-direct-ref)
                                                 (cons (cons '%#ref
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self257462%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#quote (cons _%field257512%_ '()))
                     (cons _%object257514%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp260910
                                       _%stx257458%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass257517%_
                                           '7
                                           '#f
                                           '#f))
                                        (let ((__tmp260911
                                               (cons (if (or _%arguments-ok?257472%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self257462%_
                             '4
                             '#f
                             '#f))))
                 '%#struct-unchecked-ref
                 '%#struct-ref)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self257462%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field257512%_ '()))
                         (cons _%object257514%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp260911
                                           _%stx257458%_))
                                        (let ((_%$e257536%_
                                               (let ((__tmp260912
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self257462%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot-find-struct
                                                  _%klass257517%_
                                                  __tmp260912))))
                                          (if _%$e257536%_
                                              (let ((__tmp260913
                                                     (cons (if (or _%arguments-ok?257472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self257462%_
                                   '4
                                   '#f
                                   '#f))))
                       '%#struct-unchecked-ref
                       '%#struct-ref)
                   (cons (cons '%#ref
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self257462%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#quote (cons _%field257512%_ '()))
                               (cons _%object257514%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp260913
                                                 _%stx257458%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self257462%_
                                                     '4
                                                     '#f
                                                     '#f))
                                                  (let ((__tmp260914
                                                         (let ((_%$obj257545%_
                                                                (let ((__tmp260915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp260915))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$obj257545%_ '())
                                           (cons _%object257514%_ '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#struct-direct-instance?
                                                       (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass257517%_
                                    '1
                                    '#f
                                    '#f))
                                 '()))
                     (cons (cons '%#ref (cons _%$obj257545%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#struct-unchecked-ref
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self257462%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field257512%_ '()))
                                 (cons (cons '%#ref (cons _%$obj257545%_ '()))
                                       '()))))
               (cons (if _%arguments-ok?257472%_
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj257545%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self257462%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'class-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self257462%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj257545%_
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self257462%_
                              '3
                              '#f
                              '#f))
                           '()))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp260914
                                                     _%stx257458%_))
                                                  (let ((__tmp260916
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'unchecked-slot-ref '()))
                             (cons _%object257514%_
                                   (cons (cons '%#quote
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self257462%_
                                                        '3
                                                        '#f
                                                        '#f))
                                                     '()))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp260916
                                                     _%stx257458%_))))))))
                              (_%$%g257474257484%_ _%$%g257475257487%_))))
                      (_%$%g257474257484%_ _%$%g257475257487%_)))))
          (_%$%g257473257548%_ _%args257459%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass259942 __method-table259943)
        (let ((__check-arguments259944
               (let ((__tmp260917
                      (lambda ()
                        (let ((__method259945
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table259943
                                  'check-arguments
                                  '#f))))
                          (if __method259945
                              __method259945
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp260917)))
              (__slot259946
               (let ((__slot259947
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass259942 'slot))))
                 (if __slot259947
                     __slot259947
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self257456%_ _%ctx257457%_ _%stx257458%_ _%args257459%_)
            (let* ((_%self257462%_ _%self257456%_)
                   (_%arguments-ok?257472%_
                    ((force __check-arguments259944)
                     _%self257462%_
                     _%ctx257457%_
                     _%stx257458%_
                     _%args257459%_))
                   (_%$%g257474257484%_
                    (lambda (_%$%g257475257481%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g257475257481%_))))
                   (_%$%g257473257548%_
                    (lambda (_%$%g257475257487%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g257475257487%_))
                          (let ((_%$%e257477257489%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g257475257487%_))))
                            (let ((_%$%hd257478257492%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e257477257489%_)))
                                  (_%$%tl257479257494%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e257477257489%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl257479257494%_))
                                  (let* ((_%klass257510%_
                                          (let ((__tmp260918
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self257462%_
                                                    '1
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx257458%_
                                             __tmp260918)))
                                         (_%field257512%_
                                          (let ((__tmp260919
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self257462%_
                                                    '3
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#!class-slot->field-offset
                                             _%klass257510%_
                                             __tmp260919)))
                                         (_%object257514%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%ctx257457%_
                                             _%$%hd257478257492%_)))
                                         (_%klass257517%_ _%klass257510%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass257517%_
                                           '8
                                           '#f
                                           '#f))
                                        (let ((__tmp260920
                                               (cons (if (or _%arguments-ok?257472%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self257462%_
                             '4
                             '#f
                             '#f))))
                 '%#struct-unchecked-ref
                 '%#struct-direct-ref)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self257462%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field257512%_ '()))
                         (cons _%object257514%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp260920
                                           _%stx257458%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass257517%_
                                               '7
                                               '#f
                                               '#f))
                                            (let ((__tmp260921
                                                   (cons (if (or _%arguments-ok?257472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self257462%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-ref
                     '%#struct-ref)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self257462%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field257512%_ '()))
                             (cons _%object257514%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp260921
                                               _%stx257458%_))
                                            (let ((_%$e257536%_
                                                   (let ((__tmp260922
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self257462%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot-find-struct
                                                      _%klass257517%_
                                                      __tmp260922))))
                                              (if _%$e257536%_
                                                  (let ((__tmp260923
                                                         (cons (if (or _%arguments-ok?257472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (not (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self257462%_
                                       '4
                                       '#f
                                       '#f))))
                           '%#struct-unchecked-ref
                           '%#struct-ref)
                       (cons (cons '%#ref
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self257462%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#quote (cons _%field257512%_ '()))
                                   (cons _%object257514%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp260923
                                                     _%stx257458%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self257462%_
                                                         '4
                                                         '#f
                                                         '#f))
                                                      (let ((__tmp260924
                                                             (let ((_%$obj257545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp260925
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp260925))))
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj257545%_ '())
                                               (cons _%object257514%_ '()))
                                         '())
                                   (cons (cons '%#if
                                               (cons (cons '%#struct-direct-instance?
                                                           (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass257517%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#ref (cons _%$obj257545%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#struct-unchecked-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self257462%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field257512%_ '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj257545%_ '()))
                                           '()))))
                   (cons (if _%arguments-ok?257472%_
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj257545%_ '()))
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self257462%_
                            __slot259946
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'class-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self257462%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj257545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self257462%_
                                  '3
                                  '#f
                                  '#f))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp260924 _%stx257458%_))
              (let ((__tmp260926
                     (cons '%#call
                           (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                 (cons _%object257514%_
                                       (cons (cons '%#quote
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self257462%_
                                                            '3
                                                            '#f
                                                            '#f))
                                                         '()))
                                             '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp260926 _%stx257458%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g257474257484%_ _%$%g257475257487%_))))
                          (_%$%g257474257484%_ _%$%g257475257487%_)))))
              (_%$%g257473257548%_ _%args257459%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self257220%_ _%ctx257221%_ _%stx257222%_ _%args257223%_)
        (let* ((_%self257226%_ _%self257220%_)
               (_%arguments-ok?257236%_
                (let ((__method260836
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self257226%_ 'check-arguments))))
                  (if __method260836
                      (let ()
                        (declare (not safe))
                        (__method260836
                         _%self257226%_
                         _%ctx257221%_
                         _%stx257222%_
                         _%args257223%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self257226%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g257238257252%_
                (lambda (_%$%g257239257249%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g257239257249%_))))
               (_%$%g257237257331%_
                (lambda (_%$%g257239257255%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g257239257255%_))
                      (let ((_%$%e257242257257%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g257239257255%_))))
                        (let ((_%$%hd257243257260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e257242257257%_)))
                              (_%$%tl257244257262%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e257242257257%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl257244257262%_))
                              (let ((_%$%e257245257265%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl257244257262%_))))
                                (let ((_%$%hd257246257268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e257245257265%_)))
                                      (_%$%tl257247257270%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e257245257265%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl257247257270%_))
                                      (let* ((_%klass257290%_
                                              (let ((__tmp260927
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self257226%_
                                                        '1
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#optimizer-resolve-class
                                                 _%stx257222%_
                                                 __tmp260927)))
                                             (_%field257292%_
                                              (let ((__tmp260928
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self257226%_
                                                        '3
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#!class-slot->field-offset
                                                 _%klass257290%_
                                                 __tmp260928)))
                                             (_%object257294%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx257221%_
                                                 _%$%hd257243257260%_)))
                                             (_%value257296%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx257221%_
                                                 _%$%hd257246257268%_)))
                                             (_%klass257299%_ _%klass257290%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass257299%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp260929
                                                   (cons (if (or _%arguments-ok?257236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self257226%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-set!
                     '%#struct-direct-set!)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self257226%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field257292%_ '()))
                             (cons _%object257294%_
                                   (cons _%value257296%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp260929
                                               _%stx257222%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass257299%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp260930
                                                       (cons (if (or _%arguments-ok?257236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self257226%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self257226%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field257292%_ '()))
                                 (cons _%object257294%_
                                       (cons _%value257296%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp260930
                                                   _%stx257222%_))
                                                (let ((_%$e257319%_
                                                       (let ((__tmp260931
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self257226%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot-find-struct _%klass257299%_ __tmp260931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e257319%_
                                                      (let ((__tmp260932
                                                             (cons (if (or _%arguments-ok?257236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (not (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self257226%_
                                           '3
                                           '#f
                                           '#f))))
                               '%#struct-unchecked-set!
                               '%#struct-set!)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self257226%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field257292%_ '()))
                                       (cons _%object257294%_
                                             (cons _%value257296%_ '())))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp260932 _%stx257222%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self257226%_ '4 '#f '#f))
                  (let ((__tmp260933
                         (let ((_%$obj257328%_
                                (let ((__tmp260934
                                       (let ()
                                         (declare (not safe))
                                         (##gensym '__obj))))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp260934))))
                           (cons '%#let-values
                                 (cons (cons (cons (cons _%$obj257328%_ '())
                                                   (cons _%object257294%_ '()))
                                             '())
                                       (cons (cons '%#if
                                                   (cons (cons '%#struct-direct-instance?
                                                               (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass257299%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#ref (cons _%$obj257328%_ '()))
                                   '())))
                 (cons (cons '%#struct-unchecked-set!
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self257226%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field257292%_ '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj257328%_ '()))
                                               (cons _%value257296%_ '())))))
                       (cons (if _%arguments-ok?257236%_
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'unchecked-slot-set!
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj257328%_
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self257226%_
                                '3
                                '#f
                                '#f))
                             '()))
                 (cons _%value257296%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'class-slot-set! '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self257226%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#ref
                                                               (cons _%$obj257328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self257226%_
                                      '3
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%value257296%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp260933 _%stx257222%_))
                  (let ((__tmp260935
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-set! '()))
                                     (cons _%object257294%_
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self257226%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%value257296%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp260935 _%stx257222%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g257238257252%_
                                       _%$%g257239257255%_))))
                              (_%$%g257238257252%_ _%$%g257239257255%_))))
                      (_%$%g257238257252%_ _%$%g257239257255%_)))))
          (_%$%g257237257331%_ _%args257223%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass259948 __method-table259949)
        (let ((__check-arguments259950
               (let ((__tmp260936
                      (lambda ()
                        (let ((__method259951
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table259949
                                  'check-arguments
                                  '#f))))
                          (if __method259951
                              __method259951
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp260936))))
          (lambda (_%self257220%_ _%ctx257221%_ _%stx257222%_ _%args257223%_)
            (let* ((_%self257226%_ _%self257220%_)
                   (_%arguments-ok?257236%_
                    ((force __check-arguments259950)
                     _%self257226%_
                     _%ctx257221%_
                     _%stx257222%_
                     _%args257223%_))
                   (_%$%g257238257252%_
                    (lambda (_%$%g257239257249%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g257239257249%_))))
                   (_%$%g257237257331%_
                    (lambda (_%$%g257239257255%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g257239257255%_))
                          (let ((_%$%e257242257257%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g257239257255%_))))
                            (let ((_%$%hd257243257260%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e257242257257%_)))
                                  (_%$%tl257244257262%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e257242257257%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl257244257262%_))
                                  (let ((_%$%e257245257265%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl257244257262%_))))
                                    (let ((_%$%hd257246257268%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e257245257265%_)))
                                          (_%$%tl257247257270%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e257245257265%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl257247257270%_))
                                          (let* ((_%klass257290%_
                                                  (let ((__tmp260937
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self257226%_
                                                            '1
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#optimizer-resolve-class
                                                     _%stx257222%_
                                                     __tmp260937)))
                                                 (_%field257292%_
                                                  (let ((__tmp260938
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self257226%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot->field-offset
                                                     _%klass257290%_
                                                     __tmp260938)))
                                                 (_%object257294%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx257221%_
                                                     _%$%hd257243257260%_)))
                                                 (_%value257296%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx257221%_
                                                     _%$%hd257246257268%_)))
                                                 (_%klass257299%_
                                                  _%klass257290%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass257299%_
                                                   '8
                                                   '#f
                                                   '#f))
                                                (let ((__tmp260939
                                                       (cons (if (or _%arguments-ok?257236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self257226%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-direct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self257226%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field257292%_ '()))
                                 (cons _%object257294%_
                                       (cons _%value257296%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp260939
                                                   _%stx257222%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%klass257299%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp260940
                                                           (cons (if (or _%arguments-ok?257236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self257226%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-set!
                             '%#struct-set!)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self257226%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field257292%_ '()))
                                     (cons _%object257294%_
                                           (cons _%value257296%_ '())))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp260940 _%stx257222%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$e257319%_
                                                           (let ((__tmp260941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self257226%_
                             '3
                             '#f
                             '#f))))
                     (declare (not safe))
                     (gxc#!class-slot-find-struct
                      _%klass257299%_
                      __tmp260941))))
              (if _%$e257319%_
                  (let ((__tmp260942
                         (cons (if (or _%arguments-ok?257236%_
                                       (not (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self257226%_
                                               '3
                                               '#f
                                               '#f))))
                                   '%#struct-unchecked-set!
                                   '%#struct-set!)
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self257226%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     (cons (cons '%#quote
                                                 (cons _%field257292%_ '()))
                                           (cons _%object257294%_
                                                 (cons _%value257296%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp260942 _%stx257222%_))
                  (if (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self257226%_ '4 '#f '#f))
                      (let ((__tmp260943
                             (let ((_%$obj257328%_
                                    (let ((__tmp260944
                                           (let ()
                                             (declare (not safe))
                                             (##gensym '__obj))))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp260944))))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj257328%_
                                                             '())
                                                       (cons _%object257294%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#if
                                                       (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass257299%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#ref (cons _%$obj257328%_ '()))
                                       '())))
                     (cons (cons '%#struct-unchecked-set!
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self257226%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field257292%_ '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj257328%_
                                                               '()))
                                                   (cons _%value257296%_
                                                         '())))))
                           (cons (if _%arguments-ok?257236%_
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'unchecked-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj257328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#quote
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self257226%_
                                    '3
                                    '#f
                                    '#f))
                                 '()))
                     (cons _%value257296%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'class-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self257226%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#ref (cons _%$obj257328%_ '()))
                     (cons (cons '%#quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self257226%_
                                          '3
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%value257296%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp260943 _%stx257222%_))
                      (let ((__tmp260945
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-set! '()))
                                         (cons _%object257294%_
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self257226%_
                            '3
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%value257296%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source
                         __tmp260945
                         _%stx257222%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g257238257252%_
                                           _%$%g257239257255%_))))
                                  (_%$%g257238257252%_ _%$%g257239257255%_))))
                          (_%$%g257238257252%_ _%$%g257239257255%_)))))
              (_%$%g257237257331%_ _%args257223%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self257036%_ _%ctx257037%_ _%stx257038%_ _%args257039%_)
        (let* ((_%self257042%_ _%self257036%_)
               (_%$%self257051257061%_ _%self257042%_)
               (_%$%E257053257064%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self257051257061%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%$%K257054257074%_
                (lambda (_%inline257067%_ _%dispatch257068%_ _%arity257069%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self257042%_
                         _%args257039%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx257038%_
                         _%arity257069%_)))
                  (if _%inline257067%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp260946 (_%inline257067%_ _%stx257038%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp260946
                           _%stx257038%_
                           _%ctx257037%_)))
                      (if (and _%dispatch257068%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch257068%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch257068%_))
                            (let ((__tmp260947
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch257068%_
                                                           '()))
                                               _%args257039%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp260947
                               _%stx257038%_
                               _%ctx257037%_)))
                          (gxc#!procedure::optimize-call
                           _%self257042%_
                           _%ctx257037%_
                           _%stx257038%_
                           _%args257039%_)))))
               (_%$%e257055257077%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self257051257061%_
                   '1
                   '#f
                   '#f)))
               (_%$%e257056257080%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self257051257061%_
                   '2
                   '#f
                   '#f)))
               (_%$%e257057257083%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self257051257061%_
                   '3
                   '#f
                   '#f)))
               (_%arity257086%_ _%$%e257057257083%_)
               (_%$%e257058257088%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self257051257061%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch257091%_ _%$%e257058257088%_)
               (_%$%e257059257093%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self257051257061%_
                   '5
                   '#f
                   '#f)))
               (_%inline257096%_ _%$%e257059257093%_))
          (_%$%K257054257074%_
           _%inline257096%_
           _%dispatch257091%_
           _%arity257086%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self256888%_ _%ctx256889%_ _%stx256890%_ _%args256891%_)
        (let* ((_%self256894%_ _%self256888%_)
               (_%$e256908%_
                (let ((__tmp260949
                       (lambda (_%$%g256903256905%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%$%g256903256905%_
                            _%args256891%_))))
                      (__tmp260948
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self256894%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp260949 __tmp260948))))
          (if _%$e256908%_
              (let ((__method260837
                     (let ()
                       (declare (not safe))
                       (__method-ref _%$e256908%_ 'optimize-call))))
                (if __method260837
                    (let ()
                      (declare (not safe))
                      (__method260837
                       _%$e256908%_
                       _%ctx256889%_
                       _%stx256890%_
                       _%args256891%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method" _%$e256908%_ 'optimize-call))
                      '#!void)))
              (let ((__tmp260950
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self256894%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx256890%_
                 __tmp260950))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self256629%_ _%ctx256630%_ _%stx256631%_ _%args256632%_)
        (let* ((_%self256635%_ _%self256629%_)
               (_%$%self256644256653%_ _%self256635%_)
               (_%$%E256646256656%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self256644256653%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%$%K256647256747%_
                (lambda (_%dispatch256659%_ _%table256660%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch256659%_))
                      (let* ((_%$%g256661256671%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch256659%_)))
                             (_%$%else256663256679%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch256659%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx256630%_
                                   _%stx256631%_))))
                             (_%$%K256665256728%_
                              (lambda (_%main256682%_ _%keys256683%_)
                                (let ((_g260951_
                                       (gxc#!kw-lambda-split-args
                                        _%stx256631%_
                                        _%args256632%_)))
                                  (begin
                                    (let ((_g260952_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g260951_)
                                                 (##values-length _g260951_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g260952_ 2)))
                                          (error "Context expects 2 values"
                                                 _g260952_)))
                                    (let ((_%pargs256685%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g260951_ 0)))
                                          (_%kwargs256686%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g260951_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main256682%_))
                                        (if _%table256660%_
                                            (let ((_%xargs256694%_
                                                   (map (lambda (_%key256688%_)
                                                          (let ((_%$e256690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key256688%_ _%kwargs256686%_))))
                    (if _%$e256690%_ _%$e256690%_ '(%#ref absent-value))))
                _%keys256683%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw256696%_)
                                                 (if (memq (car _%kw256696%_)
                                                           _%keys256683%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx256631%_
                                                        _%keys256683%_
                                                        _%kw256696%_))))
                                               _%kwargs256686%_)
                                              (let ((__tmp260953
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main256682%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs256685%_
                                  _%xargs256694%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp260953
                                                 _%stx256631%_
                                                 _%ctx256630%_)))
                                            (let* ((_%kwt256698%_
                                                    (let ((__tmp260954
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp260954)))
                                                   (_%kwvars256702%_
                                                    (map (lambda (_%_256700%_)
                                                           (let ((__tmp260955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp260955)))
                 _%kwargs256686%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind256707%_
                                                    (map (lambda (_%kw256704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar256705%_)
                   (cons (cons _%kwvar256705%_ '())
                         (cons (cdr _%kw256704%_) '())))
                 _%kwargs256686%_
                 _%kwvars256702%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset256712%_
                                                    (map (lambda (_%kw256709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar256710%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt256698%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw256709%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar256710%_
                                                             '()))
                                                 '()))))))
                 _%kwargs256686%_
                 _%kwvars256702%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs256717%_
                                                    (map (lambda (_%kw256714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar256715%_)
                   (cons (car _%kw256714%_)
                         (cons '%#ref (cons _%kwvar256715%_ '()))))
                 _%kwargs256686%_
                 _%kwvars256702%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs256725%_
                                                    (map (lambda (_%key256719%_)
                                                           (let ((_%$e256721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key256719%_ _%xkwargs256717%_))))
                     (if _%$e256721%_ _%$e256721%_ '(%#ref absent-value))))
                 _%keys256683%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp260956
                                                    (cons '%#let-values
                                                          (cons _%kwbind256707%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt256698%_ '())
                                                      (cons (let ((__tmp260957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs256686%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp260957 _%stx256631%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp260958
                                                             (cons (let ((__tmp260959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main256682%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt256698%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs256685%_
                                                       _%xargs256725%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp260959 _%stx256631%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp260958 _%kwset256712%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp260956
                                               _%stx256631%_
                                               _%ctx256630%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%g256661256671%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%$%e256666256731%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g256661256671%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%$%e256667256734%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g256661256671%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%$%e256668256737%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g256661256671%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys256740%_ _%$%e256668256737%_)
                                   (_%$%e256669256742%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g256661256671%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main256745%_ _%$%e256669256742%_))
                              (_%$%K256665256728%_
                               _%main256745%_
                               _%keys256740%_))
                            (_%$%else256663256679%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx256630%_ _%stx256631%_)))))
               (_%$%e256648256750%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self256644256653%_
                   '1
                   '#f
                   '#f)))
               (_%$%e256649256753%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self256644256653%_
                   '2
                   '#f
                   '#f)))
               (_%$%e256650256756%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self256644256653%_
                   '3
                   '#f
                   '#f)))
               (_%table256759%_ _%$%e256650256756%_)
               (_%$%e256651256761%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self256644256653%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch256764%_ _%$%e256651256761%_))
          (_%$%K256647256747%_ _%dispatch256764%_ _%table256759%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx256242%_ _%args256243%_)
        (let _%lp256245%_ ((_%rest256247%_ _%args256243%_)
                           (_%pargs256248%_ '())
                           (_%kwargs256249%_ '()))
          (let* ((_%__stx260330260331%_ _%rest256247%_)
                 (_%$%g256255256307%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx260330260331%_)))))
            (let ((_%__kont260332260333%_
                   (lambda (_%$%g256257256486%_ _%$%g256258256487%_)
                     (_%lp256245%_
                      _%$%g256257256486%_
                      (cons _%$%g256258256487%_ _%pargs256248%_)
                      _%kwargs256249%_)))
                  (_%__kont260334260335%_
                   (lambda (_%$%g256272256432%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%$%g256272256432%_
                                _%pargs256248%_))
                             (reverse _%kwargs256249%_))))
                  (_%__kont260336260337%_
                   (lambda (_%$%g256283256379%_
                            _%$%g256284256380%_
                            _%$%g256285256381%_)
                     (let ((_%kw256398%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g256285256381%_))))
                       (if (assq _%kw256398%_ _%kwargs256249%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx256242%_
                              _%kw256398%_))
                           (_%lp256245%_
                            _%$%g256283256379%_
                            _%pargs256248%_
                            (cons (cons _%kw256398%_ _%$%g256284256380%_)
                                  _%kwargs256249%_))))))
                  (_%__kont260338260339%_
                   (lambda (_%$%g256298256327%_ _%$%g256299256328%_)
                     (_%lp256245%_
                      _%$%g256298256327%_
                      (cons _%$%g256299256328%_ _%pargs256248%_)
                      _%kwargs256249%_)))
                  (_%__kont260340260341%_
                   (lambda ()
                     (values (reverse _%pargs256248%_)
                             (reverse _%kwargs256249%_)))))
              (let ((_%__match260437260438%_
                     (lambda (_%$%e256286256347%_
                              _%$%hd256287256350%_
                              _%$%tl256288256352%_
                              _%$%e256289256355%_
                              _%$%hd256290256358%_
                              _%$%tl256291256360%_
                              _%$%e256292256363%_
                              _%$%hd256293256366%_
                              _%$%tl256294256368%_
                              _%$%e256295256371%_
                              _%$%hd256296256374%_
                              _%$%tl256297256376%_)
                       (let ((_%$%g256283256379%_ _%$%tl256297256376%_)
                             (_%$%g256284256380%_ _%$%hd256296256374%_)
                             (_%$%g256285256381%_ _%$%hd256293256366%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%$%g256285256381%_))
                             (_%__kont260336260337%_
                              _%$%g256283256379%_
                              _%$%g256284256380%_
                              _%$%g256285256381%_)
                             (_%__kont260338260339%_
                              _%$%tl256288256352%_
                              _%$%hd256287256350%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx260330260331%_))
                    (let ((_%$%e256259256451%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx260330260331%_))))
                      (let ((_%$%tl256261256456%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e256259256451%_)))
                            (_%$%hd256260256454%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e256259256451%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd256260256454%_))
                            (let ((_%$%e256262256459%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd256260256454%_))))
                              (let ((_%$%tl256264256464%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e256262256459%_)))
                                    (_%$%hd256263256462%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e256262256459%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd256263256462%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd256263256462%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl256264256464%_))
                                            (let ((_%$%e256265256467%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl256264256464%_))))
                                              (let ((_%$%tl256267256472%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e256265256467%_)))
                                                    (_%$%hd256266256470%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e256265256467%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd256266256470%_))
                                                    (let ((_%$%e256268256475%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd256266256470%_))))
                                                      (if (equal? _%$%e256268256475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl256267256472%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl256261256456%_))
                          (let ((_%$%e256269256478%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl256261256456%_))))
                            (let ((_%$%tl256271256483%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e256269256478%_)))
                                  (_%$%hd256270256481%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e256269256478%_))))
                              (_%__kont260332260333%_
                               _%$%tl256271256483%_
                               _%$%hd256270256481%_)))
                          (_%__kont260338260339%_
                           _%$%tl256261256456%_
                           _%$%hd256260256454%_))
                      (_%__kont260338260339%_
                       _%$%tl256261256456%_
                       _%$%hd256260256454%_))
                  (if (equal? _%$%e256268256475%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl256267256472%_))
                          (_%__kont260334260335%_ _%$%tl256261256456%_)
                          (_%__kont260338260339%_
                           _%$%tl256261256456%_
                           _%$%hd256260256454%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl256267256472%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl256261256456%_))
                              (let ((_%$%e256295256371%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl256261256456%_))))
                                (let ((_%$%tl256297256376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e256295256371%_)))
                                      (_%$%hd256296256374%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e256295256371%_))))
                                  (_%__match260437260438%_
                                   _%$%e256259256451%_
                                   _%$%hd256260256454%_
                                   _%$%tl256261256456%_
                                   _%$%e256262256459%_
                                   _%$%hd256263256462%_
                                   _%$%tl256264256464%_
                                   _%$%e256265256467%_
                                   _%$%hd256266256470%_
                                   _%$%tl256267256472%_
                                   _%$%e256295256371%_
                                   _%$%hd256296256374%_
                                   _%$%tl256297256376%_)))
                              (_%__kont260338260339%_
                               _%$%tl256261256456%_
                               _%$%hd256260256454%_))
                          (_%__kont260338260339%_
                           _%$%tl256261256456%_
                           _%$%hd256260256454%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl256267256472%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl256261256456%_))
                                                            (let ((_%$%e256295256371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl256261256456%_))))
                      (let ((_%$%tl256297256376%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e256295256371%_)))
                            (_%$%hd256296256374%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e256295256371%_))))
                        (_%__match260437260438%_
                         _%$%e256259256451%_
                         _%$%hd256260256454%_
                         _%$%tl256261256456%_
                         _%$%e256262256459%_
                         _%$%hd256263256462%_
                         _%$%tl256264256464%_
                         _%$%e256265256467%_
                         _%$%hd256266256470%_
                         _%$%tl256267256472%_
                         _%$%e256295256371%_
                         _%$%hd256296256374%_
                         _%$%tl256297256376%_)))
                    (_%__kont260338260339%_
                     _%$%tl256261256456%_
                     _%$%hd256260256454%_))
                (_%__kont260338260339%_
                 _%$%tl256261256456%_
                 _%$%hd256260256454%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont260338260339%_
                                             _%$%tl256261256456%_
                                             _%$%hd256260256454%_))
                                        (_%__kont260338260339%_
                                         _%$%tl256261256456%_
                                         _%$%hd256260256454%_))
                                    (_%__kont260338260339%_
                                     _%$%tl256261256456%_
                                     _%$%hd256260256454%_))))
                            (_%__kont260338260339%_
                             _%$%tl256261256456%_
                             _%$%hd256260256454%_))))
                    (_%__kont260340260341%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self256226%_ _%ctx256227%_ _%stx256228%_ _%args256229%_)
        (let ((_%self256232%_ _%self256226%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx256227%_ _%stx256228%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self255916%_ _%stx255917%_)
        (let* ((_%__stx260446260447%_ _%stx255917%_)
               (_%$%g255920255960%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx260446260447%_)))))
          (let ((_%__kont260448260449%_
                 (lambda (_%$%g255922256064%_ _%$%g255923256065%_)
                   (let ((_%$e256092%_
                          (member 'return:
                                  (let ((__tmp260960
                                         (lambda (_%$%g256084256087%_
                                                  _%$%g256085256089%_)
                                           (cons _%$%g256084256087%_
                                                 _%$%g256085256089%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp260960
                                     '()
                                     _%$%g255923256065%_))
                                  gx#stx-eq?)))
                     (if _%$e256092%_
                         (let ((_%type256097%_
                                (let ((__tmp260961
                                       (let ((__tmp260962 (cadr _%$e256092%_)))
                                         (declare (not safe))
                                         (gxc#identifier-symbol __tmp260962))))
                                  (declare (not safe))
                                  (gxc#optimizer-resolve-class
                                   _%stx255917%_
                                   __tmp260961))))
                           (gxc#check-return-type!
                            _%stx255917%_
                            _%$%g255922256064%_
                            _%type256097%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self255916%_
                              _%$%g255922256064%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self255916%_
                            _%$%g255922256064%_))))))
                (_%__kont260452260453%_
                 (lambda (_%$%g255945255989%_ _%$%g255946255990%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self255916%_ _%$%g255945255989%_)))))
            (let ((_%__match260483260484%_
                   (lambda (_%$%e255924256010%_
                            _%$%hd255925256013%_
                            _%$%tl255926256015%_
                            _%$%e255927256018%_
                            _%$%hd255928256021%_
                            _%$%tl255929256023%_
                            _%$%e255930256026%_
                            _%$%hd255931256029%_
                            _%$%tl255932256031%_
                            _%__splice260450260451%_
                            _%$%target255933256034%_
                            _%$%tl255935256036%_)
                     (letrec ((_%$%loop255936256039%_
                               (lambda (_%$%hd255934256042%_
                                        _%$%signature255940256044%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd255934256042%_))
                                     (let ((_%$%e255937256046%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd255934256042%_))))
                                       (let ((_%$%lp-tl255939256051%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e255937256046%_)))
                                             (_%$%lp-hd255938256049%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e255937256046%_))))
                                         (_%$%loop255936256039%_
                                          _%$%lp-tl255939256051%_
                                          (cons _%$%lp-hd255938256049%_
                                                _%$%signature255940256044%_))))
                                     (let ((_%$%signature255941256054%_
                                            (reverse _%$%signature255940256044%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl255929256023%_))
                                           (let ((_%$%e255942256056%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl255929256023%_))))
                                             (let ((_%$%tl255944256061%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e255942256056%_)))
                                                   (_%$%hd255943256059%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e255942256056%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl255944256061%_))
                                                   (_%__kont260448260449%_
                                                    _%$%hd255943256059%_
                                                    _%$%signature255941256054%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g255920255960%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g255920255960%_))))))))
                       (_%$%loop255936256039%_
                        _%$%target255933256034%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx260446260447%_))
                  (let ((_%$%e255924256010%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx260446260447%_))))
                    (let ((_%$%tl255926256015%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e255924256010%_)))
                          (_%$%hd255925256013%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e255924256010%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl255926256015%_))
                          (let ((_%$%e255927256018%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl255926256015%_))))
                            (let ((_%$%tl255929256023%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e255927256018%_)))
                                  (_%$%hd255928256021%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e255927256018%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd255928256021%_))
                                  (let ((_%$%e255930256026%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd255928256021%_))))
                                    (let ((_%$%tl255932256031%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e255930256026%_)))
                                          (_%$%hd255931256029%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e255930256026%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd255931256029%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%$%hd255931256029%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%$%tl255932256031%_))
                                                  (let ((_%__splice260450260451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl255932256031%_
                                                            '0))))
                                                    (let ((_%$%tl255935256036%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice260450260451%_
                                                              '1)))
                                                          (_%$%target255933256034%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice260450260451%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl255935256036%_))
                                                          (_%__match260483260484%_
                                                           _%$%e255924256010%_
                                                           _%$%hd255925256013%_
                                                           _%$%tl255926256015%_
                                                           _%$%e255927256018%_
                                                           _%$%hd255928256021%_
                                                           _%$%tl255929256023%_
                                                           _%$%e255930256026%_
                                                           _%$%hd255931256029%_
                                                           _%$%tl255932256031%_
                                                           _%__splice260450260451%_
                                                           _%$%target255933256034%_
                                                           _%$%tl255935256036%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl255929256023%_))
                      (let ((_%$%e255953255981%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl255929256023%_))))
                        (let ((_%$%tl255955255986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e255953255981%_)))
                              (_%$%hd255954255984%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e255953255981%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl255955255986%_))
                              (_%__kont260452260453%_
                               _%$%hd255954255984%_
                               _%$%hd255928256021%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g255920255960%_)))))
                      (let () (declare (not safe)) (_%$%g255920255960%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl255929256023%_))
                                                      (let ((_%$%e255953255981%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl255929256023%_))))
                (let ((_%$%tl255955255986%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e255953255981%_)))
                      (_%$%hd255954255984%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e255953255981%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl255955255986%_))
                      (_%__kont260452260453%_
                       _%$%hd255954255984%_
                       _%$%hd255928256021%_)
                      (let () (declare (not safe)) (_%$%g255920255960%_)))))
              (let () (declare (not safe)) (_%$%g255920255960%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl255929256023%_))
                                                  (let ((_%$%e255953255981%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl255929256023%_))))
                                                    (let ((_%$%tl255955255986%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e255953255981%_)))
                                                          (_%$%hd255954255984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e255953255981%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl255955255986%_))
                                                          (_%__kont260452260453%_
                                                           _%$%hd255954255984%_
                                                           _%$%hd255928256021%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g255920255960%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g255920255960%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl255929256023%_))
                                              (let ((_%$%e255953255981%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl255929256023%_))))
                                                (let ((_%$%tl255955255986%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e255953255981%_)))
                                                      (_%$%hd255954255984%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e255953255981%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl255955255986%_))
                                                      (_%__kont260452260453%_
                                                       _%$%hd255954255984%_
                                                       _%$%hd255928256021%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g255920255960%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g255920255960%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl255929256023%_))
                                      (let ((_%$%e255953255981%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl255929256023%_))))
                                        (let ((_%$%tl255955255986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e255953255981%_)))
                                              (_%$%hd255954255984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e255953255981%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl255955255986%_))
                                              (_%__kont260452260453%_
                                               _%$%hd255954255984%_
                                               _%$%hd255928256021%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g255920255960%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g255920255960%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g255920255960%_)))))
                  (let () (declare (not safe)) (_%$%g255920255960%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx255891%_ _%expr255892%_ _%type255893%_)
        (let ((_%$e255895%_ (not _%type255893%_)))
          (if _%$e255895%_
              _%$e255895%_
              (let ((_%$e255898%_
                     (eq? (##structure-ref _%type255893%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e255898%_
                    _%$e255898%_
                    (let ((_%$e255901%_
                           (eq? (##structure-ref
                                 _%type255893%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e255901%_
                          _%$e255901%_
                          (let ((_%expr-type255905%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr255892%_))))
                            (if (not _%expr-type255905%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx255891%_
                                   _%type255893%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type255905%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx255891%_
                                       _%type255893%_
                                       _%expr-type255905%_))
                                    (let ((_%$e255909%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type255905%_
                                              'gxc#!abort::t))))
                                      (if _%$e255909%_
                                          _%$e255909%_
                                          (let ((_%$e255912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type255905%_
                                                    _%type255893%_))))
                                            (if _%$e255912%_
                                                _%$e255912%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx255891%_
                                                   _%type255893%_
                                                   _%expr-type255905%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self255320%_ _%stx255321%_)
        (gxc#check-contract-violation!
         _%stx255321%_
         (let* ((_%__stx260532260533%_ _%stx255321%_)
                (_%$%g255326255436%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; invalid match target"
                      _%__stx260532260533%_)))))
           (let ((_%__kont260534260535%_
                  (lambda (_%$%g255328255865%_
                           _%$%g255329255866%_
                           _%$%g255330255867%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-e _%$%g255330255867%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self255320%_
                           _%$%g255329255866%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self255320%_
                           _%$%g255328255865%_)))))
                 (_%__kont260536260537%_
                  (lambda (_%$%g255349255694%_
                           _%$%g255350255695%_
                           _%$%g255351255696%_
                           _%$%g255352255697%_)
                    (let ((_%$e255729%_
                           (let ((__tmp260963
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g255352255697%_))))
                             (declare (not safe))
                             (gxc#optimizer-lookup-type __tmp260963))))
                      (if _%$e255729%_
                          (if (or (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e255729%_
                                     'gxc#!predicate::t))
                                  (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e255729%_
                                     'gxc#!primitive-predicate::t)))
                              (let* ((_%test255737%_
                                      (let ((__tmp260964
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '%#call))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '%#ref))
                       (cons _%$%g255352255697%_ '()))
                 (cons (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#ref))
                             (cons _%$%g255351255696%_ '()))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-apply
                                         __tmp260964
                                         _%stx255321%_
                                         _%self255320%_)))
                                     (_%K255741%_
                                      (let ((__tmp260965
                                             (lambda ()
                                               (let ((__tmp260968
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self255320%_
                                                           _%$%g255350255695%_))))
                                                     (__tmp260966
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#identifier-symbol _%$%g255351255696%_))
                          (let ((__tmp260967
                                 (##structure-ref
                                  _%$e255729%_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             _%stx255321%_
                             __tmp260967)))
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp260968
                                                  gxc#current-compile-path-type
                                                  __tmp260966)))))
                                        (declare (not safe))
                                        (__make-promise __tmp260965)))
                                     (_%E255744%_
                                      (let ((__tmp260969
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self255320%_
                                                  _%$%g255349255694%_)))))
                                        (declare (not safe))
                                        (__make-promise __tmp260969)))
                                     (_%__stx260506260507%_ _%test255737%_)
                                     (_%$%g255748255761%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx260506260507%_)))))
                                (let ((_%__kont260508260509%_
                                       (lambda (_%$%g255750255789%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%$%g255750255789%_))
                                             (force _%K255741%_)
                                             (force _%E255744%_))))
                                      (_%__kont260510260511%_
                                       (lambda ()
                                         (let ((__tmp260970
                                                (cons '%#if
                                                      (cons _%test255737%_
                                                            (cons (force _%K255741%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (force _%E255744%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp260970
                                            _%stx255321%_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx260506260507%_))
                                      (let ((_%$%e255751255773%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx260506260507%_))))
                                        (let ((_%$%tl255753255778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e255751255773%_)))
                                              (_%$%hd255752255776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e255751255773%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd255752255776%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#quote
                                                     _%$%hd255752255776%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl255753255778%_))
                                                      (let ((_%$%e255754255781%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl255753255778%_))))
                (let ((_%$%tl255756255786%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e255754255781%_)))
                      (_%$%hd255755255784%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e255754255781%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl255756255786%_))
                      (_%__kont260508260509%_ _%$%hd255755255784%_)
                      (_%__kont260510260511%_))))
              (_%__kont260510260511%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont260510260511%_))
                                              (_%__kont260510260511%_))))
                                      (_%__kont260510260511%_))))
                              (let ()
                                (declare (not safe))
                                (gxc#xform-operands
                                 _%self255320%_
                                 _%stx255321%_)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-operands
                             _%self255320%_
                             _%stx255321%_))))))
                 (_%__kont260538260539%_
                  (lambda (_%$%g255386255570%_
                           _%$%g255387255571%_
                           _%$%g255388255572%_
                           _%$%g255389255573%_)
                    (gxc#optimize-if%
                     _%self255320%_
                     (let ((__tmp260971
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#if))
                                  (cons _%$%g255388255572%_
                                        (cons _%$%g255386255570%_
                                              (cons _%$%g255387255571%_
                                                    '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp260971 _%stx255321%_)))))
                 (_%__kont260540260541%_
                  (lambda (_%$%g255417255473%_
                           _%$%g255418255474%_
                           _%$%g255419255475%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-operands _%self255320%_ _%stx255321%_)))))
             (let ((_%__match260739260740%_
                    (lambda (_%$%e255390255498%_
                             _%$%hd255391255501%_
                             _%$%tl255392255503%_
                             _%$%e255393255506%_
                             _%$%hd255394255509%_
                             _%$%tl255395255511%_
                             _%$%e255396255514%_
                             _%$%hd255397255517%_
                             _%$%tl255398255519%_
                             _%$%e255399255522%_
                             _%$%hd255400255525%_
                             _%$%tl255401255527%_
                             _%$%e255402255530%_
                             _%$%hd255403255533%_
                             _%$%tl255404255535%_
                             _%$%e255405255538%_
                             _%$%hd255406255541%_
                             _%$%tl255407255543%_
                             _%$%e255408255546%_
                             _%$%hd255409255549%_
                             _%$%tl255410255551%_
                             _%$%e255411255554%_
                             _%$%hd255412255557%_
                             _%$%tl255413255559%_
                             _%$%e255414255562%_
                             _%$%hd255415255565%_
                             _%$%tl255416255567%_)
                      (let ((_%$%g255386255570%_ _%$%hd255415255565%_)
                            (_%$%g255387255571%_ _%$%hd255412255557%_)
                            (_%$%g255388255572%_ _%$%hd255409255549%_)
                            (_%$%g255389255573%_ _%$%hd255406255541%_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _%$%g255389255573%_
                               'not))
                            (_%__kont260538260539%_
                             _%$%g255386255570%_
                             _%$%g255387255571%_
                             _%$%g255388255572%_
                             _%$%g255389255573%_)
                            (_%__kont260540260541%_
                             _%$%hd255415255565%_
                             _%$%hd255412255557%_
                             _%$%hd255394255509%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx260532260533%_))
                   (let ((_%$%e255331255817%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx260532260533%_))))
                     (let ((_%$%tl255333255822%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e255331255817%_)))
                           (_%$%hd255332255820%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e255331255817%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl255333255822%_))
                           (let ((_%$%e255334255825%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl255333255822%_))))
                             (let ((_%$%tl255336255830%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e255334255825%_)))
                                   (_%$%hd255335255828%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e255334255825%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd255335255828%_))
                                   (let ((_%$%e255337255833%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd255335255828%_))))
                                     (let ((_%$%tl255339255838%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e255337255833%_)))
                                           (_%$%hd255338255836%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e255337255833%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd255338255836%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#quote
                                                  _%$%hd255338255836%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl255339255838%_))
                                                   (let ((_%$%e255340255841%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl255339255838%_))))
                                                     (let ((_%$%tl255342255846%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e255340255841%_)))
                                                           (_%$%hd255341255844%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e255340255841%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl255342255846%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl255336255830%_))
                       (let ((_%$%e255343255849%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl255336255830%_))))
                         (let ((_%$%tl255345255854%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e255343255849%_)))
                               (_%$%hd255344255852%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e255343255849%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl255345255854%_))
                               (let ((_%$%e255346255857%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl255345255854%_))))
                                 (let ((_%$%tl255348255862%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e255346255857%_)))
                                       (_%$%hd255347255860%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e255346255857%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl255348255862%_))
                                       (_%__kont260534260535%_
                                        _%$%hd255347255860%_
                                        _%$%hd255344255852%_
                                        _%$%hd255341255844%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g255326255436%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g255326255436%_)))))
                       (let () (declare (not safe)) (_%$%g255326255436%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl255336255830%_))
                       (let ((_%$%e255426255457%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl255336255830%_))))
                         (let ((_%$%tl255428255462%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e255426255457%_)))
                               (_%$%hd255427255460%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e255426255457%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl255428255462%_))
                               (let ((_%$%e255429255465%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl255428255462%_))))
                                 (let ((_%$%tl255431255470%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e255429255465%_)))
                                       (_%$%hd255430255468%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e255429255465%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl255431255470%_))
                                       (_%__kont260540260541%_
                                        _%$%hd255430255468%_
                                        _%$%hd255427255460%_
                                        _%$%hd255335255828%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g255326255436%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g255326255436%_)))))
                       (let () (declare (not safe)) (_%$%g255326255436%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl255336255830%_))
                                                       (let ((_%$%e255426255457%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl255336255830%_))))
                 (let ((_%$%tl255428255462%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e255426255457%_)))
                       (_%$%hd255427255460%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e255426255457%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl255428255462%_))
                       (let ((_%$%e255429255465%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl255428255462%_))))
                         (let ((_%$%tl255431255470%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e255429255465%_)))
                               (_%$%hd255430255468%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e255429255465%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl255431255470%_))
                               (_%__kont260540260541%_
                                _%$%hd255430255468%_
                                _%$%hd255427255460%_
                                _%$%hd255335255828%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g255326255436%_)))))
                       (let () (declare (not safe)) (_%$%g255326255436%_)))))
               (let () (declare (not safe)) (_%$%g255326255436%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-eq?
                                                      '%#call
                                                      _%$%hd255338255836%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl255339255838%_))
                                                       (let ((_%$%e255362255630%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl255339255838%_))))
                 (let ((_%$%tl255364255635%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e255362255630%_)))
                       (_%$%hd255363255633%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e255362255630%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%hd255363255633%_))
                       (let ((_%$%e255365255638%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%hd255363255633%_))))
                         (let ((_%$%tl255367255643%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e255365255638%_)))
                               (_%$%hd255366255641%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e255365255638%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%$%hd255366255641%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-eq? '%#ref _%$%hd255366255641%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl255367255643%_))
                                       (let ((_%$%e255368255646%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl255367255643%_))))
                                         (let ((_%$%tl255370255651%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e255368255646%_)))
                                               (_%$%hd255369255649%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e255368255646%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl255370255651%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl255364255635%_))
                                                   (let ((_%$%e255371255654%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl255364255635%_))))
                                                     (let ((_%$%tl255373255659%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e255371255654%_)))
                                                           (_%$%hd255372255657%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e255371255654%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd255372255657%_))
                                                           (let ((_%$%e255374255662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd255372255657%_))))
                     (let ((_%$%tl255376255667%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e255374255662%_)))
                           (_%$%hd255375255665%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e255374255662%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%$%hd255375255665%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-eq? '%#ref _%$%hd255375255665%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl255376255667%_))
                                   (let ((_%$%e255377255670%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl255376255667%_))))
                                     (let ((_%$%tl255379255675%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e255377255670%_)))
                                           (_%$%hd255378255673%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e255377255670%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl255379255675%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl255373255659%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl255336255830%_))
                                                   (let ((_%$%e255380255678%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl255336255830%_))))
                                                     (let ((_%$%tl255382255683%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e255380255678%_)))
                                                           (_%$%hd255381255681%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e255380255678%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl255382255683%_))
                                                           (let ((_%$%e255383255686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl255382255683%_))))
                     (let ((_%$%tl255385255691%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e255383255686%_)))
                           (_%$%hd255384255689%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e255383255686%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl255385255691%_))
                           (_%__kont260536260537%_
                            _%$%hd255384255689%_
                            _%$%hd255381255681%_
                            _%$%hd255378255673%_
                            _%$%hd255369255649%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g255326255436%_)))))
                   (let () (declare (not safe)) (_%$%g255326255436%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g255326255436%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl255336255830%_))
                                                   (let ((_%$%e255426255457%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl255336255830%_))))
                                                     (let ((_%$%tl255428255462%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e255426255457%_)))
                                                           (_%$%hd255427255460%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e255426255457%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl255428255462%_))
                                                           (let ((_%$%e255429255465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl255428255462%_))))
                     (let ((_%$%tl255431255470%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e255429255465%_)))
                           (_%$%hd255430255468%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e255429255465%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl255431255470%_))
                           (_%__kont260540260541%_
                            _%$%hd255430255468%_
                            _%$%hd255427255460%_
                            _%$%hd255335255828%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g255326255436%_)))))
                   (let () (declare (not safe)) (_%$%g255326255436%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g255326255436%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl255373255659%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl255336255830%_))
                                                   (let ((_%$%e255411255554%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl255336255830%_))))
                                                     (let ((_%$%tl255413255559%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e255411255554%_)))
                                                           (_%$%hd255412255557%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e255411255554%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl255413255559%_))
                                                           (let ((_%$%e255414255562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl255413255559%_))))
                     (let ((_%$%tl255416255567%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e255414255562%_)))
                           (_%$%hd255415255565%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e255414255562%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl255416255567%_))
                           (_%__match260739260740%_
                            _%$%e255331255817%_
                            _%$%hd255332255820%_
                            _%$%tl255333255822%_
                            _%$%e255334255825%_
                            _%$%hd255335255828%_
                            _%$%tl255336255830%_
                            _%$%e255337255833%_
                            _%$%hd255338255836%_
                            _%$%tl255339255838%_
                            _%$%e255362255630%_
                            _%$%hd255363255633%_
                            _%$%tl255364255635%_
                            _%$%e255365255638%_
                            _%$%hd255366255641%_
                            _%$%tl255367255643%_
                            _%$%e255368255646%_
                            _%$%hd255369255649%_
                            _%$%tl255370255651%_
                            _%$%e255371255654%_
                            _%$%hd255372255657%_
                            _%$%tl255373255659%_
                            _%$%e255411255554%_
                            _%$%hd255412255557%_
                            _%$%tl255413255559%_
                            _%$%e255414255562%_
                            _%$%hd255415255565%_
                            _%$%tl255416255567%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g255326255436%_)))))
                   (let () (declare (not safe)) (_%$%g255326255436%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g255326255436%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl255336255830%_))
                                                   (let ((_%$%e255426255457%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl255336255830%_))))
                                                     (let ((_%$%tl255428255462%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e255426255457%_)))
                                                           (_%$%hd255427255460%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e255426255457%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl255428255462%_))
                                                           (let ((_%$%e255429255465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl255428255462%_))))
                     (let ((_%$%tl255431255470%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e255429255465%_)))
                           (_%$%hd255430255468%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e255429255465%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl255431255470%_))
                           (_%__kont260540260541%_
                            _%$%hd255430255468%_
                            _%$%hd255427255460%_
                            _%$%hd255335255828%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g255326255436%_)))))
                   (let () (declare (not safe)) (_%$%g255326255436%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g255326255436%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl255373255659%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl255336255830%_))
                                           (let ((_%$%e255411255554%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl255336255830%_))))
                                             (let ((_%$%tl255413255559%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e255411255554%_)))
                                                   (_%$%hd255412255557%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e255411255554%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl255413255559%_))
                                                   (let ((_%$%e255414255562%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl255413255559%_))))
                                                     (let ((_%$%tl255416255567%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e255414255562%_)))
                                                           (_%$%hd255415255565%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e255414255562%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl255416255567%_))
                                                           (_%__match260739260740%_
                                                            _%$%e255331255817%_
                                                            _%$%hd255332255820%_
                                                            _%$%tl255333255822%_
                                                            _%$%e255334255825%_
                                                            _%$%hd255335255828%_
                                                            _%$%tl255336255830%_
                                                            _%$%e255337255833%_
                                                            _%$%hd255338255836%_
                                                            _%$%tl255339255838%_
                                                            _%$%e255362255630%_
                                                            _%$%hd255363255633%_
                                                            _%$%tl255364255635%_
                                                            _%$%e255365255638%_
                                                            _%$%hd255366255641%_
                                                            _%$%tl255367255643%_
                                                            _%$%e255368255646%_
                                                            _%$%hd255369255649%_
                                                            _%$%tl255370255651%_
                                                            _%$%e255371255654%_
                                                            _%$%hd255372255657%_
                                                            _%$%tl255373255659%_
                                                            _%$%e255411255554%_
                                                            _%$%hd255412255557%_
                                                            _%$%tl255413255559%_
                                                            _%$%e255414255562%_
                                                            _%$%hd255415255565%_
                                                            _%$%tl255416255567%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g255326255436%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g255326255436%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g255326255436%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl255336255830%_))
                                           (let ((_%$%e255426255457%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl255336255830%_))))
                                             (let ((_%$%tl255428255462%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e255426255457%_)))
                                                   (_%$%hd255427255460%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e255426255457%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl255428255462%_))
                                                   (let ((_%$%e255429255465%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl255428255462%_))))
                                                     (let ((_%$%tl255431255470%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e255429255465%_)))
                                                           (_%$%hd255430255468%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e255429255465%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl255431255470%_))
                                                           (_%__kont260540260541%_
                                                            _%$%hd255430255468%_
                                                            _%$%hd255427255460%_
                                                            _%$%hd255335255828%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g255326255436%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g255326255436%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g255326255436%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl255373255659%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl255336255830%_))
                                       (let ((_%$%e255411255554%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl255336255830%_))))
                                         (let ((_%$%tl255413255559%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e255411255554%_)))
                                               (_%$%hd255412255557%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e255411255554%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl255413255559%_))
                                               (let ((_%$%e255414255562%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl255413255559%_))))
                                                 (let ((_%$%tl255416255567%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e255414255562%_)))
                                                       (_%$%hd255415255565%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e255414255562%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl255416255567%_))
                                                       (_%__match260739260740%_
                                                        _%$%e255331255817%_
                                                        _%$%hd255332255820%_
                                                        _%$%tl255333255822%_
                                                        _%$%e255334255825%_
                                                        _%$%hd255335255828%_
                                                        _%$%tl255336255830%_
                                                        _%$%e255337255833%_
                                                        _%$%hd255338255836%_
                                                        _%$%tl255339255838%_
                                                        _%$%e255362255630%_
                                                        _%$%hd255363255633%_
                                                        _%$%tl255364255635%_
                                                        _%$%e255365255638%_
                                                        _%$%hd255366255641%_
                                                        _%$%tl255367255643%_
                                                        _%$%e255368255646%_
                                                        _%$%hd255369255649%_
                                                        _%$%tl255370255651%_
                                                        _%$%e255371255654%_
                                                        _%$%hd255372255657%_
                                                        _%$%tl255373255659%_
                                                        _%$%e255411255554%_
                                                        _%$%hd255412255557%_
                                                        _%$%tl255413255559%_
                                                        _%$%e255414255562%_
                                                        _%$%hd255415255565%_
                                                        _%$%tl255416255567%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g255326255436%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g255326255436%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g255326255436%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl255336255830%_))
                                       (let ((_%$%e255426255457%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl255336255830%_))))
                                         (let ((_%$%tl255428255462%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e255426255457%_)))
                                               (_%$%hd255427255460%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e255426255457%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl255428255462%_))
                                               (let ((_%$%e255429255465%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl255428255462%_))))
                                                 (let ((_%$%tl255431255470%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e255429255465%_)))
                                                       (_%$%hd255430255468%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e255429255465%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl255431255470%_))
                                                       (_%__kont260540260541%_
                                                        _%$%hd255430255468%_
                                                        _%$%hd255427255460%_
                                                        _%$%hd255335255828%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g255326255436%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g255326255436%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g255326255436%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl255373255659%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl255336255830%_))
                                   (let ((_%$%e255411255554%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl255336255830%_))))
                                     (let ((_%$%tl255413255559%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e255411255554%_)))
                                           (_%$%hd255412255557%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e255411255554%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl255413255559%_))
                                           (let ((_%$%e255414255562%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl255413255559%_))))
                                             (let ((_%$%tl255416255567%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e255414255562%_)))
                                                   (_%$%hd255415255565%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e255414255562%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl255416255567%_))
                                                   (_%__match260739260740%_
                                                    _%$%e255331255817%_
                                                    _%$%hd255332255820%_
                                                    _%$%tl255333255822%_
                                                    _%$%e255334255825%_
                                                    _%$%hd255335255828%_
                                                    _%$%tl255336255830%_
                                                    _%$%e255337255833%_
                                                    _%$%hd255338255836%_
                                                    _%$%tl255339255838%_
                                                    _%$%e255362255630%_
                                                    _%$%hd255363255633%_
                                                    _%$%tl255364255635%_
                                                    _%$%e255365255638%_
                                                    _%$%hd255366255641%_
                                                    _%$%tl255367255643%_
                                                    _%$%e255368255646%_
                                                    _%$%hd255369255649%_
                                                    _%$%tl255370255651%_
                                                    _%$%e255371255654%_
                                                    _%$%hd255372255657%_
                                                    _%$%tl255373255659%_
                                                    _%$%e255411255554%_
                                                    _%$%hd255412255557%_
                                                    _%$%tl255413255559%_
                                                    _%$%e255414255562%_
                                                    _%$%hd255415255565%_
                                                    _%$%tl255416255567%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g255326255436%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g255326255436%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g255326255436%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl255336255830%_))
                                   (let ((_%$%e255426255457%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl255336255830%_))))
                                     (let ((_%$%tl255428255462%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e255426255457%_)))
                                           (_%$%hd255427255460%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e255426255457%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl255428255462%_))
                                           (let ((_%$%e255429255465%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl255428255462%_))))
                                             (let ((_%$%tl255431255470%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e255429255465%_)))
                                                   (_%$%hd255430255468%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e255429255465%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl255431255470%_))
                                                   (_%__kont260540260541%_
                                                    _%$%hd255430255468%_
                                                    _%$%hd255427255460%_
                                                    _%$%hd255335255828%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g255326255436%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g255326255436%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g255326255436%_)))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl255373255659%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl255336255830%_))
                           (let ((_%$%e255411255554%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl255336255830%_))))
                             (let ((_%$%tl255413255559%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e255411255554%_)))
                                   (_%$%hd255412255557%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e255411255554%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl255413255559%_))
                                   (let ((_%$%e255414255562%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl255413255559%_))))
                                     (let ((_%$%tl255416255567%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e255414255562%_)))
                                           (_%$%hd255415255565%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e255414255562%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl255416255567%_))
                                           (_%__match260739260740%_
                                            _%$%e255331255817%_
                                            _%$%hd255332255820%_
                                            _%$%tl255333255822%_
                                            _%$%e255334255825%_
                                            _%$%hd255335255828%_
                                            _%$%tl255336255830%_
                                            _%$%e255337255833%_
                                            _%$%hd255338255836%_
                                            _%$%tl255339255838%_
                                            _%$%e255362255630%_
                                            _%$%hd255363255633%_
                                            _%$%tl255364255635%_
                                            _%$%e255365255638%_
                                            _%$%hd255366255641%_
                                            _%$%tl255367255643%_
                                            _%$%e255368255646%_
                                            _%$%hd255369255649%_
                                            _%$%tl255370255651%_
                                            _%$%e255371255654%_
                                            _%$%hd255372255657%_
                                            _%$%tl255373255659%_
                                            _%$%e255411255554%_
                                            _%$%hd255412255557%_
                                            _%$%tl255413255559%_
                                            _%$%e255414255562%_
                                            _%$%hd255415255565%_
                                            _%$%tl255416255567%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g255326255436%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g255326255436%_)))))
                           (let () (declare (not safe)) (_%$%g255326255436%_)))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl255336255830%_))
                           (let ((_%$%e255426255457%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl255336255830%_))))
                             (let ((_%$%tl255428255462%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e255426255457%_)))
                                   (_%$%hd255427255460%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e255426255457%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl255428255462%_))
                                   (let ((_%$%e255429255465%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl255428255462%_))))
                                     (let ((_%$%tl255431255470%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e255429255465%_)))
                                           (_%$%hd255430255468%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e255429255465%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl255431255470%_))
                                           (_%__kont260540260541%_
                                            _%$%hd255430255468%_
                                            _%$%hd255427255460%_
                                            _%$%hd255335255828%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g255326255436%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g255326255436%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g255326255436%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl255336255830%_))
                                                       (let ((_%$%e255426255457%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl255336255830%_))))
                 (let ((_%$%tl255428255462%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e255426255457%_)))
                       (_%$%hd255427255460%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e255426255457%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl255428255462%_))
                       (let ((_%$%e255429255465%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl255428255462%_))))
                         (let ((_%$%tl255431255470%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e255429255465%_)))
                               (_%$%hd255430255468%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e255429255465%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl255431255470%_))
                               (_%__kont260540260541%_
                                _%$%hd255430255468%_
                                _%$%hd255427255460%_
                                _%$%hd255335255828%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g255326255436%_)))))
                       (let () (declare (not safe)) (_%$%g255326255436%_)))))
               (let () (declare (not safe)) (_%$%g255326255436%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl255336255830%_))
                                                   (let ((_%$%e255426255457%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl255336255830%_))))
                                                     (let ((_%$%tl255428255462%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e255426255457%_)))
                                                           (_%$%hd255427255460%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e255426255457%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl255428255462%_))
                                                           (let ((_%$%e255429255465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl255428255462%_))))
                     (let ((_%$%tl255431255470%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e255429255465%_)))
                           (_%$%hd255430255468%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e255429255465%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl255431255470%_))
                           (_%__kont260540260541%_
                            _%$%hd255430255468%_
                            _%$%hd255427255460%_
                            _%$%hd255335255828%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g255326255436%_)))))
                   (let () (declare (not safe)) (_%$%g255326255436%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g255326255436%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl255336255830%_))
                                           (let ((_%$%e255426255457%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl255336255830%_))))
                                             (let ((_%$%tl255428255462%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e255426255457%_)))
                                                   (_%$%hd255427255460%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e255426255457%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl255428255462%_))
                                                   (let ((_%$%e255429255465%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl255428255462%_))))
                                                     (let ((_%$%tl255431255470%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e255429255465%_)))
                                                           (_%$%hd255430255468%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e255429255465%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl255431255470%_))
                                                           (_%__kont260540260541%_
                                                            _%$%hd255430255468%_
                                                            _%$%hd255427255460%_
                                                            _%$%hd255335255828%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g255326255436%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g255326255436%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g255326255436%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl255336255830%_))
                                       (let ((_%$%e255426255457%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl255336255830%_))))
                                         (let ((_%$%tl255428255462%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e255426255457%_)))
                                               (_%$%hd255427255460%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e255426255457%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl255428255462%_))
                                               (let ((_%$%e255429255465%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl255428255462%_))))
                                                 (let ((_%$%tl255431255470%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e255429255465%_)))
                                                       (_%$%hd255430255468%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e255429255465%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl255431255470%_))
                                                       (_%__kont260540260541%_
                                                        _%$%hd255430255468%_
                                                        _%$%hd255427255460%_
                                                        _%$%hd255335255828%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g255326255436%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g255326255436%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g255326255436%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl255336255830%_))
                                   (let ((_%$%e255426255457%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl255336255830%_))))
                                     (let ((_%$%tl255428255462%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e255426255457%_)))
                                           (_%$%hd255427255460%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e255426255457%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl255428255462%_))
                                           (let ((_%$%e255429255465%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl255428255462%_))))
                                             (let ((_%$%tl255431255470%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e255429255465%_)))
                                                   (_%$%hd255430255468%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e255429255465%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl255431255470%_))
                                                   (_%__kont260540260541%_
                                                    _%$%hd255430255468%_
                                                    _%$%hd255427255460%_
                                                    _%$%hd255335255828%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g255326255436%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g255326255436%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g255326255436%_))))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl255336255830%_))
                           (let ((_%$%e255426255457%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl255336255830%_))))
                             (let ((_%$%tl255428255462%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e255426255457%_)))
                                   (_%$%hd255427255460%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e255426255457%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl255428255462%_))
                                   (let ((_%$%e255429255465%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl255428255462%_))))
                                     (let ((_%$%tl255431255470%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e255429255465%_)))
                                           (_%$%hd255430255468%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e255429255465%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl255431255470%_))
                                           (_%__kont260540260541%_
                                            _%$%hd255430255468%_
                                            _%$%hd255427255460%_
                                            _%$%hd255335255828%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g255326255436%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g255326255436%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g255326255436%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%$%tl255336255830%_))
                   (let ((_%$%e255426255457%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl255336255830%_))))
                     (let ((_%$%tl255428255462%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e255426255457%_)))
                           (_%$%hd255427255460%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e255426255457%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl255428255462%_))
                           (let ((_%$%e255429255465%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl255428255462%_))))
                             (let ((_%$%tl255431255470%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e255429255465%_)))
                                   (_%$%hd255430255468%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e255429255465%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl255431255470%_))
                                   (_%__kont260540260541%_
                                    _%$%hd255430255468%_
                                    _%$%hd255427255460%_
                                    _%$%hd255335255828%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g255326255436%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g255326255436%_)))))
                   (let () (declare (not safe)) (_%$%g255326255436%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl255336255830%_))
                                                       (let ((_%$%e255426255457%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl255336255830%_))))
                 (let ((_%$%tl255428255462%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e255426255457%_)))
                       (_%$%hd255427255460%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e255426255457%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl255428255462%_))
                       (let ((_%$%e255429255465%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl255428255462%_))))
                         (let ((_%$%tl255431255470%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e255429255465%_)))
                               (_%$%hd255430255468%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e255429255465%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl255431255470%_))
                               (_%__kont260540260541%_
                                _%$%hd255430255468%_
                                _%$%hd255427255460%_
                                _%$%hd255335255828%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g255326255436%_)))))
                       (let () (declare (not safe)) (_%$%g255326255436%_)))))
               (let () (declare (not safe)) (_%$%g255326255436%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl255336255830%_))
                                               (let ((_%$%e255426255457%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl255336255830%_))))
                                                 (let ((_%$%tl255428255462%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e255426255457%_)))
                                                       (_%$%hd255427255460%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e255426255457%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl255428255462%_))
                                                       (let ((_%$%e255429255465%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl255428255462%_))))
                 (let ((_%$%tl255431255470%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e255429255465%_)))
                       (_%$%hd255430255468%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e255429255465%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl255431255470%_))
                       (_%__kont260540260541%_
                        _%$%hd255430255468%_
                        _%$%hd255427255460%_
                        _%$%hd255335255828%_)
                       (let () (declare (not safe)) (_%$%g255326255436%_)))))
               (let () (declare (not safe)) (_%$%g255326255436%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g255326255436%_))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl255336255830%_))
                                       (let ((_%$%e255426255457%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl255336255830%_))))
                                         (let ((_%$%tl255428255462%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e255426255457%_)))
                                               (_%$%hd255427255460%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e255426255457%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl255428255462%_))
                                               (let ((_%$%e255429255465%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl255428255462%_))))
                                                 (let ((_%$%tl255431255470%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e255429255465%_)))
                                                       (_%$%hd255430255468%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e255429255465%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl255431255470%_))
                                                       (_%__kont260540260541%_
                                                        _%$%hd255430255468%_
                                                        _%$%hd255427255460%_
                                                        _%$%hd255335255828%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g255326255436%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g255326255436%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g255326255436%_))))))
                           (let ()
                             (declare (not safe))
                             (_%$%g255326255436%_)))))
                   (let () (declare (not safe)) (_%$%g255326255436%_)))))))))
    (define gxc#check-contract-violation!
      (lambda (_%stx255188%_ _%expr255189%_)
        (let* ((_%__stx260768260769%_ _%expr255189%_)
               (_%$%g255192255222%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx260768260769%_)))))
          (let ((_%__kont260770260771%_
                 (lambda (_%$%g255194255290%_
                          _%$%g255195255291%_
                          _%$%g255196255292%_)
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"contract violation"
                      _%stx255188%_
                      _%$%g255196255292%_
                      _%$%g255195255291%_
                      _%$%g255194255290%_))))
                (_%__kont260772260773%_ (lambda () _%expr255189%_)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx260768260769%_))
                (let ((_%$%e255197255234%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx260768260769%_))))
                  (let ((_%$%tl255199255239%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e255197255234%_)))
                        (_%$%hd255198255237%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e255197255234%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd255198255237%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq?
                               '%#begin-annotation
                               _%$%hd255198255237%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl255199255239%_))
                                (let ((_%$%e255200255242%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl255199255239%_))))
                                  (let ((_%$%tl255202255247%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e255200255242%_)))
                                        (_%$%hd255201255245%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e255200255242%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd255201255245%_))
                                        (let ((_%$%e255203255250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd255201255245%_))))
                                          (let ((_%$%tl255205255255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e255203255250%_)))
                                                (_%$%hd255204255253%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e255203255250%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd255204255253%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '@contract-violation
                                                       _%$%hd255204255253%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl255205255255%_))
                                                        (let ((_%$%e255206255258%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl255205255255%_))))
                  (let ((_%$%tl255208255263%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e255206255258%_)))
                        (_%$%hd255207255261%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e255206255258%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl255208255263%_))
                        (let ((_%$%e255209255266%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl255208255263%_))))
                          (let ((_%$%tl255211255271%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e255209255266%_)))
                                (_%$%hd255210255269%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e255209255266%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl255211255271%_))
                                (let ((_%$%e255212255274%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl255211255271%_))))
                                  (let ((_%$%tl255214255279%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e255212255274%_)))
                                        (_%$%hd255213255277%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e255212255274%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl255214255279%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl255202255247%_))
                                            (let ((_%$%e255215255282%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl255202255247%_))))
                                              (let ((_%$%tl255217255287%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e255215255282%_)))
                                                    (_%$%hd255216255285%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e255215255282%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl255217255287%_))
                                                    (_%__kont260770260771%_
                                                     _%$%hd255213255277%_
                                                     _%$%hd255210255269%_
                                                     _%$%hd255207255261%_)
                                                    (_%__kont260772260773%_))))
                                            (_%__kont260772260773%_))
                                        (_%__kont260772260773%_))))
                                (_%__kont260772260773%_))))
                        (_%__kont260772260773%_))))
                (_%__kont260772260773%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont260772260773%_))
                                                (_%__kont260772260773%_))))
                                        (_%__kont260772260773%_))))
                                (_%__kont260772260773%_))
                            (_%__kont260772260773%_))
                        (_%__kont260772260773%_))))
                (_%__kont260772260773%_))))))))
