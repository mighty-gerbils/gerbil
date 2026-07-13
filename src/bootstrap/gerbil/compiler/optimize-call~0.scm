(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1783939357)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp262741 (list gxc#::basic-xform::t))
            (__tmp262740 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp262741
         '()
         __tmp262740
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args261758%_
        (apply make-instance gxc#::optimize-call::t _%$args261758%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp262742
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
        (__make-atomic-promise __tmp262742)))
    (define gxc#apply-optimize-call
      (lambda (_%stx261750%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self261753%_
                (let ((__obj262732
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj262732))
               (__tmp262743
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self261753%_ _%stx261750%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp262743
           gxc#current-compile-method
           _%self261753%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp262745 (list gxc#::void::t))
            (__tmp262744 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp262745
         '()
         __tmp262744
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args261747%_
        (apply make-instance gxc#::check-return-type::t _%$args261747%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp262746
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
        (__make-atomic-promise __tmp262746)))
    (define gxc#apply-check-return-type
      (lambda (_%stx261739%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self261742%_
                (let ((__obj262734
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj262734))
               (__tmp262747
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self261742%_ _%stx261739%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp262747
           gxc#current-compile-method
           _%self261742%_))))
    (define gxc#optimize-call%
      (lambda (_%self260881%_ _%stx260882%_)
        (let* ((_%__stx261899261900%_ _%stx260882%_)
               (_%$%g260886260968%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx261899261900%_)))))
          (let ((_%__kont261901261902%_
                 (lambda (_%$%g260888261529%_ _%$%g260889261530%_)
                   (let* ((_%rator-id261550%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g260889261530%_)))
                          (_%rator-type261552%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id261550%_)))
                          (_%$e261555%_
                           (let ()
                             (declare (not safe))
                             (__hash-get
                              gxc#special-procedure-optimizers
                              _%rator-id261550%_))))
                     (if _%$e261555%_
                         (_%$e261555%_ _%self260881%_ _%stx260882%_)
                         (if (or (not _%rator-type261552%_)
                                 (eq? (##structure-ref
                                       _%rator-type261552%_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      't))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self260881%_ _%stx260882%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%rator-type261552%_
                                    'gxc#!procedure::t))
                                 (let ()
                                   (let ((__tmp262748
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%rator-type261552%_
                                             '1
                                             '#f
                                             '#f))))
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"optimize-call "
                                      _%rator-id261550%_
                                      '" => "
                                      _%rator-type261552%_
                                      '" "
                                      __tmp262748))
                                   (let* ((_%optimized261572%_
                                           (let ((__method262735
                                                  (let ()
                                                    (declare (not safe))
                                                    (__method-ref
                                                     _%rator-type261552%_
                                                     'optimize-call))))
                                             (if __method262735
                                                 (let ((__tmp262749
                                                        (let ((__tmp262750
                                                               (lambda (_%$%g261564261567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g261565261569%_)
                         (cons _%$%g261564261567%_ _%$%g261565261569%_))))
                  (declare (not safe))
                  (foldr__0 __tmp262750 '() _%$%g260888261529%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__method262735
                                                    _%rator-type261552%_
                                                    _%self260881%_
                                                    _%stx260882%_
                                                    __tmp262749))
                                                 (begin
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Missing method"
                                                            _%rator-type261552%_
                                                            'optimize-call))
                                                   '#!void))))
                                          (_%__stx261847261848%_
                                           _%optimized261572%_)
                                          (_%$%g261575261604%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx261847261848%_)))))
                                     (let ((_%__kont261849261850%_
                                            (lambda (_%$%g261577261670%_
                                                     _%$%g261578261671%_)
                                              (let* ((_%optimized-rator-id261699%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#identifier-symbol
                                                         _%$%g261578261671%_)))
                                                     (_%rator-type261704%_
                                                      (let ((_%$e261701%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#optimizer-lookup-type
                        _%optimized-rator-id261699%_))))
                (if _%$e261701%_ _%$e261701%_ _%rator-type261552%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (class-instance?
                                                           gxc#!primitive::t
                                                           _%rator-type261704%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##memq _%optimized-rator-id261699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gxc#checked-primitives))
                (and (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%rator-type261704%_
                        'gxc#!procedure::t))
                     (eq? (let ()
                            (declare (not safe))
                            (gxc#!procedure-origin _%rator-type261704%_))
                          (##structure-ref
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))
                           '1
                           gx#expander-context::t
                           '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%optimized261572%_
                                                    (let ((__tmp262751
                                                           (cons '%#call-unchecked
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '%#ref))
                                     (cons _%$%g261578261671%_ '()))
                               (let ((__tmp262752
                                      (lambda (_%$%g261712261715%_
                                               _%$%g261713261717%_)
                                        (cons _%$%g261712261715%_
                                              _%$%g261713261717%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp262752
                                  '()
                                  _%$%g261577261670%_))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp262751 _%stx260882%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont261853261854%_
                                            (lambda () _%optimized261572%_)))
                                       (let ((_%__match261896261897%_
                                              (lambda (_%$%e261579261616%_
                                                       _%$%hd261580261619%_
                                                       _%$%tl261581261621%_
                                                       _%$%e261582261624%_
                                                       _%$%hd261583261627%_
                                                       _%$%tl261584261629%_
                                                       _%$%e261585261632%_
                                                       _%$%hd261586261635%_
                                                       _%$%tl261587261637%_
                                                       _%$%e261588261640%_
                                                       _%$%hd261589261643%_
                                                       _%$%tl261590261645%_
                                                       _%__splice261851261852%_
                                                       _%$%target261591261648%_
                                                       _%$%tl261593261650%_)
                                                (letrec ((_%$%loop261594261653%_
                                                          (lambda (_%$%hd261592261656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%arg261598261658%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd261592261656%_))
                        (let ((_%$%e261595261660%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd261592261656%_))))
                          (let ((_%$%lp-tl261597261665%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e261595261660%_)))
                                (_%$%lp-hd261596261663%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e261595261660%_))))
                            (_%$%loop261594261653%_
                             _%$%lp-tl261597261665%_
                             (cons _%$%lp-hd261596261663%_
                                   _%$%arg261598261658%_))))
                        (let ((_%$%arg261599261668%_
                               (reverse _%$%arg261598261658%_)))
                          (_%__kont261849261850%_
                           _%$%arg261599261668%_
                           _%$%hd261589261643%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop261594261653%_
                                                   _%$%target261591261648%_
                                                   '())))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx261847261848%_))
                                             (let ((_%$%e261579261616%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx261847261848%_))))
                                               (let ((_%$%tl261581261621%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e261579261616%_)))
                                                     (_%$%hd261580261619%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e261579261616%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd261580261619%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#call
                                                            _%$%hd261580261619%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl261581261621%_))
                     (let ((_%$%e261582261624%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl261581261621%_))))
                       (let ((_%$%tl261584261629%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e261582261624%_)))
                             (_%$%hd261583261627%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e261582261624%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%hd261583261627%_))
                             (let ((_%$%e261585261632%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%hd261583261627%_))))
                               (let ((_%$%tl261587261637%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e261585261632%_)))
                                     (_%$%hd261586261635%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e261585261632%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd261586261635%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd261586261635%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl261587261637%_))
                                             (let ((_%$%e261588261640%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl261587261637%_))))
                                               (let ((_%$%tl261590261645%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e261588261640%_)))
                                                     (_%$%hd261589261643%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e261588261640%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl261590261645%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl261584261629%_))
                                                         (let ((_%__splice261851261852%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl261584261629%_
                           '0))))
                   (let ((_%$%tl261593261650%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice261851261852%_ '1)))
                         (_%$%target261591261648%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice261851261852%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl261593261650%_))
                         (_%__match261896261897%_
                          _%$%e261579261616%_
                          _%$%hd261580261619%_
                          _%$%tl261581261621%_
                          _%$%e261582261624%_
                          _%$%hd261583261627%_
                          _%$%tl261584261629%_
                          _%$%e261585261632%_
                          _%$%hd261586261635%_
                          _%$%tl261587261637%_
                          _%$%e261588261640%_
                          _%$%hd261589261643%_
                          _%$%tl261590261645%_
                          _%__splice261851261852%_
                          _%$%target261591261648%_
                          _%$%tl261593261650%_)
                         (_%__kont261853261854%_))))
                 (_%__kont261853261854%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont261853261854%_))))
                                             (_%__kont261853261854%_))
                                         (_%__kont261853261854%_))
                                     (_%__kont261853261854%_))))
                             (_%__kont261853261854%_))))
                     (_%__kont261853261854%_))
                 (_%__kont261853261854%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont261853261854%_))))
                                             (_%__kont261853261854%_))))))
                                 (if (and (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%rator-type261552%_
                                             'gxc#!class::t))
                                          (eq? (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%rator-type261552%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               'procedure))
                                     (let ((__tmp262753
                                            (cons '%#call-unchecked
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref))
                      (cons _%$%g260889261530%_ '()))
                (map (lambda (_%$%g261723261725%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self260881%_
                          _%$%g261723261725%_)))
                     (let ((__tmp262754
                            (lambda (_%$%g261727261730%_ _%$%g261728261732%_)
                              (cons _%$%g261727261730%_ _%$%g261728261732%_))))
                       (declare (not safe))
                       (foldr__0 __tmp262754 '() _%$%g260888261529%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp262753
                                        _%stx260882%_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"illegal application; not a procedure"
                                        _%stx260882%_
                                        _%rator-type261552%_)))))))))
                (_%__kont261905261906%_
                 (lambda (_%$%g260911261137%_
                          _%$%g260912261138%_
                          _%$%g260913261139%_)
                   (let _%loop261257%_ ((_%rest-arg261259%_
                                         (let ((__tmp262761
                                                (lambda (_%$%g261455261458%_
                                                         _%$%g261456261460%_)
                                                  (cons _%$%g261455261458%_
                                                        _%$%g261456261460%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp262761
                                            '()
                                            _%$%g260913261139%_)))
                                        (_%rest-rand261260%_
                                         (let ((__tmp262762
                                                (lambda (_%$%g261462261465%_
                                                         _%$%g261463261467%_)
                                                  (cons _%$%g261462261465%_
                                                        _%$%g261463261467%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp262762
                                            '()
                                            _%$%g260911261137%_)))
                                        (_%bind261261%_ '())
                                        (_%subst261262%_ '()))
                     (let* ((_%$%rest-arg261263261271%_ _%rest-arg261259%_)
                            (_%$%else261265261284%_
                             (lambda ()
                               (let* ((_%body261279%_
                                       (if (null? _%subst261262%_)
                                           _%$%g260912261138%_
                                           (let ((__tmp262755
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-inline-subst__%
                                                     '#f
                                                     _%subst261262%_
                                                     _%$%g260912261138%_))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp262755
                                              _%stx260882%_))))
                                      (_%expr261281%_
                                       (let ((__tmp262756
                                              (cons '%#let-values
                                                    (cons _%bind261261%_
                                                          (cons _%body261279%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp262756
                                          _%stx260882%_))))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-refine-type-info _%expr261281%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self260881%_
                                    _%expr261281%_)))))
                            (_%$%K261267261444%_
                             (lambda (_%rest-arg261287%_ _%arg-id261288%_)
                               (let* ((_%$%rest-rand261289261297%_
                                       _%rest-rand261260%_)
                                      (_%$%else261291261319%_
                                       (lambda ()
                                         (let ((__tmp262759
                                                (let ((__tmp262760
                                                       (lambda (_%$%g261304261307%_
                                                                _%$%g261305261309%_)
                                                         (cons _%$%g261304261307%_
                                                               _%$%g261305261309%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp262760
                                                   '()
                                                   _%$%g260913261139%_)))
                                               (__tmp262757
                                                (let ((__tmp262758
                                                       (lambda (_%$%g261311261314%_
                                                                _%$%g261312261316%_)
                                                         (cons _%$%g261311261314%_
                                                               _%$%g261312261316%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp262758
                                                   '()
                                                   _%$%g260911261137%_))))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"inline lambda arity mismatch"
                                            _%stx260882%_
                                            __tmp262759
                                            __tmp262757))))
                                      (_%$%K261293261432%_
                                       (lambda (_%rest-rand261322%_
                                                _%rand261323%_)
                                         (let* ((_%__stx261801261802%_
                                                 _%rand261323%_)
                                                (_%$%g261327261347%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx261801261802%_)))))
                                           (let ((_%__kont261803261804%_
                                                  (lambda (_%$%g261329261418%_)
                                                    (_%loop261257%_
                                                     _%rest-arg261287%_
                                                     _%rest-rand261322%_
                                                     _%bind261261%_
                                                     (cons (cons _%arg-id261288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand261323%_)
                   _%subst261262%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont261805261806%_
                                                  (lambda (_%$%g261336261375%_)
                                                    (_%loop261257%_
                                                     _%rest-arg261287%_
                                                     _%rest-rand261322%_
                                                     _%bind261261%_
                                                     (cons (cons _%arg-id261288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand261323%_)
                   _%subst261262%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont261807261808%_
                                                  (lambda ()
                                                    (_%loop261257%_
                                                     _%rest-arg261287%_
                                                     _%rest-rand261322%_
                                                     (cons (cons (cons _%arg-id261288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%rand261323%_ '()))
                   _%bind261261%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%subst261262%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx261801261802%_))
                                                 (let ((_%$%e261330261402%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx261801261802%_))))
                                                   (let ((_%$%tl261332261407%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e261330261402%_)))
                                                         (_%$%hd261331261405%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e261330261402%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%$%hd261331261405%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#quote _%$%hd261331261405%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl261332261407%_))
                         (let ((_%$%e261333261410%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl261332261407%_))))
                           (let ((_%$%tl261335261415%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e261333261410%_)))
                                 (_%$%hd261334261413%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e261333261410%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl261335261415%_))
                                 (_%__kont261803261804%_ _%$%hd261334261413%_)
                                 (_%__kont261807261808%_))))
                         (_%__kont261807261808%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#ref _%$%hd261331261405%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl261332261407%_))
                             (let ((_%$%e261340261367%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl261332261407%_))))
                               (let ((_%$%tl261342261372%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e261340261367%_)))
                                     (_%$%hd261341261370%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e261340261367%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl261342261372%_))
                                     (_%__kont261805261806%_
                                      _%$%hd261341261370%_)
                                     (_%__kont261807261808%_))))
                             (_%__kont261807261808%_))
                         (_%__kont261807261808%_)))
                 (_%__kont261807261808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont261807261808%_)))))))
                                 (if (pair? _%$%rest-rand261289261297%_)
                                     (let ((_%$%hd261294261435%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%rest-rand261289261297%_)))
                                           (_%$%tl261295261437%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%rest-rand261289261297%_))))
                                       (let* ((_%rand261440%_
                                               _%$%hd261294261435%_)
                                              (_%rest-rand261442%_
                                               _%$%tl261295261437%_))
                                         (_%$%K261293261432%_
                                          _%rest-rand261442%_
                                          _%rand261440%_)))
                                     (_%$%else261291261319%_))))))
                       (if (pair? _%$%rest-arg261263261271%_)
                           (let ((_%$%hd261268261447%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest-arg261263261271%_)))
                                 (_%$%tl261269261449%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest-arg261263261271%_))))
                             (let* ((_%arg-id261452%_ _%$%hd261268261447%_)
                                    (_%rest-arg261454%_ _%$%tl261269261449%_))
                               (_%$%K261267261444%_
                                _%rest-arg261454%_
                                _%arg-id261452%_)))
                           (_%$%else261265261284%_))))))
                (_%__kont261911261912%_
                 (lambda (_%$%g260947261011%_ _%$%g260948261012%_)
                   (let ((_%rator-type261029%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%$%g260948261012%_))))
                     (if (and _%rator-type261029%_
                              (eq? (##structure-ref
                                    _%rator-type261029%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type261029%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type261029%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type261029%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp262763
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self260881%_
                                               _%$%g260948261012%_))
                                            (map (lambda (_%$%g261031261033%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self260881%_
                                                      _%$%g261031261033%_)))
                                                 (let ((__tmp262764
                                                        (lambda (_%$%g261035261038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g261036261040%_)
                  (cons _%$%g261035261038%_ _%$%g261036261040%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp262764
                                                    '()
                                                    _%$%g260947261011%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp262763 _%stx260882%_))
                         (if (or (not _%rator-type261029%_)
                                 (let ((__tmp262765
                                        (##structure-ref
                                         _%rator-type261029%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp262765 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self260881%_ _%stx260882%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx260882%_
                                _%rator-type261029%_))))))))
            (let* ((_%__match262008262009%_
                    (lambda (_%$%e260949260973%_
                             _%$%hd260950260976%_
                             _%$%tl260951260978%_
                             _%$%e260952260981%_
                             _%$%hd260953260984%_
                             _%$%tl260954260986%_
                             _%__splice261913261914%_
                             _%$%target260955260989%_
                             _%$%tl260957260991%_)
                      (letrec ((_%$%loop260958260994%_
                                (lambda (_%$%hd260956260997%_
                                         _%$%rand260962260999%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd260956260997%_))
                                      (let ((_%$%e260959261001%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd260956260997%_))))
                                        (let ((_%$%lp-tl260961261006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e260959261001%_)))
                                              (_%$%lp-hd260960261004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e260959261001%_))))
                                          (_%$%loop260958260994%_
                                           _%$%lp-tl260961261006%_
                                           (cons _%$%lp-hd260960261004%_
                                                 _%$%rand260962260999%_))))
                                      (let ((_%$%rand260963261009%_
                                             (reverse _%$%rand260962260999%_)))
                                        (_%__kont261911261912%_
                                         _%$%rand260963261009%_
                                         _%$%hd260953260984%_))))))
                        (_%$%loop260958260994%_
                         _%$%target260955260989%_
                         '()))))
                   (_%__match262000262001%_
                    (lambda (_%$%e260949260973%_
                             _%$%hd260950260976%_
                             _%$%tl260951260978%_
                             _%$%e260952260981%_
                             _%$%hd260953260984%_
                             _%$%tl260954260986%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl260954260986%_))
                          (let ((_%__splice261913261914%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl260954260986%_
                                    '0))))
                            (let ((_%$%tl260957260991%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice261913261914%_
                                      '1)))
                                  (_%$%target260955260989%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice261913261914%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl260957260991%_))
                                  (_%__match262008262009%_
                                   _%$%e260949260973%_
                                   _%$%hd260950260976%_
                                   _%$%tl260951260978%_
                                   _%$%e260952260981%_
                                   _%$%hd260953260984%_
                                   _%$%tl260954260986%_
                                   _%__splice261913261914%_
                                   _%$%target260955260989%_
                                   _%$%tl260957260991%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g260886260968%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g260886260968%_)))))
                   (_%__match261988261989%_
                    (lambda (_%$%e260914261053%_
                             _%$%hd260915261056%_
                             _%$%tl260916261058%_
                             _%$%e260917261061%_
                             _%$%hd260918261064%_
                             _%$%tl260919261066%_
                             _%$%e260920261069%_
                             _%$%hd260921261072%_
                             _%$%tl260922261074%_
                             _%$%e260923261077%_
                             _%$%hd260924261080%_
                             _%$%tl260925261082%_
                             _%__splice261907261908%_
                             _%$%target260926261085%_
                             _%$%tl260928261087%_)
                      (letrec ((_%$%loop260929261090%_
                                (lambda (_%$%hd260927261093%_
                                         _%$%arg260933261095%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd260927261093%_))
                                      (let ((_%$%e260930261097%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd260927261093%_))))
                                        (let ((_%$%lp-tl260932261102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e260930261097%_)))
                                              (_%$%lp-hd260931261100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e260930261097%_))))
                                          (_%$%loop260929261090%_
                                           _%$%lp-tl260932261102%_
                                           (cons _%$%lp-hd260931261100%_
                                                 _%$%arg260933261095%_))))
                                      (let ((_%$%arg260934261105%_
                                             (reverse _%$%arg260933261095%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl260925261082%_))
                                            (let ((_%$%e260935261107%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl260925261082%_))))
                                              (let ((_%$%tl260937261112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e260935261107%_)))
                                                    (_%$%hd260936261110%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e260935261107%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl260937261112%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl260919261066%_))
                                                        (let ((_%__splice261909261910%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl260919261066%_
                          '0))))
                  (let ((_%$%tl260940261117%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice261909261910%_ '1)))
                        (_%$%target260938261115%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice261909261910%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl260940261117%_))
                        (letrec ((_%$%loop260941261120%_
                                  (lambda (_%$%hd260939261123%_
                                           _%$%rand260945261125%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd260939261123%_))
                                        (let ((_%$%e260942261127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd260939261123%_))))
                                          (let ((_%$%lp-tl260944261132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e260942261127%_)))
                                                (_%$%lp-hd260943261130%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e260942261127%_))))
                                            (_%$%loop260941261120%_
                                             _%$%lp-tl260944261132%_
                                             (cons _%$%lp-hd260943261130%_
                                                   _%$%rand260945261125%_))))
                                        (let ((_%$%rand260946261135%_
                                               (reverse _%$%rand260945261125%_)))
                                          (let ((_%$%g260911261137%_
                                                 _%$%rand260946261135%_)
                                                (_%$%g260912261138%_
                                                 _%$%hd260936261110%_)
                                                (_%$%g260913261139%_
                                                 _%$%arg260934261105%_))
                                            (if (and (= (length (let ((__tmp262766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%$%g261165261168%_
                                        _%$%g261166261170%_)
                                 (cons _%$%g261165261168%_
                                       _%$%g261166261170%_))))
                          (declare (not safe))
                          (foldr__0 __tmp262766 '() _%$%g260913261139%_)))
                (length (let ((__tmp262767
                               (lambda (_%$%g261172261175%_
                                        _%$%g261173261177%_)
                                 (cons _%$%g261172261175%_
                                       _%$%g261173261177%_))))
                          (declare (not safe))
                          (foldr__0 __tmp262767 '() _%$%g260911261137%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp262770
                                                            (lambda (_%id261180%_)
                                                              (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gxc#mutable-binding? _%id261180%_)))))
                   (__tmp262768
                    (let ((__tmp262769
                           (lambda (_%$%g261181261184%_ _%$%g261182261186%_)
                             (cons _%$%g261181261184%_ _%$%g261182261186%_))))
                      (declare (not safe))
                      (foldr__0 __tmp262769 '() _%$%g260913261139%_))))
               (declare (not safe))
               (andmap__0 __tmp262770 __tmp262768))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp262773
                                                            (lambda (_%rand261189%_)
                                                              (let* ((_%__stx261775261776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rand261189%_)
                             (_%$%g261192261205%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx261775261776%_)))))
                        (let ((_%__kont261777261778%_
                               (lambda (_%$%g261194261233%_)
                                 (not (let ()
                                        (declare (not safe))
                                        (gxc#mutable-binding?
                                         _%$%g261194261233%_)))))
                              (_%__kont261779261780%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx261775261776%_))
                              (let ((_%$%e261195261217%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx261775261776%_))))
                                (let ((_%$%tl261197261222%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e261195261217%_)))
                                      (_%$%hd261196261220%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e261195261217%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd261196261220%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd261196261220%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl261197261222%_))
                                              (let ((_%$%e261198261225%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl261197261222%_))))
                                                (let ((_%$%tl261200261230%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e261198261225%_)))
                                                      (_%$%hd261199261228%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e261198261225%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl261200261230%_))
                                                      (_%__kont261777261778%_
                                                       _%$%hd261199261228%_)
                                                      (_%__kont261779261780%_))))
                                              (_%__kont261779261780%_))
                                          (_%__kont261779261780%_))
                                      (_%__kont261779261780%_))))
                              (_%__kont261779261780%_))))))
                   (__tmp262771
                    (let ((__tmp262772
                           (lambda (_%$%g261249261252%_ _%$%g261250261254%_)
                             (cons _%$%g261249261252%_ _%$%g261250261254%_))))
                      (declare (not safe))
                      (foldr__0 __tmp262772 '() _%$%g260911261137%_))))
               (declare (not safe))
               (andmap__0 __tmp262773 __tmp262771)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont261905261906%_
                                                 _%$%g260911261137%_
                                                 _%$%g260912261138%_
                                                 _%$%g260913261139%_)
                                                (_%__match262008262009%_
                                                 _%$%e260914261053%_
                                                 _%$%hd260915261056%_
                                                 _%$%tl260916261058%_
                                                 _%$%e260917261061%_
                                                 _%$%hd260918261064%_
                                                 _%$%tl260919261066%_
                                                 _%__splice261909261910%_
                                                 _%$%target260938261115%_
                                                 _%$%tl260940261117%_))))))))
                          (_%$%loop260941261120%_
                           _%$%target260938261115%_
                           '()))
                        (let () (declare (not safe)) (_%$%g260886260968%_)))))
                (let () (declare (not safe)) (_%$%g260886260968%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match262000262001%_
                                                     _%$%e260914261053%_
                                                     _%$%hd260915261056%_
                                                     _%$%tl260916261058%_
                                                     _%$%e260917261061%_
                                                     _%$%hd260918261064%_
                                                     _%$%tl260919261066%_))))
                                            (_%__match262000262001%_
                                             _%$%e260914261053%_
                                             _%$%hd260915261056%_
                                             _%$%tl260916261058%_
                                             _%$%e260917261061%_
                                             _%$%hd260918261064%_
                                             _%$%tl260919261066%_)))))))
                        (_%$%loop260929261090%_
                         _%$%target260926261085%_
                         '()))))
                   (_%__match261952261953%_
                    (lambda (_%$%e260890261475%_
                             _%$%hd260891261478%_
                             _%$%tl260892261480%_
                             _%$%e260893261483%_
                             _%$%hd260894261486%_
                             _%$%tl260895261488%_
                             _%$%e260896261491%_
                             _%$%hd260897261494%_
                             _%$%tl260898261496%_
                             _%$%e260899261499%_
                             _%$%hd260900261502%_
                             _%$%tl260901261504%_
                             _%__splice261903261904%_
                             _%$%target260902261507%_
                             _%$%tl260904261509%_)
                      (letrec ((_%$%loop260905261512%_
                                (lambda (_%$%hd260903261515%_
                                         _%$%rand260909261517%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd260903261515%_))
                                      (let ((_%$%e260906261519%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd260903261515%_))))
                                        (let ((_%$%lp-tl260908261524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e260906261519%_)))
                                              (_%$%lp-hd260907261522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e260906261519%_))))
                                          (_%$%loop260905261512%_
                                           _%$%lp-tl260908261524%_
                                           (cons _%$%lp-hd260907261522%_
                                                 _%$%rand260909261517%_))))
                                      (let ((_%$%rand260910261527%_
                                             (reverse _%$%rand260909261517%_)))
                                        (_%__kont261901261902%_
                                         _%$%rand260910261527%_
                                         _%$%hd260900261502%_))))))
                        (_%$%loop260905261512%_
                         _%$%target260902261507%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx261899261900%_))
                  (let ((_%$%e260890261475%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx261899261900%_))))
                    (let ((_%$%tl260892261480%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e260890261475%_)))
                          (_%$%hd260891261478%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e260890261475%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl260892261480%_))
                          (let ((_%$%e260893261483%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl260892261480%_))))
                            (let ((_%$%tl260895261488%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e260893261483%_)))
                                  (_%$%hd260894261486%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e260893261483%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd260894261486%_))
                                  (let ((_%$%e260896261491%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd260894261486%_))))
                                    (let ((_%$%tl260898261496%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e260896261491%_)))
                                          (_%$%hd260897261494%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e260896261491%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd260897261494%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd260897261494%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl260898261496%_))
                                                  (let ((_%$%e260899261499%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl260898261496%_))))
                                                    (let ((_%$%tl260901261504%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e260899261499%_)))
                                                          (_%$%hd260900261502%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e260899261499%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl260901261504%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl260895261488%_))
                      (let ((_%__splice261903261904%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl260895261488%_
                                '0))))
                        (let ((_%$%tl260904261509%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice261903261904%_ '1)))
                              (_%$%target260902261507%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice261903261904%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl260904261509%_))
                              (_%__match261952261953%_
                               _%$%e260890261475%_
                               _%$%hd260891261478%_
                               _%$%tl260892261480%_
                               _%$%e260893261483%_
                               _%$%hd260894261486%_
                               _%$%tl260895261488%_
                               _%$%e260896261491%_
                               _%$%hd260897261494%_
                               _%$%tl260898261496%_
                               _%$%e260899261499%_
                               _%$%hd260900261502%_
                               _%$%tl260901261504%_
                               _%__splice261903261904%_
                               _%$%target260902261507%_
                               _%$%tl260904261509%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g260886260968%_)))))
                      (let () (declare (not safe)) (_%$%g260886260968%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl260895261488%_))
                      (let ((_%__splice261913261914%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl260895261488%_
                                '0))))
                        (let ((_%$%tl260957260991%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice261913261914%_ '1)))
                              (_%$%target260955260989%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice261913261914%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl260957260991%_))
                              (_%__match262008262009%_
                               _%$%e260890261475%_
                               _%$%hd260891261478%_
                               _%$%tl260892261480%_
                               _%$%e260893261483%_
                               _%$%hd260894261486%_
                               _%$%tl260895261488%_
                               _%__splice261913261914%_
                               _%$%target260955260989%_
                               _%$%tl260957260991%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g260886260968%_)))))
                      (let () (declare (not safe)) (_%$%g260886260968%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl260895261488%_))
                                                      (let ((_%__splice261913261914%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl260895261488%_
                        '0))))
                (let ((_%$%tl260957260991%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice261913261914%_ '1)))
                      (_%$%target260955260989%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice261913261914%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl260957260991%_))
                      (_%__match262008262009%_
                       _%$%e260890261475%_
                       _%$%hd260891261478%_
                       _%$%tl260892261480%_
                       _%$%e260893261483%_
                       _%$%hd260894261486%_
                       _%$%tl260895261488%_
                       _%__splice261913261914%_
                       _%$%target260955260989%_
                       _%$%tl260957260991%_)
                      (let () (declare (not safe)) (_%$%g260886260968%_)))))
              (let () (declare (not safe)) (_%$%g260886260968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#lambda
                                                     _%$%hd260897261494%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl260898261496%_))
                                                      (let ((_%$%e260923261077%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl260898261496%_))))
                (let ((_%$%tl260925261082%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e260923261077%_)))
                      (_%$%hd260924261080%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e260923261077%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%hd260924261080%_))
                      (let ((_%__splice261907261908%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%hd260924261080%_
                                '0))))
                        (let ((_%$%tl260928261087%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice261907261908%_ '1)))
                              (_%$%target260926261085%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice261907261908%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl260928261087%_))
                              (_%__match261988261989%_
                               _%$%e260890261475%_
                               _%$%hd260891261478%_
                               _%$%tl260892261480%_
                               _%$%e260893261483%_
                               _%$%hd260894261486%_
                               _%$%tl260895261488%_
                               _%$%e260896261491%_
                               _%$%hd260897261494%_
                               _%$%tl260898261496%_
                               _%$%e260923261077%_
                               _%$%hd260924261080%_
                               _%$%tl260925261082%_
                               _%__splice261907261908%_
                               _%$%target260926261085%_
                               _%$%tl260928261087%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _%$%tl260895261488%_))
                                  (let ((_%__splice261913261914%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice->vector
                                            _%$%tl260895261488%_
                                            '0))))
                                    (let ((_%$%tl260957260991%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice261913261914%_
                                              '1)))
                                          (_%$%target260955260989%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice261913261914%_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl260957260991%_))
                                          (_%__match262008262009%_
                                           _%$%e260890261475%_
                                           _%$%hd260891261478%_
                                           _%$%tl260892261480%_
                                           _%$%e260893261483%_
                                           _%$%hd260894261486%_
                                           _%$%tl260895261488%_
                                           _%__splice261913261914%_
                                           _%$%target260955260989%_
                                           _%$%tl260957260991%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g260886260968%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g260886260968%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl260895261488%_))
                          (let ((_%__splice261913261914%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl260895261488%_
                                    '0))))
                            (let ((_%$%tl260957260991%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice261913261914%_
                                      '1)))
                                  (_%$%target260955260989%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice261913261914%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl260957260991%_))
                                  (_%__match262008262009%_
                                   _%$%e260890261475%_
                                   _%$%hd260891261478%_
                                   _%$%tl260892261480%_
                                   _%$%e260893261483%_
                                   _%$%hd260894261486%_
                                   _%$%tl260895261488%_
                                   _%__splice261913261914%_
                                   _%$%target260955260989%_
                                   _%$%tl260957260991%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g260886260968%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g260886260968%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl260895261488%_))
                  (let ((_%__splice261913261914%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl260895261488%_
                            '0))))
                    (let ((_%$%tl260957260991%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice261913261914%_ '1)))
                          (_%$%target260955260989%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice261913261914%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl260957260991%_))
                          (_%__match262008262009%_
                           _%$%e260890261475%_
                           _%$%hd260891261478%_
                           _%$%tl260892261480%_
                           _%$%e260893261483%_
                           _%$%hd260894261486%_
                           _%$%tl260895261488%_
                           _%__splice261913261914%_
                           _%$%target260955260989%_
                           _%$%tl260957260991%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g260886260968%_)))))
                  (let () (declare (not safe)) (_%$%g260886260968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl260895261488%_))
                                                      (let ((_%__splice261913261914%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl260895261488%_
                        '0))))
                (let ((_%$%tl260957260991%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice261913261914%_ '1)))
                      (_%$%target260955260989%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice261913261914%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl260957260991%_))
                      (_%__match262008262009%_
                       _%$%e260890261475%_
                       _%$%hd260891261478%_
                       _%$%tl260892261480%_
                       _%$%e260893261483%_
                       _%$%hd260894261486%_
                       _%$%tl260895261488%_
                       _%__splice261913261914%_
                       _%$%target260955260989%_
                       _%$%tl260957260991%_)
                      (let () (declare (not safe)) (_%$%g260886260968%_)))))
              (let () (declare (not safe)) (_%$%g260886260968%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl260895261488%_))
                                              (let ((_%__splice261913261914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl260895261488%_
                                                        '0))))
                                                (let ((_%$%tl260957260991%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice261913261914%_
                                                          '1)))
                                                      (_%$%target260955260989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice261913261914%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl260957260991%_))
                                                      (_%__match262008262009%_
                                                       _%$%e260890261475%_
                                                       _%$%hd260891261478%_
                                                       _%$%tl260892261480%_
                                                       _%$%e260893261483%_
                                                       _%$%hd260894261486%_
                                                       _%$%tl260895261488%_
                                                       _%__splice261913261914%_
                                                       _%$%target260955260989%_
                                                       _%$%tl260957260991%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g260886260968%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g260886260968%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl260895261488%_))
                                      (let ((_%__splice261913261914%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl260895261488%_
                                                '0))))
                                        (let ((_%$%tl260957260991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice261913261914%_
                                                  '1)))
                                              (_%$%target260955260989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice261913261914%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl260957260991%_))
                                              (_%__match262008262009%_
                                               _%$%e260890261475%_
                                               _%$%hd260891261478%_
                                               _%$%tl260892261480%_
                                               _%$%e260893261483%_
                                               _%$%hd260894261486%_
                                               _%$%tl260895261488%_
                                               _%__splice261913261914%_
                                               _%$%target260955260989%_
                                               _%$%tl260957260991%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g260886260968%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g260886260968%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g260886260968%_)))))
                  (let () (declare (not safe)) (_%$%g260886260968%_))))))))
    (define gxc#optimize-special-cast
      (lambda (_%self260686%_ _%stx260687%_)
        (let* ((_%__stx262011262012%_ _%stx260687%_)
               (_%$%g260691260731%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262011262012%_)))))
          (let ((_%__kont262013262014%_
                 (lambda (_%$%g260693260847%_ _%$%g260694260848%_)
                   (let* ((_%descriptor-id260868%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g260694260848%_)))
                          (_%descriptor-type260870%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type
                              _%descriptor-id260868%_)))
                          (_%object-type260872%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%$%g260693260847%_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _%descriptor-type260870%_
                            'gxc#!interface::t))
                         (if (and _%object-type260872%_
                                  (eq? (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%descriptor-type260870%_
                                          '1
                                          '#f
                                          '#f))
                                       (##structure-ref
                                        _%object-type260872%_
                                        '1
                                        gxc#!type::t
                                        '#f)))
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self260686%_
                                _%$%g260693260847%_))
                             (let ((__tmp262774
                                    (cons '%#call-unchecked
                                          (cons '(%#ref cast)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref))
                                                            (cons _%$%g260694260848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self260686%_ _%$%g260693260847%_))
                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp262774
                                _%stx260687%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"illegal cast; not an interface type"
                            _%stx260687%_
                            _%descriptor-type260870%_))))))
                (_%__kont262015262016%_
                 (lambda (_%$%g260713260775%_ _%$%g260714260776%_)
                   (let ((__tmp262775
                          (cons '%#call-unchecked
                                (cons '(%#ref cast)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self260686%_
                                               _%$%g260714260776%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self260686%_
                                                     _%$%g260713260775%_))
                                                  '()))))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp262775 _%stx260687%_))))
                (_%__kont262017262018%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"illegal cast; arity mismatch"
                      _%stx260687%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx262011262012%_))
                (let ((_%$%e260695260799%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx262011262012%_))))
                  (let ((_%$%tl260697260804%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e260695260799%_)))
                        (_%$%hd260696260802%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e260695260799%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl260697260804%_))
                        (let ((_%$%e260698260807%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl260697260804%_))))
                          (let ((_%$%tl260700260812%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e260698260807%_)))
                                (_%$%hd260699260810%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e260698260807%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl260700260812%_))
                                (let ((_%$%e260701260815%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl260700260812%_))))
                                  (let ((_%$%tl260703260820%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e260701260815%_)))
                                        (_%$%hd260702260818%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e260701260815%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd260702260818%_))
                                        (let ((_%$%e260704260823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd260702260818%_))))
                                          (let ((_%$%tl260706260828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e260704260823%_)))
                                                (_%$%hd260705260826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e260704260823%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd260705260826%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd260705260826%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl260706260828%_))
                                                        (let ((_%$%e260707260831%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl260706260828%_))))
                  (let ((_%$%tl260709260836%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e260707260831%_)))
                        (_%$%hd260708260834%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e260707260831%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl260709260836%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl260703260820%_))
                            (let ((_%$%e260710260839%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl260703260820%_))))
                              (let ((_%$%tl260712260844%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e260710260839%_)))
                                    (_%$%hd260711260842%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e260710260839%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl260712260844%_))
                                    (_%__kont262013262014%_
                                     _%$%hd260711260842%_
                                     _%$%hd260708260834%_)
                                    (_%__kont262017262018%_))))
                            (_%__kont262017262018%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl260703260820%_))
                            (let ((_%$%e260724260767%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl260703260820%_))))
                              (let ((_%$%tl260726260772%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e260724260767%_)))
                                    (_%$%hd260725260770%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e260724260767%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl260726260772%_))
                                    (_%__kont262015262016%_
                                     _%$%hd260725260770%_
                                     _%$%hd260702260818%_)
                                    (_%__kont262017262018%_))))
                            (_%__kont262017262018%_)))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl260703260820%_))
                    (let ((_%$%e260724260767%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl260703260820%_))))
                      (let ((_%$%tl260726260772%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e260724260767%_)))
                            (_%$%hd260725260770%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e260724260767%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl260726260772%_))
                            (_%__kont262015262016%_
                             _%$%hd260725260770%_
                             _%$%hd260702260818%_)
                            (_%__kont262017262018%_))))
                    (_%__kont262017262018%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl260703260820%_))
                                                        (let ((_%$%e260724260767%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl260703260820%_))))
                  (let ((_%$%tl260726260772%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e260724260767%_)))
                        (_%$%hd260725260770%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e260724260767%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl260726260772%_))
                        (_%__kont262015262016%_
                         _%$%hd260725260770%_
                         _%$%hd260702260818%_)
                        (_%__kont262017262018%_))))
                (_%__kont262017262018%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl260703260820%_))
                                                    (let ((_%$%e260724260767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl260703260820%_))))
                                                      (let ((_%$%tl260726260772%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e260724260767%_)))
                    (_%$%hd260725260770%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e260724260767%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl260726260772%_))
                    (_%__kont262015262016%_
                     _%$%hd260725260770%_
                     _%$%hd260702260818%_)
                    (_%__kont262017262018%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont262017262018%_)))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl260703260820%_))
                                            (let ((_%$%e260724260767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl260703260820%_))))
                                              (let ((_%$%tl260726260772%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e260724260767%_)))
                                                    (_%$%hd260725260770%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e260724260767%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl260726260772%_))
                                                    (_%__kont262015262016%_
                                                     _%$%hd260725260770%_
                                                     _%$%hd260702260818%_)
                                                    (_%__kont262017262018%_))))
                                            (_%__kont262017262018%_)))))
                                (_%__kont262017262018%_))))
                        (_%__kont262017262018%_))))
                (_%__kont262017262018%_))))))
    (define gxc#special-procedure-optimizers
      (let ((_%ht260683%_
             (let () (declare (not safe)) (make-hash-table-eq 'size: '1))))
        (let ()
          (declare (not safe))
          (__hash-put! _%ht260683%_ 'cast gxc#optimize-special-cast))
        _%ht260683%_))
    (define gxc#!procedure::optimize-call
      (lambda (_%self260645%_ _%ctx260646%_ _%stx260647%_ _%args260648%_)
        (let ((_%self260651%_ _%self260645%_))
          (if (let ((__method262736
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self260651%_ 'check-arguments))))
                (if __method262736
                    (let ()
                      (declare (not safe))
                      (__method262736
                       _%self260651%_
                       _%ctx260646%_
                       _%stx260647%_
                       _%args260648%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self260651%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature260661%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self260651%_ '2 '#f '#f)))
                     (_%signature260663%_ _%signature260661%_)
                     (_%$e260673%_
                      (if _%signature260663%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature260663%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e260673%_
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%$e260673%_))
                        (let ((__tmp262776
                               (cons '%#call
                                     (cons (cons '%#ref
                                                 (cons _%$e260673%_ '()))
                                           (map (lambda (_%$%g260677260679%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx260646%_
                                                     _%$%g260677260679%_)))
                                                _%args260648%_)))))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp262776
                           _%stx260647%_
                           _%ctx260646%_))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx260646%_ _%stx260647%_)))
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx260646%_ _%stx260647%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx260646%_ _%stx260647%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass261760 __method-table261761)
        (let ((__check-arguments261762
               (let ((__tmp262777
                      (lambda ()
                        (let ((__method261763
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table261761
                                  'check-arguments
                                  '#f))))
                          (if __method261763
                              __method261763
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp262777))))
          (lambda (_%self260645%_ _%ctx260646%_ _%stx260647%_ _%args260648%_)
            (let ((_%self260651%_ _%self260645%_))
              (if ((force __check-arguments261762)
                   _%self260651%_
                   _%ctx260646%_
                   _%stx260647%_
                   _%args260648%_)
                  (let* ((_%signature260661%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self260651%_
                             '2
                             '#f
                             '#f)))
                         (_%signature260663%_ _%signature260661%_)
                         (_%$e260673%_
                          (if _%signature260663%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature260663%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e260673%_
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%$e260673%_))
                            (let ((__tmp262778
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%$e260673%_ '()))
                                               (map (lambda (_%$%g260677260679%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%ctx260646%_
                                                         _%$%g260677260679%_)))
                                                    _%args260648%_)))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp262778
                               _%stx260647%_
                               _%ctx260646%_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _%ctx260646%_ _%stx260647%_)))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx260646%_ _%stx260647%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx260646%_ _%stx260647%_))))))))
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
      (lambda (_%self260398%_ _%ctx260399%_ _%stx260400%_ _%args260401%_)
        (let* ((_%self260404%_ _%self260398%_)
               (_%$%signature260413260415%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self260404%_ '2 '#f '#f))))
          (if _%$%signature260413260415%_
              (let* ((_%signature260417%_ _%$%signature260413260415%_)
                     (_%$%argument-types260418260420%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature260417%_
                         '3
                         '#f
                         '#f))))
                (if _%$%argument-types260418260420%_
                    (let* ((_%argument-types260422%_
                            _%$%argument-types260418260420%_)
                           (_%argument-types260427%_
                            (let ((__tmp262779
                                   (lambda (_%t260425%_)
                                     (if _%t260425%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx260400%_
                                            _%t260425%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp262779
                               _%argument-types260422%_))))
                      (let _%loop260429%_ ((_%rest-args260431%_ _%args260401%_)
                                           (_%rest-types260432%_
                                            _%argument-types260427%_)
                                           (_%result260433%_ '#t))
                        (let* ((_%$%rest-args260434260442%_
                                _%rest-args260431%_)
                               (_%$%else260436260450%_
                                (lambda () _%result260433%_))
                               (_%$%K260438260511%_
                                (lambda (_%rest-args260453%_ _%arg260454%_)
                                  (let* ((_%$%rest-types260455260466%_
                                          _%rest-types260432%_)
                                         (_%$%E260459260470%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-types260455260466%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%$%K260462260499%_
                                           (lambda (_%rest-types260496%_
                                                    _%type260497%_)
                                             (_%loop260429%_
                                              _%rest-args260453%_
                                              _%rest-types260496%_
                                              (if (gxc#check-expression-type!
                                                   _%stx260400%_
                                                   _%arg260454%_
                                                   _%type260497%_)
                                                  _%result260433%_
                                                  '#f))))
                                          (_%$%K260461260490%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx260400%_
                                                _%argument-types260427%_))))
                                          (_%$%K260460260480%_
                                           (lambda (_%tail-type260474%_)
                                             (if (let ((__tmp262780
                                                        (lambda (_%$%g260475260477%_)
                                                          (gxc#check-expression-type!
                                                           _%stx260400%_
                                                           _%$%g260475260477%_
                                                           _%tail-type260474%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp262780
                                                    _%rest-args260453%_))
                                                 _%result260433%_
                                                 '#f))))
                                      (let ((_%$%try-match260457260493%_
                                             (lambda ()
                                               (if (null? _%$%rest-types260455260466%_)
                                                   (_%$%K260461260490%_)
                                                   (let ((_%tail-type260483%_
                                                          _%$%rest-types260455260466%_))
                                                     (_%$%K260460260480%_
                                                      _%tail-type260483%_))))))
                                        (if (pair? _%$%rest-types260455260466%_)
                                            (let ((_%$%tl260464260504%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%rest-types260455260466%_)))
                                                  (_%$%hd260463260502%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%rest-types260455260466%_))))
                                              (let ((_%type260507%_
                                                     _%$%hd260463260502%_)
                                                    (_%rest-types260509%_
                                                     _%$%tl260464260504%_))
                                                (_%$%K260462260499%_
                                                 _%rest-types260509%_
                                                 _%type260507%_)))
                                            (_%$%try-match260457260493%_))))))))
                          (if (pair? _%$%rest-args260434260442%_)
                              (let ((_%$%hd260439260514%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest-args260434260442%_)))
                                    (_%$%tl260440260516%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest-args260434260442%_))))
                                (let* ((_%arg260519%_ _%$%hd260439260514%_)
                                       (_%rest-args260521%_
                                        _%$%tl260440260516%_))
                                  (_%$%K260438260511%_
                                   _%rest-args260521%_
                                   _%arg260519%_)))
                              (_%$%else260436260450%_)))))
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
      (lambda (_%self260201%_ _%ctx260202%_ _%stx260203%_ _%args260204%_)
        (let* ((_%self260207%_ _%self260201%_)
               (_%$%g260217260227%_
                (lambda (_%$%g260218260224%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g260218260224%_))))
               (_%$%g260216260273%_
                (lambda (_%$%g260218260230%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g260218260230%_))
                      (let ((_%$%e260220260232%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g260218260230%_))))
                        (let ((_%$%hd260221260235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e260220260232%_)))
                              (_%$%tl260222260237%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e260220260232%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl260222260237%_))
                              (let* ((_%klass260252%_
                                      (let ((__tmp262781
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self260207%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx260203%_
                                         __tmp262781)))
                                     (_%object260254%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx260202%_
                                         _%$%hd260221260235%_)))
                                     (_%instance?260259%_
                                      (let ((_%$e260256%_
                                             (gxc#expression-type?
                                              _%object260254%_
                                              _%klass260252%_)))
                                        (if _%$e260256%_
                                            _%$e260256%_
                                            (gxc#expression-type?
                                             _%$%hd260221260235%_
                                             _%klass260252%_))))
                                     (_%incompatible?260264%_
                                      (let ((_%$e260261%_
                                             (gxc#incompatible-type?
                                              _%object260254%_
                                              _%klass260252%_)))
                                        (if _%$e260261%_
                                            _%$e260261%_
                                            (gxc#incompatible-type?
                                             _%$%hd260221260235%_
                                             _%klass260252%_)))))
                                (if _%instance?260259%_
                                    (let ((__tmp262782
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object260254%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd260221260235%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object260254%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp262782
                                       _%stx260203%_))
                                    (if _%incompatible?260264%_
                                        (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#xform-call%
                                           _%ctx260202%_
                                           _%stx260203%_)))))
                              (_%$%g260217260227%_ _%$%g260218260230%_))))
                      (_%$%g260217260227%_ _%$%g260218260230%_)))))
          (_%$%g260216260273%_ _%args260204%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self259990%_ _%ctx259991%_ _%stx259992%_ _%args259993%_)
        (let* ((_%self259996%_ _%self259990%_)
               (_%$%g260006260016%_
                (lambda (_%$%g260007260013%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g260007260013%_))))
               (_%$%g260005260076%_
                (lambda (_%$%g260007260019%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g260007260019%_))
                      (let ((_%$%e260009260021%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g260007260019%_))))
                        (let ((_%$%hd260010260024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e260009260021%_)))
                              (_%$%tl260011260026%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e260009260021%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl260011260026%_))
                              (let* ((_%klass260041%_
                                      (let ((__tmp262783
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self259996%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx259992%_
                                         __tmp262783)))
                                     (_%object260043%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx259991%_
                                         _%$%hd260010260024%_)))
                                     (_%instance?260048%_
                                      (let ((_%$e260045%_
                                             (gxc#expression-type?
                                              _%object260043%_
                                              _%klass260041%_)))
                                        (if _%$e260045%_
                                            _%$e260045%_
                                            (gxc#expression-type?
                                             _%$%hd260010260024%_
                                             _%klass260041%_))))
                                     (_%incompatible?260053%_
                                      (let ((_%$e260050%_
                                             (gxc#incompatible-type?
                                              _%object260043%_
                                              _%klass260041%_)))
                                        (if _%$e260050%_
                                            _%$e260050%_
                                            (gxc#incompatible-type?
                                             _%$%hd260010260024%_
                                             _%klass260041%_))))
                                     (_%klass260056%_ _%klass260041%_))
                                (if _%instance?260048%_
                                    (let ((__tmp262784
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object260043%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd260010260024%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object260043%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp262784
                                       _%stx259992%_))
                                    (if _%incompatible?260053%_
                                        (cons '%#quote (cons '#f '()))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass260056%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp262785
                                                   (cons '%#struct-direct-instance?
                                                         (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass260056%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%object260043%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp262785
                                               _%stx259992%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass260056%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp262786
                                                       (cons '%#struct-instance?
                                                             (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass260056%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%object260043%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp262786
                                                   _%stx259992%_))
                                                (let ((__tmp262787
                                                       (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons 'class-instance? '()))
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self259996%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons _%object260043%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp262787
                                                   _%stx259992%_)))))))
                              (_%$%g260006260016%_ _%$%g260007260019%_))))
                      (_%$%g260006260016%_ _%$%g260007260019%_)))))
          (_%$%g260005260076%_ _%args259993%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx259658%_)
        (let* ((_%__stx262098262099%_ _%stx259658%_)
               (_%$%g259663259704%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262098262099%_)))))
          (let ((_%__kont262100262101%_ (lambda () '#t))
                (_%__kont262102262103%_ (lambda () '#t))
                (_%__kont262104262105%_
                 (lambda (_%$%g259677259770%_ _%$%g259678259771%_)
                   (let ((_%$%rator-type259792259794%_
                          (let ((__tmp262788
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol
                                    _%$%g259678259771%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp262788))))
                     (if _%$%rator-type259792259794%_
                         (let* ((_%rator-type259796%_
                                 _%$%rator-type259792259794%_)
                                (_%$%rator-signature259797259799%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type259796%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type259796%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%$%rator-signature259797259799%_
                               (let* ((_%rator-signature259801%_
                                       _%$%rator-signature259797259799%_)
                                      (_%$%rator-effect259802259804%_
                                       (if _%rator-signature259801%_
                                           (##direct-structure-ref
                                            _%rator-signature259801%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%$%rator-effect259802259804%_
                                     (let ((_%rator-effect259806%_
                                            _%$%rator-effect259802259804%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect259806%_)
                                               (equal? '(alloc)
                                                       _%rator-effect259806%_))
                                           (let ((__tmp262789
                                                  (let ((__tmp262790
                                                         (lambda (_%$%g259811259814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g259812259816%_)
                   (cons _%$%g259811259814%_ _%$%g259812259816%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp262790
                                                     '()
                                                     _%$%g259677259770%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp262789))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont262108262109%_ (lambda () '#f)))
            (let ((_%__match262187262188%_
                   (lambda (_%$%e259679259716%_
                            _%$%hd259680259719%_
                            _%$%tl259681259721%_
                            _%$%e259682259724%_
                            _%$%hd259683259727%_
                            _%$%tl259684259729%_
                            _%$%e259685259732%_
                            _%$%hd259686259735%_
                            _%$%tl259687259737%_
                            _%$%e259688259740%_
                            _%$%hd259689259743%_
                            _%$%tl259690259745%_
                            _%__splice262106262107%_
                            _%$%target259691259748%_
                            _%$%tl259693259750%_)
                     (letrec ((_%$%loop259694259753%_
                               (lambda (_%$%hd259692259756%_
                                        _%$%rand259698259758%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd259692259756%_))
                                     (let ((_%$%e259695259760%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd259692259756%_))))
                                       (let ((_%$%lp-tl259697259765%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e259695259760%_)))
                                             (_%$%lp-hd259696259763%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e259695259760%_))))
                                         (_%$%loop259694259753%_
                                          _%$%lp-tl259697259765%_
                                          (cons _%$%lp-hd259696259763%_
                                                _%$%rand259698259758%_))))
                                     (let ((_%$%rand259699259768%_
                                            (reverse _%$%rand259698259758%_)))
                                       (_%__kont262104262105%_
                                        _%$%rand259699259768%_
                                        _%$%hd259689259743%_))))))
                       (_%$%loop259694259753%_
                        _%$%target259691259748%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx262098262099%_))
                  (let ((_%$%e259665259847%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx262098262099%_))))
                    (let ((_%$%tl259667259852%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e259665259847%_)))
                          (_%$%hd259666259850%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e259665259847%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd259666259850%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd259666259850%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl259667259852%_))
                                  (let ((_%$%e259668259855%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl259667259852%_))))
                                    (let ((_%$%tl259670259860%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e259668259855%_)))
                                          (_%$%hd259669259858%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e259668259855%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl259670259860%_))
                                          (_%__kont262100262101%_)
                                          (_%__kont262108262109%_))))
                                  (_%__kont262108262109%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd259666259850%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl259667259852%_))
                                      (let ((_%$%e259674259832%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl259667259852%_))))
                                        (let ((_%$%tl259676259837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e259674259832%_)))
                                              (_%$%hd259675259835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e259674259832%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl259676259837%_))
                                              (_%__kont262102262103%_)
                                              (_%__kont262108262109%_))))
                                      (_%__kont262108262109%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%$%hd259666259850%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl259667259852%_))
                                          (let ((_%$%e259682259724%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl259667259852%_))))
                                            (let ((_%$%tl259684259729%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e259682259724%_)))
                                                  (_%$%hd259683259727%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e259682259724%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd259683259727%_))
                                                  (let ((_%$%e259685259732%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd259683259727%_))))
                                                    (let ((_%$%tl259687259737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e259685259732%_)))
                                                          (_%$%hd259686259735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e259685259732%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd259686259735%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%$%hd259686259735%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl259687259737%_))
                          (let ((_%$%e259688259740%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl259687259737%_))))
                            (let ((_%$%tl259690259745%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e259688259740%_)))
                                  (_%$%hd259689259743%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e259688259740%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl259690259745%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl259684259729%_))
                                      (let ((_%__splice262106262107%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl259684259729%_
                                                '0))))
                                        (let ((_%$%tl259693259750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice262106262107%_
                                                  '1)))
                                              (_%$%target259691259748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice262106262107%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl259693259750%_))
                                              (_%__match262187262188%_
                                               _%$%e259665259847%_
                                               _%$%hd259666259850%_
                                               _%$%tl259667259852%_
                                               _%$%e259682259724%_
                                               _%$%hd259683259727%_
                                               _%$%tl259684259729%_
                                               _%$%e259685259732%_
                                               _%$%hd259686259735%_
                                               _%$%tl259687259737%_
                                               _%$%e259688259740%_
                                               _%$%hd259689259743%_
                                               _%$%tl259690259745%_
                                               _%__splice262106262107%_
                                               _%$%target259691259748%_
                                               _%$%tl259693259750%_)
                                              (_%__kont262108262109%_))))
                                      (_%__kont262108262109%_))
                                  (_%__kont262108262109%_))))
                          (_%__kont262108262109%_))
                      (_%__kont262108262109%_))
                  (_%__kont262108262109%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont262108262109%_))))
                                          (_%__kont262108262109%_))
                                      (_%__kont262108262109%_))))
                          (_%__kont262108262109%_))))
                  (_%__kont262108262109%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx259653%_ _%klass259654%_)
        (let ((_%expr-type259656%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx259653%_))))
          (if _%expr-type259656%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type259656%_ _%klass259654%_))
              '#f))))
    (define gxc#incompatible-type?
      (lambda (_%expr259637%_ _%type259638%_)
        (if (not _%type259638%_)
            '#f
            (if (eq? (##structure-ref _%type259638%_ '1 gxc#!type::t '#f) 't)
                '#f
                (if (eq? (##structure-ref _%type259638%_ '1 gxc#!type::t '#f)
                         'false)
                    '#f
                    (let ((_%expr-type259644%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr259637%_))))
                      (if (not _%expr-type259644%_)
                          '#f
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type259644%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              '#f
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%expr-type259644%_
                                     'gxc#!abort::t))
                                  '#f
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#!type-subtype?
                                         _%expr-type259644%_
                                         _%type259638%_))
                                      '#f
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#!interface-instance?
                                             _%type259638%_))
                                          '#f
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!type-subtype?
                                                 _%type259638%_
                                                 _%expr-type259644%_))
                                              '#f
                                              '#t))))))))))))
    (define gxc#check-expression-type!
      (lambda (_%stx259615%_ _%expr259616%_ _%type259617%_)
        (if (not _%type259617%_)
            '#f
            (let ((_%$e259620%_
                   (eq? (##structure-ref _%type259617%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e259620%_
                  _%$e259620%_
                  (let ((_%expr-type259624%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr259616%_))))
                    (if (not _%expr-type259624%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type259624%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e259628%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type259624%_
                                      'gxc#!abort::t))))
                              (if _%$e259628%_
                                  _%$e259628%_
                                  (let ((_%$e259631%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type259624%_
                                            _%type259617%_))))
                                    (if _%$e259631%_
                                        _%$e259631%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type259617%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type259617%_
                                                   _%expr-type259624%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx259615%_
                                                   _%expr259616%_
                                                   _%expr-type259624%_
                                                   _%type259617%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self259429%_ _%ctx259430%_ _%stx259431%_ _%args259432%_)
        (let* ((_%self259435%_ _%self259429%_)
               (_%klass259445%_
                (let ((__tmp262791
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self259435%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx259431%_ __tmp262791)))
               (_%fields259447%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass259445%_
                           '5
                           '#f
                           '#f))))
               (_%args259453%_
                (map (lambda (_%$%g259448259450%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx259430%_ _%$%g259448259450%_)))
                     _%args259432%_))
               (_%inline-make-object259455%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self259435%_
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
                           _%self259435%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields259447%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass259458%_ _%klass259445%_)
               (_%$e259472%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass259458%_ '6 '#f '#f))))
          (if _%$e259472%_
              (let ((_%$obj259477%_
                     (let ((__tmp262792
                            (let () (declare (not safe)) (##gensym '__obj))))
                       (declare (not safe))
                       (make-symbol__0 __tmp262792)))
                    (_%ctor-impl259478%_
                     (let ()
                       (declare (not safe))
                       (gxc#!class-lookup-method
                        _%klass259458%_
                        _%$e259472%_))))
                (let ((__tmp262793
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj259477%_ '())
                                               (cons _%inline-make-object259455%_
                                                     '()))
                                         '())
                                   (cons (cons '%#begin
                                               (cons (if _%ctor-impl259478%_
                                                         (let ((__tmp262794
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl259478%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj259477%_ '()))
                                          _%args259453%_)))))
                   (declare (not safe))
                   (gxc#xform-wrap-apply
                    __tmp262794
                    _%stx259431%_
                    _%ctx259430%_))
                 (let ((_%$ctor259480%_
                        (let ((__tmp262795
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__constructor))))
                          (declare (not safe))
                          (make-symbol__0 __tmp262795))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$ctor259480%_ '())
                                           (cons (cons '%#call
                                                       (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'direct-method-ref '()))
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self259435%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#ref (cons _%$obj259477%_ '()))
                                 (cons (cons '%#quote (cons _%$e259472%_ '()))
                                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#ref
                                                       (cons _%$ctor259480%_
                                                             '()))
                                                 (cons (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$ctor259480%_ '()))
                           (cons (cons '%#ref (cons _%$obj259477%_ '()))
                                 _%args259453%_)))
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
                         (##unchecked-structure-ref _%self259435%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#quote
                                                               (cons 'method:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _%$e259472%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj259477%_ '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp262793 _%stx259431%_)))
              (let ((_%$e259482%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass259458%_
                        '10
                        '#f
                        '#f))))
                (if _%$e259482%_
                    (let* ((_%$obj259487%_
                            (let ((__tmp262796
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp262796)))
                           (_%metakons259489%_
                            (let ((__tmp262797
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx259431%_
                                      _%$e259482%_))))
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               __tmp262797
                               'instance-init!)))
                           (__tmp262798
                            (cons '%#let-values
                                  (cons (cons (cons (cons _%$obj259487%_ '())
                                                    (cons _%inline-make-object259455%_
                                                          '()))
                                              '())
                                        (cons (cons '%#begin
                                                    (cons (if _%metakons259489%_
                                                              (let ((__tmp262799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons259489%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self259435%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj259487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args259453%_))))))
                        (declare (not safe))
                        (gxc#xform-wrap-apply
                         __tmp262799
                         _%stx259431%_
                         _%ctx259430%_))
                      (cons '%#call
                            (cons (cons '%#ref (cons 'call-method '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self259435%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons 'instance-init! '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj259487%_
                                                                '()))
                                                    _%args259453%_))))))
                  (cons (cons '%#ref (cons _%$obj259487%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp262798 _%stx259431%_))
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass259458%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp262800
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args259453%_))))
                              (declare (not safe))
                              (##fx= __tmp262800 _%fields259447%_))
                            (let ((__tmp262801
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self259435%_
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
                                              _%self259435%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args259453%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp262801
                               _%stx259431%_))
                            (let ((__tmp262803
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self259435%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp262802
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass259458%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx259431%_
                               __tmp262803
                               __tmp262802)))
                        (let ((_%$obj259494%_
                               (let ((__tmp262804
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp262804))))
                          (let _%lp259496%_ ((_%rest259498%_ _%args259453%_)
                                             (_%initializers259499%_ '()))
                            (let* ((_%__stx262190262191%_ _%rest259498%_)
                                   (_%$%g259503259524%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx262190262191%_)))))
                              (let ((_%__kont262192262193%_
                                     (lambda (_%$%g259505259578%_
                                              _%$%g259506259579%_
                                              _%$%g259507259580%_)
                                       (let* ((_%slot259607%_
                                               (let ((__tmp262805
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g259507259580%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp262805)))
                                              (_%off259609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass259458%_
                                                  _%slot259607%_))))
                                         (if _%off259609%_
                                             (_%lp259496%_
                                              _%$%g259505259578%_
                                              (cons (cons _%off259609%_
                                                          _%$%g259506259579%_)
                                                    _%initializers259499%_))
                                             (let ((__tmp262806
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self259435%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx259431%_
                                                __tmp262806
                                                _%slot259607%_))))))
                                    (_%__kont262194262195%_
                                     (lambda ()
                                       (let ((__tmp262807
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj259494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object259455%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp262810
                                     (cons (cons '%#ref
                                                 (cons _%$obj259494%_ '()))
                                           '()))
                                    (__tmp262808
                                     (let ((__tmp262809
                                            (lambda (_%i259538%_ _%r259539%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self259435%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i259538%_) '()))
                              (cons (cons '%#ref (cons _%$obj259494%_ '()))
                                    (cons (cdr _%i259538%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r259539%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp262809
                                        '()
                                        _%initializers259499%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp262810 __tmp262808)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp262807
                                          _%stx259431%_))))
                                    (_%__kont262196262197%_
                                     (lambda ()
                                       (let ((__tmp262811
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj259494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object259455%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj259494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args259453%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj259494%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp262811
                                          _%stx259431%_)))))
                                (let* ((_%$%g259501259541%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx262190262191%_))
                                              (_%__kont262194262195%_)
                                              (_%__kont262196262197%_))))
                                       (_%__match262227262228%_
                                        (lambda (_%$%e259508259546%_
                                                 _%$%hd259509259549%_
                                                 _%$%tl259510259551%_
                                                 _%$%e259511259554%_
                                                 _%$%hd259512259557%_
                                                 _%$%tl259513259559%_
                                                 _%$%e259514259562%_
                                                 _%$%hd259515259565%_
                                                 _%$%tl259516259567%_
                                                 _%$%e259517259570%_
                                                 _%$%hd259518259573%_
                                                 _%$%tl259519259575%_)
                                          (let ((_%$%g259505259578%_
                                                 _%$%tl259519259575%_)
                                                (_%$%g259506259579%_
                                                 _%$%hd259518259573%_)
                                                (_%$%g259507259580%_
                                                 _%$%hd259515259565%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%$%g259507259580%_))
                                                (_%__kont262192262193%_
                                                 _%$%g259505259578%_
                                                 _%$%g259506259579%_
                                                 _%$%g259507259580%_)
                                                (_%__kont262196262197%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx262190262191%_))
                                      (let ((_%$%e259508259546%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx262190262191%_))))
                                        (let ((_%$%tl259510259551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e259508259546%_)))
                                              (_%$%hd259509259549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e259508259546%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd259509259549%_))
                                              (let ((_%$%e259511259554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd259509259549%_))))
                                                (let ((_%$%tl259513259559%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e259511259554%_)))
                                                      (_%$%hd259512259557%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e259511259554%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd259512259557%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%$%hd259512259557%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl259513259559%_))
                      (let ((_%$%e259514259562%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl259513259559%_))))
                        (let ((_%$%tl259516259567%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e259514259562%_)))
                              (_%$%hd259515259565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e259514259562%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl259516259567%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl259510259551%_))
                                  (let ((_%$%e259517259570%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl259510259551%_))))
                                    (let ((_%$%tl259519259575%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e259517259570%_)))
                                          (_%$%hd259518259573%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e259517259570%_))))
                                      (_%__match262227262228%_
                                       _%$%e259508259546%_
                                       _%$%hd259509259549%_
                                       _%$%tl259510259551%_
                                       _%$%e259511259554%_
                                       _%$%hd259512259557%_
                                       _%$%tl259513259559%_
                                       _%$%e259514259562%_
                                       _%$%hd259515259565%_
                                       _%$%tl259516259567%_
                                       _%$%e259517259570%_
                                       _%$%hd259518259573%_
                                       _%$%tl259519259575%_)))
                                  (_%__kont262196262197%_))
                              (_%__kont262196262197%_))))
                      (_%__kont262196262197%_))
                  (_%__kont262196262197%_))
              (_%__kont262196262197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont262196262197%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g259501259541%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::check-arguments
      (lambda (_%self259291%_ _%ctx259292%_ _%stx259293%_ _%args259294%_)
        (let ((_%self259297%_ _%self259291%_))
          (if (let ()
                (declare (not safe))
                (##unchecked-structure-ref _%self259297%_ '4 '#f '#f))
              (gxc#!procedure::check-arguments
               _%self259297%_
               _%ctx259292%_
               _%stx259293%_
               _%args259294%_)
              '#t))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'check-arguments
       gxc#!accessor::check-arguments
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self259074%_ _%ctx259075%_ _%stx259076%_ _%args259077%_)
        (let* ((_%self259080%_ _%self259074%_)
               (_%arguments-ok?259090%_
                (let ((__method262737
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self259080%_ 'check-arguments))))
                  (if __method262737
                      (let ()
                        (declare (not safe))
                        (__method262737
                         _%self259080%_
                         _%ctx259075%_
                         _%stx259076%_
                         _%args259077%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self259080%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g259092259102%_
                (lambda (_%$%g259093259099%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g259093259099%_))))
               (_%$%g259091259166%_
                (lambda (_%$%g259093259105%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g259093259105%_))
                      (let ((_%$%e259095259107%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g259093259105%_))))
                        (let ((_%$%hd259096259110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e259095259107%_)))
                              (_%$%tl259097259112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e259095259107%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl259097259112%_))
                              (let* ((_%klass259128%_
                                      (let ((__tmp262812
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self259080%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx259076%_
                                         __tmp262812)))
                                     (_%field259130%_
                                      (let ((__tmp262813
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self259080%_
                                                '3
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#!class-slot->field-offset
                                         _%klass259128%_
                                         __tmp262813)))
                                     (_%object259132%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx259075%_
                                         _%$%hd259096259110%_)))
                                     (_%klass259135%_ _%klass259128%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass259135%_
                                       '8
                                       '#f
                                       '#f))
                                    (let ((__tmp262814
                                           (cons (if (or _%arguments-ok?259090%_
                                                         (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self259080%_
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
                              _%self259080%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#quote (cons _%field259130%_ '()))
                     (cons _%object259132%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp262814
                                       _%stx259076%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass259135%_
                                           '7
                                           '#f
                                           '#f))
                                        (let ((__tmp262815
                                               (cons (if (or _%arguments-ok?259090%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self259080%_
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
                                  _%self259080%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field259130%_ '()))
                         (cons _%object259132%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp262815
                                           _%stx259076%_))
                                        (let ((_%$e259154%_
                                               (let ((__tmp262816
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self259080%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot-find-struct
                                                  _%klass259135%_
                                                  __tmp262816))))
                                          (if _%$e259154%_
                                              (let ((__tmp262817
                                                     (cons (if (or _%arguments-ok?259090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self259080%_
                                   '4
                                   '#f
                                   '#f))))
                       '%#struct-unchecked-ref
                       '%#struct-ref)
                   (cons (cons '%#ref
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self259080%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#quote (cons _%field259130%_ '()))
                               (cons _%object259132%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp262817
                                                 _%stx259076%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self259080%_
                                                     '4
                                                     '#f
                                                     '#f))
                                                  (let ((__tmp262818
                                                         (let ((_%$obj259163%_
                                                                (let ((__tmp262819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp262819))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$obj259163%_ '())
                                           (cons _%object259132%_ '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#struct-direct-instance?
                                                       (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass259135%_
                                    '1
                                    '#f
                                    '#f))
                                 '()))
                     (cons (cons '%#ref (cons _%$obj259163%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#struct-unchecked-ref
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self259080%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field259130%_ '()))
                                 (cons (cons '%#ref (cons _%$obj259163%_ '()))
                                       '()))))
               (cons (if _%arguments-ok?259090%_
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj259163%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self259080%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'class-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self259080%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj259163%_
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self259080%_
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
                                                     __tmp262818
                                                     _%stx259076%_))
                                                  (let ((__tmp262820
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'unchecked-slot-ref '()))
                             (cons _%object259132%_
                                   (cons (cons '%#quote
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self259080%_
                                                        '3
                                                        '#f
                                                        '#f))
                                                     '()))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp262820
                                                     _%stx259076%_))))))))
                              (_%$%g259092259102%_ _%$%g259093259105%_))))
                      (_%$%g259092259102%_ _%$%g259093259105%_)))))
          (_%$%g259091259166%_ _%args259077%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass261764 __method-table261765)
        (let ((__check-arguments261766
               (let ((__tmp262821
                      (lambda ()
                        (let ((__method261767
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table261765
                                  'check-arguments
                                  '#f))))
                          (if __method261767
                              __method261767
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp262821)))
              (__slot261768
               (let ((__slot261769
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass261764 'slot))))
                 (if __slot261769
                     __slot261769
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self259074%_ _%ctx259075%_ _%stx259076%_ _%args259077%_)
            (let* ((_%self259080%_ _%self259074%_)
                   (_%arguments-ok?259090%_
                    ((force __check-arguments261766)
                     _%self259080%_
                     _%ctx259075%_
                     _%stx259076%_
                     _%args259077%_))
                   (_%$%g259092259102%_
                    (lambda (_%$%g259093259099%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g259093259099%_))))
                   (_%$%g259091259166%_
                    (lambda (_%$%g259093259105%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g259093259105%_))
                          (let ((_%$%e259095259107%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g259093259105%_))))
                            (let ((_%$%hd259096259110%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e259095259107%_)))
                                  (_%$%tl259097259112%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e259095259107%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl259097259112%_))
                                  (let* ((_%klass259128%_
                                          (let ((__tmp262822
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self259080%_
                                                    '1
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx259076%_
                                             __tmp262822)))
                                         (_%field259130%_
                                          (let ((__tmp262823
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self259080%_
                                                    '3
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#!class-slot->field-offset
                                             _%klass259128%_
                                             __tmp262823)))
                                         (_%object259132%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%ctx259075%_
                                             _%$%hd259096259110%_)))
                                         (_%klass259135%_ _%klass259128%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass259135%_
                                           '8
                                           '#f
                                           '#f))
                                        (let ((__tmp262824
                                               (cons (if (or _%arguments-ok?259090%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self259080%_
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
                                  _%self259080%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field259130%_ '()))
                         (cons _%object259132%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp262824
                                           _%stx259076%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass259135%_
                                               '7
                                               '#f
                                               '#f))
                                            (let ((__tmp262825
                                                   (cons (if (or _%arguments-ok?259090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self259080%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-ref
                     '%#struct-ref)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self259080%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field259130%_ '()))
                             (cons _%object259132%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp262825
                                               _%stx259076%_))
                                            (let ((_%$e259154%_
                                                   (let ((__tmp262826
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self259080%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot-find-struct
                                                      _%klass259135%_
                                                      __tmp262826))))
                                              (if _%$e259154%_
                                                  (let ((__tmp262827
                                                         (cons (if (or _%arguments-ok?259090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (not (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self259080%_
                                       '4
                                       '#f
                                       '#f))))
                           '%#struct-unchecked-ref
                           '%#struct-ref)
                       (cons (cons '%#ref
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self259080%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#quote (cons _%field259130%_ '()))
                                   (cons _%object259132%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp262827
                                                     _%stx259076%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self259080%_
                                                         '4
                                                         '#f
                                                         '#f))
                                                      (let ((__tmp262828
                                                             (let ((_%$obj259163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp262829
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp262829))))
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj259163%_ '())
                                               (cons _%object259132%_ '()))
                                         '())
                                   (cons (cons '%#if
                                               (cons (cons '%#struct-direct-instance?
                                                           (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass259135%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#ref (cons _%$obj259163%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#struct-unchecked-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self259080%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field259130%_ '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj259163%_ '()))
                                           '()))))
                   (cons (if _%arguments-ok?259090%_
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj259163%_ '()))
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self259080%_
                            __slot261768
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
                                                              _%self259080%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj259163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self259080%_
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
                (gxc#xform-wrap-source __tmp262828 _%stx259076%_))
              (let ((__tmp262830
                     (cons '%#call
                           (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                 (cons _%object259132%_
                                       (cons (cons '%#quote
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self259080%_
                                                            '3
                                                            '#f
                                                            '#f))
                                                         '()))
                                             '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp262830 _%stx259076%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g259092259102%_ _%$%g259093259105%_))))
                          (_%$%g259092259102%_ _%$%g259093259105%_)))))
              (_%$%g259091259166%_ _%args259077%_))))))
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
      (lambda (_%self258838%_ _%ctx258839%_ _%stx258840%_ _%args258841%_)
        (let* ((_%self258844%_ _%self258838%_)
               (_%arguments-ok?258854%_
                (let ((__method262738
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self258844%_ 'check-arguments))))
                  (if __method262738
                      (let ()
                        (declare (not safe))
                        (__method262738
                         _%self258844%_
                         _%ctx258839%_
                         _%stx258840%_
                         _%args258841%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self258844%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g258856258870%_
                (lambda (_%$%g258857258867%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g258857258867%_))))
               (_%$%g258855258949%_
                (lambda (_%$%g258857258873%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g258857258873%_))
                      (let ((_%$%e258860258875%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g258857258873%_))))
                        (let ((_%$%hd258861258878%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e258860258875%_)))
                              (_%$%tl258862258880%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e258860258875%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl258862258880%_))
                              (let ((_%$%e258863258883%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl258862258880%_))))
                                (let ((_%$%hd258864258886%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e258863258883%_)))
                                      (_%$%tl258865258888%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e258863258883%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl258865258888%_))
                                      (let* ((_%klass258908%_
                                              (let ((__tmp262831
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self258844%_
                                                        '1
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#optimizer-resolve-class
                                                 _%stx258840%_
                                                 __tmp262831)))
                                             (_%field258910%_
                                              (let ((__tmp262832
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self258844%_
                                                        '3
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#!class-slot->field-offset
                                                 _%klass258908%_
                                                 __tmp262832)))
                                             (_%object258912%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx258839%_
                                                 _%$%hd258861258878%_)))
                                             (_%value258914%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx258839%_
                                                 _%$%hd258864258886%_)))
                                             (_%klass258917%_ _%klass258908%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass258917%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp262833
                                                   (cons (if (or _%arguments-ok?258854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self258844%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-set!
                     '%#struct-direct-set!)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self258844%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field258910%_ '()))
                             (cons _%object258912%_
                                   (cons _%value258914%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp262833
                                               _%stx258840%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass258917%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp262834
                                                       (cons (if (or _%arguments-ok?258854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self258844%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self258844%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field258910%_ '()))
                                 (cons _%object258912%_
                                       (cons _%value258914%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp262834
                                                   _%stx258840%_))
                                                (let ((_%$e258937%_
                                                       (let ((__tmp262835
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self258844%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot-find-struct _%klass258917%_ __tmp262835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e258937%_
                                                      (let ((__tmp262836
                                                             (cons (if (or _%arguments-ok?258854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (not (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self258844%_
                                           '3
                                           '#f
                                           '#f))))
                               '%#struct-unchecked-set!
                               '%#struct-set!)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self258844%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field258910%_ '()))
                                       (cons _%object258912%_
                                             (cons _%value258914%_ '())))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp262836 _%stx258840%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self258844%_ '4 '#f '#f))
                  (let ((__tmp262837
                         (let ((_%$obj258946%_
                                (let ((__tmp262838
                                       (let ()
                                         (declare (not safe))
                                         (##gensym '__obj))))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp262838))))
                           (cons '%#let-values
                                 (cons (cons (cons (cons _%$obj258946%_ '())
                                                   (cons _%object258912%_ '()))
                                             '())
                                       (cons (cons '%#if
                                                   (cons (cons '%#struct-direct-instance?
                                                               (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass258917%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#ref (cons _%$obj258946%_ '()))
                                   '())))
                 (cons (cons '%#struct-unchecked-set!
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self258844%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field258910%_ '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj258946%_ '()))
                                               (cons _%value258914%_ '())))))
                       (cons (if _%arguments-ok?258854%_
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'unchecked-slot-set!
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj258946%_
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self258844%_
                                '3
                                '#f
                                '#f))
                             '()))
                 (cons _%value258914%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'class-slot-set! '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self258844%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#ref
                                                               (cons _%$obj258946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self258844%_
                                      '3
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%value258914%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp262837 _%stx258840%_))
                  (let ((__tmp262839
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-set! '()))
                                     (cons _%object258912%_
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self258844%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%value258914%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp262839 _%stx258840%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g258856258870%_
                                       _%$%g258857258873%_))))
                              (_%$%g258856258870%_ _%$%g258857258873%_))))
                      (_%$%g258856258870%_ _%$%g258857258873%_)))))
          (_%$%g258855258949%_ _%args258841%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass261770 __method-table261771)
        (let ((__check-arguments261772
               (let ((__tmp262840
                      (lambda ()
                        (let ((__method261773
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table261771
                                  'check-arguments
                                  '#f))))
                          (if __method261773
                              __method261773
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp262840))))
          (lambda (_%self258838%_ _%ctx258839%_ _%stx258840%_ _%args258841%_)
            (let* ((_%self258844%_ _%self258838%_)
                   (_%arguments-ok?258854%_
                    ((force __check-arguments261772)
                     _%self258844%_
                     _%ctx258839%_
                     _%stx258840%_
                     _%args258841%_))
                   (_%$%g258856258870%_
                    (lambda (_%$%g258857258867%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g258857258867%_))))
                   (_%$%g258855258949%_
                    (lambda (_%$%g258857258873%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g258857258873%_))
                          (let ((_%$%e258860258875%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g258857258873%_))))
                            (let ((_%$%hd258861258878%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e258860258875%_)))
                                  (_%$%tl258862258880%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e258860258875%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl258862258880%_))
                                  (let ((_%$%e258863258883%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl258862258880%_))))
                                    (let ((_%$%hd258864258886%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e258863258883%_)))
                                          (_%$%tl258865258888%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e258863258883%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl258865258888%_))
                                          (let* ((_%klass258908%_
                                                  (let ((__tmp262841
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self258844%_
                                                            '1
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#optimizer-resolve-class
                                                     _%stx258840%_
                                                     __tmp262841)))
                                                 (_%field258910%_
                                                  (let ((__tmp262842
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self258844%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot->field-offset
                                                     _%klass258908%_
                                                     __tmp262842)))
                                                 (_%object258912%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx258839%_
                                                     _%$%hd258861258878%_)))
                                                 (_%value258914%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx258839%_
                                                     _%$%hd258864258886%_)))
                                                 (_%klass258917%_
                                                  _%klass258908%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass258917%_
                                                   '8
                                                   '#f
                                                   '#f))
                                                (let ((__tmp262843
                                                       (cons (if (or _%arguments-ok?258854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self258844%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-direct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self258844%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field258910%_ '()))
                                 (cons _%object258912%_
                                       (cons _%value258914%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp262843
                                                   _%stx258840%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%klass258917%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp262844
                                                           (cons (if (or _%arguments-ok?258854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self258844%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-set!
                             '%#struct-set!)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self258844%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field258910%_ '()))
                                     (cons _%object258912%_
                                           (cons _%value258914%_ '())))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp262844 _%stx258840%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$e258937%_
                                                           (let ((__tmp262845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self258844%_
                             '3
                             '#f
                             '#f))))
                     (declare (not safe))
                     (gxc#!class-slot-find-struct
                      _%klass258917%_
                      __tmp262845))))
              (if _%$e258937%_
                  (let ((__tmp262846
                         (cons (if (or _%arguments-ok?258854%_
                                       (not (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self258844%_
                                               '3
                                               '#f
                                               '#f))))
                                   '%#struct-unchecked-set!
                                   '%#struct-set!)
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self258844%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     (cons (cons '%#quote
                                                 (cons _%field258910%_ '()))
                                           (cons _%object258912%_
                                                 (cons _%value258914%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp262846 _%stx258840%_))
                  (if (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258844%_ '4 '#f '#f))
                      (let ((__tmp262847
                             (let ((_%$obj258946%_
                                    (let ((__tmp262848
                                           (let ()
                                             (declare (not safe))
                                             (##gensym '__obj))))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp262848))))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj258946%_
                                                             '())
                                                       (cons _%object258912%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#if
                                                       (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass258917%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#ref (cons _%$obj258946%_ '()))
                                       '())))
                     (cons (cons '%#struct-unchecked-set!
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self258844%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field258910%_ '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj258946%_
                                                               '()))
                                                   (cons _%value258914%_
                                                         '())))))
                           (cons (if _%arguments-ok?258854%_
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'unchecked-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj258946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#quote
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self258844%_
                                    '3
                                    '#f
                                    '#f))
                                 '()))
                     (cons _%value258914%_ '())))))
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
                              _%self258844%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#ref (cons _%$obj258946%_ '()))
                     (cons (cons '%#quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self258844%_
                                          '3
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%value258914%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp262847 _%stx258840%_))
                      (let ((__tmp262849
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-set! '()))
                                         (cons _%object258912%_
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self258844%_
                            '3
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%value258914%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source
                         __tmp262849
                         _%stx258840%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g258856258870%_
                                           _%$%g258857258873%_))))
                                  (_%$%g258856258870%_ _%$%g258857258873%_))))
                          (_%$%g258856258870%_ _%$%g258857258873%_)))))
              (_%$%g258855258949%_ _%args258841%_))))))
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
      (lambda (_%self258654%_ _%ctx258655%_ _%stx258656%_ _%args258657%_)
        (let* ((_%self258660%_ _%self258654%_)
               (_%$%self258669258679%_ _%self258660%_)
               (_%$%E258671258682%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self258669258679%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%$%K258672258692%_
                (lambda (_%inline258685%_ _%dispatch258686%_ _%arity258687%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self258660%_
                         _%args258657%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx258656%_
                         _%arity258687%_)))
                  (if _%inline258685%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp262850 (_%inline258685%_ _%stx258656%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp262850
                           _%stx258656%_
                           _%ctx258655%_)))
                      (if (and _%dispatch258686%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch258686%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch258686%_))
                            (let ((__tmp262851
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch258686%_
                                                           '()))
                                               _%args258657%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp262851
                               _%stx258656%_
                               _%ctx258655%_)))
                          (gxc#!procedure::optimize-call
                           _%self258660%_
                           _%ctx258655%_
                           _%stx258656%_
                           _%args258657%_)))))
               (_%$%e258673258695%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258669258679%_
                   '1
                   '#f
                   '#f)))
               (_%$%e258674258698%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258669258679%_
                   '2
                   '#f
                   '#f)))
               (_%$%e258675258701%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258669258679%_
                   '3
                   '#f
                   '#f)))
               (_%arity258704%_ _%$%e258675258701%_)
               (_%$%e258676258706%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258669258679%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch258709%_ _%$%e258676258706%_)
               (_%$%e258677258711%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258669258679%_
                   '5
                   '#f
                   '#f)))
               (_%inline258714%_ _%$%e258677258711%_))
          (_%$%K258672258692%_
           _%inline258714%_
           _%dispatch258709%_
           _%arity258704%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self258506%_ _%ctx258507%_ _%stx258508%_ _%args258509%_)
        (let* ((_%self258512%_ _%self258506%_)
               (_%$e258526%_
                (let ((__tmp262853
                       (lambda (_%$%g258521258523%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%$%g258521258523%_
                            _%args258509%_))))
                      (__tmp262852
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self258512%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp262853 __tmp262852))))
          (if _%$e258526%_
              (let ((__method262739
                     (let ()
                       (declare (not safe))
                       (__method-ref _%$e258526%_ 'optimize-call))))
                (if __method262739
                    (let ()
                      (declare (not safe))
                      (__method262739
                       _%$e258526%_
                       _%ctx258507%_
                       _%stx258508%_
                       _%args258509%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method" _%$e258526%_ 'optimize-call))
                      '#!void)))
              (let ((__tmp262854
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self258512%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx258508%_
                 __tmp262854))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self258247%_ _%ctx258248%_ _%stx258249%_ _%args258250%_)
        (let* ((_%self258253%_ _%self258247%_)
               (_%$%self258262258271%_ _%self258253%_)
               (_%$%E258264258274%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self258262258271%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%$%K258265258365%_
                (lambda (_%dispatch258277%_ _%table258278%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch258277%_))
                      (let* ((_%$%g258279258289%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch258277%_)))
                             (_%$%else258281258297%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch258277%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx258248%_
                                   _%stx258249%_))))
                             (_%$%K258283258346%_
                              (lambda (_%main258300%_ _%keys258301%_)
                                (let ((_g262855_
                                       (gxc#!kw-lambda-split-args
                                        _%stx258249%_
                                        _%args258250%_)))
                                  (begin
                                    (let ((_g262856_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g262855_)
                                                 (##values-length _g262855_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g262856_ 2)))
                                          (error "Context expects 2 values"
                                                 _g262856_)))
                                    (let ((_%pargs258303%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g262855_ 0)))
                                          (_%kwargs258304%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g262855_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main258300%_))
                                        (if _%table258278%_
                                            (let ((_%xargs258312%_
                                                   (map (lambda (_%key258306%_)
                                                          (let ((_%$e258308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key258306%_ _%kwargs258304%_))))
                    (if _%$e258308%_ _%$e258308%_ '(%#ref absent-value))))
                _%keys258301%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw258314%_)
                                                 (if (memq (car _%kw258314%_)
                                                           _%keys258301%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx258249%_
                                                        _%keys258301%_
                                                        _%kw258314%_))))
                                               _%kwargs258304%_)
                                              (let ((__tmp262857
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main258300%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs258303%_
                                  _%xargs258312%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp262857
                                                 _%stx258249%_
                                                 _%ctx258248%_)))
                                            (let* ((_%kwt258316%_
                                                    (let ((__tmp262858
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp262858)))
                                                   (_%kwvars258320%_
                                                    (map (lambda (_%_258318%_)
                                                           (let ((__tmp262859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp262859)))
                 _%kwargs258304%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind258325%_
                                                    (map (lambda (_%kw258322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar258323%_)
                   (cons (cons _%kwvar258323%_ '())
                         (cons (cdr _%kw258322%_) '())))
                 _%kwargs258304%_
                 _%kwvars258320%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset258330%_
                                                    (map (lambda (_%kw258327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar258328%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt258316%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw258327%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar258328%_
                                                             '()))
                                                 '()))))))
                 _%kwargs258304%_
                 _%kwvars258320%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs258335%_
                                                    (map (lambda (_%kw258332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar258333%_)
                   (cons (car _%kw258332%_)
                         (cons '%#ref (cons _%kwvar258333%_ '()))))
                 _%kwargs258304%_
                 _%kwvars258320%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs258343%_
                                                    (map (lambda (_%key258337%_)
                                                           (let ((_%$e258339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key258337%_ _%xkwargs258335%_))))
                     (if _%$e258339%_ _%$e258339%_ '(%#ref absent-value))))
                 _%keys258301%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp262860
                                                    (cons '%#let-values
                                                          (cons _%kwbind258325%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt258316%_ '())
                                                      (cons (let ((__tmp262861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs258304%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp262861 _%stx258249%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp262862
                                                             (cons (let ((__tmp262863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main258300%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt258316%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs258303%_
                                                       _%xargs258343%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp262863 _%stx258249%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp262862 _%kwset258330%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp262860
                                               _%stx258249%_
                                               _%ctx258248%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%g258279258289%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%$%e258284258349%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g258279258289%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%$%e258285258352%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g258279258289%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%$%e258286258355%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g258279258289%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys258358%_ _%$%e258286258355%_)
                                   (_%$%e258287258360%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g258279258289%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main258363%_ _%$%e258287258360%_))
                              (_%$%K258283258346%_
                               _%main258363%_
                               _%keys258358%_))
                            (_%$%else258281258297%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx258248%_ _%stx258249%_)))))
               (_%$%e258266258368%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258262258271%_
                   '1
                   '#f
                   '#f)))
               (_%$%e258267258371%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258262258271%_
                   '2
                   '#f
                   '#f)))
               (_%$%e258268258374%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258262258271%_
                   '3
                   '#f
                   '#f)))
               (_%table258377%_ _%$%e258268258374%_)
               (_%$%e258269258379%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self258262258271%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch258382%_ _%$%e258269258379%_))
          (_%$%K258265258365%_ _%dispatch258382%_ _%table258377%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx257860%_ _%args257861%_)
        (let _%lp257863%_ ((_%rest257865%_ _%args257861%_)
                           (_%pargs257866%_ '())
                           (_%kwargs257867%_ '()))
          (let* ((_%__stx262232262233%_ _%rest257865%_)
                 (_%$%g257873257925%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx262232262233%_)))))
            (let ((_%__kont262234262235%_
                   (lambda (_%$%g257875258104%_ _%$%g257876258105%_)
                     (_%lp257863%_
                      _%$%g257875258104%_
                      (cons _%$%g257876258105%_ _%pargs257866%_)
                      _%kwargs257867%_)))
                  (_%__kont262236262237%_
                   (lambda (_%$%g257890258050%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%$%g257890258050%_
                                _%pargs257866%_))
                             (reverse _%kwargs257867%_))))
                  (_%__kont262238262239%_
                   (lambda (_%$%g257901257997%_
                            _%$%g257902257998%_
                            _%$%g257903257999%_)
                     (let ((_%kw258016%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g257903257999%_))))
                       (if (assq _%kw258016%_ _%kwargs257867%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx257860%_
                              _%kw258016%_))
                           (_%lp257863%_
                            _%$%g257901257997%_
                            _%pargs257866%_
                            (cons (cons _%kw258016%_ _%$%g257902257998%_)
                                  _%kwargs257867%_))))))
                  (_%__kont262240262241%_
                   (lambda (_%$%g257916257945%_ _%$%g257917257946%_)
                     (_%lp257863%_
                      _%$%g257916257945%_
                      (cons _%$%g257917257946%_ _%pargs257866%_)
                      _%kwargs257867%_)))
                  (_%__kont262242262243%_
                   (lambda ()
                     (values (reverse _%pargs257866%_)
                             (reverse _%kwargs257867%_)))))
              (let ((_%__match262339262340%_
                     (lambda (_%$%e257904257965%_
                              _%$%hd257905257968%_
                              _%$%tl257906257970%_
                              _%$%e257907257973%_
                              _%$%hd257908257976%_
                              _%$%tl257909257978%_
                              _%$%e257910257981%_
                              _%$%hd257911257984%_
                              _%$%tl257912257986%_
                              _%$%e257913257989%_
                              _%$%hd257914257992%_
                              _%$%tl257915257994%_)
                       (let ((_%$%g257901257997%_ _%$%tl257915257994%_)
                             (_%$%g257902257998%_ _%$%hd257914257992%_)
                             (_%$%g257903257999%_ _%$%hd257911257984%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%$%g257903257999%_))
                             (_%__kont262238262239%_
                              _%$%g257901257997%_
                              _%$%g257902257998%_
                              _%$%g257903257999%_)
                             (_%__kont262240262241%_
                              _%$%tl257906257970%_
                              _%$%hd257905257968%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx262232262233%_))
                    (let ((_%$%e257877258069%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx262232262233%_))))
                      (let ((_%$%tl257879258074%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e257877258069%_)))
                            (_%$%hd257878258072%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e257877258069%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd257878258072%_))
                            (let ((_%$%e257880258077%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd257878258072%_))))
                              (let ((_%$%tl257882258082%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e257880258077%_)))
                                    (_%$%hd257881258080%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e257880258077%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd257881258080%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd257881258080%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl257882258082%_))
                                            (let ((_%$%e257883258085%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl257882258082%_))))
                                              (let ((_%$%tl257885258090%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e257883258085%_)))
                                                    (_%$%hd257884258088%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e257883258085%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd257884258088%_))
                                                    (let ((_%$%e257886258093%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd257884258088%_))))
                                                      (if (equal? _%$%e257886258093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl257885258090%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl257879258074%_))
                          (let ((_%$%e257887258096%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl257879258074%_))))
                            (let ((_%$%tl257889258101%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e257887258096%_)))
                                  (_%$%hd257888258099%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e257887258096%_))))
                              (_%__kont262234262235%_
                               _%$%tl257889258101%_
                               _%$%hd257888258099%_)))
                          (_%__kont262240262241%_
                           _%$%tl257879258074%_
                           _%$%hd257878258072%_))
                      (_%__kont262240262241%_
                       _%$%tl257879258074%_
                       _%$%hd257878258072%_))
                  (if (equal? _%$%e257886258093%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl257885258090%_))
                          (_%__kont262236262237%_ _%$%tl257879258074%_)
                          (_%__kont262240262241%_
                           _%$%tl257879258074%_
                           _%$%hd257878258072%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl257885258090%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl257879258074%_))
                              (let ((_%$%e257913257989%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl257879258074%_))))
                                (let ((_%$%tl257915257994%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e257913257989%_)))
                                      (_%$%hd257914257992%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e257913257989%_))))
                                  (_%__match262339262340%_
                                   _%$%e257877258069%_
                                   _%$%hd257878258072%_
                                   _%$%tl257879258074%_
                                   _%$%e257880258077%_
                                   _%$%hd257881258080%_
                                   _%$%tl257882258082%_
                                   _%$%e257883258085%_
                                   _%$%hd257884258088%_
                                   _%$%tl257885258090%_
                                   _%$%e257913257989%_
                                   _%$%hd257914257992%_
                                   _%$%tl257915257994%_)))
                              (_%__kont262240262241%_
                               _%$%tl257879258074%_
                               _%$%hd257878258072%_))
                          (_%__kont262240262241%_
                           _%$%tl257879258074%_
                           _%$%hd257878258072%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl257885258090%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl257879258074%_))
                                                            (let ((_%$%e257913257989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl257879258074%_))))
                      (let ((_%$%tl257915257994%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e257913257989%_)))
                            (_%$%hd257914257992%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e257913257989%_))))
                        (_%__match262339262340%_
                         _%$%e257877258069%_
                         _%$%hd257878258072%_
                         _%$%tl257879258074%_
                         _%$%e257880258077%_
                         _%$%hd257881258080%_
                         _%$%tl257882258082%_
                         _%$%e257883258085%_
                         _%$%hd257884258088%_
                         _%$%tl257885258090%_
                         _%$%e257913257989%_
                         _%$%hd257914257992%_
                         _%$%tl257915257994%_)))
                    (_%__kont262240262241%_
                     _%$%tl257879258074%_
                     _%$%hd257878258072%_))
                (_%__kont262240262241%_
                 _%$%tl257879258074%_
                 _%$%hd257878258072%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont262240262241%_
                                             _%$%tl257879258074%_
                                             _%$%hd257878258072%_))
                                        (_%__kont262240262241%_
                                         _%$%tl257879258074%_
                                         _%$%hd257878258072%_))
                                    (_%__kont262240262241%_
                                     _%$%tl257879258074%_
                                     _%$%hd257878258072%_))))
                            (_%__kont262240262241%_
                             _%$%tl257879258074%_
                             _%$%hd257878258072%_))))
                    (_%__kont262242262243%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self257844%_ _%ctx257845%_ _%stx257846%_ _%args257847%_)
        (let ((_%self257850%_ _%self257844%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx257845%_ _%stx257846%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self257534%_ _%stx257535%_)
        (let* ((_%__stx262348262349%_ _%stx257535%_)
               (_%$%g257538257578%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262348262349%_)))))
          (let ((_%__kont262350262351%_
                 (lambda (_%$%g257540257682%_ _%$%g257541257683%_)
                   (let ((_%$e257710%_
                          (member 'return:
                                  (let ((__tmp262864
                                         (lambda (_%$%g257702257705%_
                                                  _%$%g257703257707%_)
                                           (cons _%$%g257702257705%_
                                                 _%$%g257703257707%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp262864
                                     '()
                                     _%$%g257541257683%_))
                                  gx#stx-eq?)))
                     (if _%$e257710%_
                         (let ((_%type257715%_
                                (let ((__tmp262865
                                       (let ((__tmp262866 (cadr _%$e257710%_)))
                                         (declare (not safe))
                                         (gxc#identifier-symbol __tmp262866))))
                                  (declare (not safe))
                                  (gxc#optimizer-resolve-class
                                   _%stx257535%_
                                   __tmp262865))))
                           (gxc#check-return-type!
                            _%stx257535%_
                            _%$%g257540257682%_
                            _%type257715%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self257534%_
                              _%$%g257540257682%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self257534%_
                            _%$%g257540257682%_))))))
                (_%__kont262354262355%_
                 (lambda (_%$%g257563257607%_ _%$%g257564257608%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self257534%_ _%$%g257563257607%_)))))
            (let ((_%__match262385262386%_
                   (lambda (_%$%e257542257628%_
                            _%$%hd257543257631%_
                            _%$%tl257544257633%_
                            _%$%e257545257636%_
                            _%$%hd257546257639%_
                            _%$%tl257547257641%_
                            _%$%e257548257644%_
                            _%$%hd257549257647%_
                            _%$%tl257550257649%_
                            _%__splice262352262353%_
                            _%$%target257551257652%_
                            _%$%tl257553257654%_)
                     (letrec ((_%$%loop257554257657%_
                               (lambda (_%$%hd257552257660%_
                                        _%$%signature257558257662%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd257552257660%_))
                                     (let ((_%$%e257555257664%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd257552257660%_))))
                                       (let ((_%$%lp-tl257557257669%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e257555257664%_)))
                                             (_%$%lp-hd257556257667%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e257555257664%_))))
                                         (_%$%loop257554257657%_
                                          _%$%lp-tl257557257669%_
                                          (cons _%$%lp-hd257556257667%_
                                                _%$%signature257558257662%_))))
                                     (let ((_%$%signature257559257672%_
                                            (reverse _%$%signature257558257662%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl257547257641%_))
                                           (let ((_%$%e257560257674%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl257547257641%_))))
                                             (let ((_%$%tl257562257679%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e257560257674%_)))
                                                   (_%$%hd257561257677%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e257560257674%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl257562257679%_))
                                                   (_%__kont262350262351%_
                                                    _%$%hd257561257677%_
                                                    _%$%signature257559257672%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g257538257578%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g257538257578%_))))))))
                       (_%$%loop257554257657%_
                        _%$%target257551257652%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx262348262349%_))
                  (let ((_%$%e257542257628%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx262348262349%_))))
                    (let ((_%$%tl257544257633%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e257542257628%_)))
                          (_%$%hd257543257631%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e257542257628%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl257544257633%_))
                          (let ((_%$%e257545257636%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl257544257633%_))))
                            (let ((_%$%tl257547257641%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e257545257636%_)))
                                  (_%$%hd257546257639%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e257545257636%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd257546257639%_))
                                  (let ((_%$%e257548257644%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd257546257639%_))))
                                    (let ((_%$%tl257550257649%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e257548257644%_)))
                                          (_%$%hd257549257647%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e257548257644%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd257549257647%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%$%hd257549257647%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%$%tl257550257649%_))
                                                  (let ((_%__splice262352262353%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl257550257649%_
                                                            '0))))
                                                    (let ((_%$%tl257553257654%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice262352262353%_
                                                              '1)))
                                                          (_%$%target257551257652%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice262352262353%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl257553257654%_))
                                                          (_%__match262385262386%_
                                                           _%$%e257542257628%_
                                                           _%$%hd257543257631%_
                                                           _%$%tl257544257633%_
                                                           _%$%e257545257636%_
                                                           _%$%hd257546257639%_
                                                           _%$%tl257547257641%_
                                                           _%$%e257548257644%_
                                                           _%$%hd257549257647%_
                                                           _%$%tl257550257649%_
                                                           _%__splice262352262353%_
                                                           _%$%target257551257652%_
                                                           _%$%tl257553257654%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl257547257641%_))
                      (let ((_%$%e257571257599%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl257547257641%_))))
                        (let ((_%$%tl257573257604%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e257571257599%_)))
                              (_%$%hd257572257602%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e257571257599%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl257573257604%_))
                              (_%__kont262354262355%_
                               _%$%hd257572257602%_
                               _%$%hd257546257639%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g257538257578%_)))))
                      (let () (declare (not safe)) (_%$%g257538257578%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl257547257641%_))
                                                      (let ((_%$%e257571257599%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl257547257641%_))))
                (let ((_%$%tl257573257604%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e257571257599%_)))
                      (_%$%hd257572257602%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e257571257599%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl257573257604%_))
                      (_%__kont262354262355%_
                       _%$%hd257572257602%_
                       _%$%hd257546257639%_)
                      (let () (declare (not safe)) (_%$%g257538257578%_)))))
              (let () (declare (not safe)) (_%$%g257538257578%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl257547257641%_))
                                                  (let ((_%$%e257571257599%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl257547257641%_))))
                                                    (let ((_%$%tl257573257604%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e257571257599%_)))
                                                          (_%$%hd257572257602%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e257571257599%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl257573257604%_))
                                                          (_%__kont262354262355%_
                                                           _%$%hd257572257602%_
                                                           _%$%hd257546257639%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g257538257578%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g257538257578%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl257547257641%_))
                                              (let ((_%$%e257571257599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl257547257641%_))))
                                                (let ((_%$%tl257573257604%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e257571257599%_)))
                                                      (_%$%hd257572257602%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e257571257599%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl257573257604%_))
                                                      (_%__kont262354262355%_
                                                       _%$%hd257572257602%_
                                                       _%$%hd257546257639%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g257538257578%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g257538257578%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl257547257641%_))
                                      (let ((_%$%e257571257599%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl257547257641%_))))
                                        (let ((_%$%tl257573257604%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e257571257599%_)))
                                              (_%$%hd257572257602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e257571257599%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl257573257604%_))
                                              (_%__kont262354262355%_
                                               _%$%hd257572257602%_
                                               _%$%hd257546257639%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g257538257578%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g257538257578%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g257538257578%_)))))
                  (let () (declare (not safe)) (_%$%g257538257578%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx257509%_ _%expr257510%_ _%type257511%_)
        (let ((_%$e257513%_ (not _%type257511%_)))
          (if _%$e257513%_
              _%$e257513%_
              (let ((_%$e257516%_
                     (eq? (##structure-ref _%type257511%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e257516%_
                    _%$e257516%_
                    (let ((_%$e257519%_
                           (eq? (##structure-ref
                                 _%type257511%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e257519%_
                          _%$e257519%_
                          (let ((_%expr-type257523%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr257510%_))))
                            (if (not _%expr-type257523%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx257509%_
                                   _%type257511%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type257523%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx257509%_
                                       _%type257511%_
                                       _%expr-type257523%_))
                                    (let ((_%$e257527%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type257523%_
                                              'gxc#!abort::t))))
                                      (if _%$e257527%_
                                          _%$e257527%_
                                          (let ((_%$e257530%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type257523%_
                                                    _%type257511%_))))
                                            (if _%$e257530%_
                                                _%$e257530%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx257509%_
                                                   _%type257511%_
                                                   _%expr-type257523%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self256938%_ _%stx256939%_)
        (gxc#check-contract-violation!
         _%stx256939%_
         (let* ((_%__stx262434262435%_ _%stx256939%_)
                (_%$%g256944257054%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; invalid match target"
                      _%__stx262434262435%_)))))
           (let ((_%__kont262436262437%_
                  (lambda (_%$%g256946257483%_
                           _%$%g256947257484%_
                           _%$%g256948257485%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-e _%$%g256948257485%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self256938%_
                           _%$%g256947257484%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self256938%_
                           _%$%g256946257483%_)))))
                 (_%__kont262438262439%_
                  (lambda (_%$%g256967257312%_
                           _%$%g256968257313%_
                           _%$%g256969257314%_
                           _%$%g256970257315%_)
                    (let ((_%$e257347%_
                           (let ((__tmp262867
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g256970257315%_))))
                             (declare (not safe))
                             (gxc#optimizer-lookup-type __tmp262867))))
                      (if _%$e257347%_
                          (if (or (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e257347%_
                                     'gxc#!predicate::t))
                                  (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e257347%_
                                     'gxc#!primitive-predicate::t)))
                              (let* ((_%test257355%_
                                      (let ((__tmp262868
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '%#call))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '%#ref))
                       (cons _%$%g256970257315%_ '()))
                 (cons (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#ref))
                             (cons _%$%g256969257314%_ '()))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-apply
                                         __tmp262868
                                         _%stx256939%_
                                         _%self256938%_)))
                                     (_%K257359%_
                                      (let ((__tmp262869
                                             (lambda ()
                                               (let ((__tmp262872
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self256938%_
                                                           _%$%g256968257313%_))))
                                                     (__tmp262870
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#identifier-symbol _%$%g256969257314%_))
                          (let ((__tmp262871
                                 (##structure-ref
                                  _%$e257347%_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             _%stx256939%_
                             __tmp262871)))
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp262872
                                                  gxc#current-compile-path-type
                                                  __tmp262870)))))
                                        (declare (not safe))
                                        (__make-promise __tmp262869)))
                                     (_%E257362%_
                                      (let ((__tmp262873
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self256938%_
                                                  _%$%g256967257312%_)))))
                                        (declare (not safe))
                                        (__make-promise __tmp262873)))
                                     (_%__stx262408262409%_ _%test257355%_)
                                     (_%$%g257366257379%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx262408262409%_)))))
                                (let ((_%__kont262410262411%_
                                       (lambda (_%$%g257368257407%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%$%g257368257407%_))
                                             (force _%K257359%_)
                                             (force _%E257362%_))))
                                      (_%__kont262412262413%_
                                       (lambda ()
                                         (let ((__tmp262874
                                                (cons '%#if
                                                      (cons _%test257355%_
                                                            (cons (force _%K257359%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (force _%E257362%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp262874
                                            _%stx256939%_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx262408262409%_))
                                      (let ((_%$%e257369257391%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx262408262409%_))))
                                        (let ((_%$%tl257371257396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e257369257391%_)))
                                              (_%$%hd257370257394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e257369257391%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd257370257394%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#quote
                                                     _%$%hd257370257394%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl257371257396%_))
                                                      (let ((_%$%e257372257399%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl257371257396%_))))
                (let ((_%$%tl257374257404%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e257372257399%_)))
                      (_%$%hd257373257402%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e257372257399%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl257374257404%_))
                      (_%__kont262410262411%_ _%$%hd257373257402%_)
                      (_%__kont262412262413%_))))
              (_%__kont262412262413%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont262412262413%_))
                                              (_%__kont262412262413%_))))
                                      (_%__kont262412262413%_))))
                              (let ()
                                (declare (not safe))
                                (gxc#xform-operands
                                 _%self256938%_
                                 _%stx256939%_)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-operands
                             _%self256938%_
                             _%stx256939%_))))))
                 (_%__kont262440262441%_
                  (lambda (_%$%g257004257188%_
                           _%$%g257005257189%_
                           _%$%g257006257190%_
                           _%$%g257007257191%_)
                    (gxc#optimize-if%
                     _%self256938%_
                     (let ((__tmp262875
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#if))
                                  (cons _%$%g257006257190%_
                                        (cons _%$%g257004257188%_
                                              (cons _%$%g257005257189%_
                                                    '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp262875 _%stx256939%_)))))
                 (_%__kont262442262443%_
                  (lambda (_%$%g257035257091%_
                           _%$%g257036257092%_
                           _%$%g257037257093%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-operands _%self256938%_ _%stx256939%_)))))
             (let ((_%__match262641262642%_
                    (lambda (_%$%e257008257116%_
                             _%$%hd257009257119%_
                             _%$%tl257010257121%_
                             _%$%e257011257124%_
                             _%$%hd257012257127%_
                             _%$%tl257013257129%_
                             _%$%e257014257132%_
                             _%$%hd257015257135%_
                             _%$%tl257016257137%_
                             _%$%e257017257140%_
                             _%$%hd257018257143%_
                             _%$%tl257019257145%_
                             _%$%e257020257148%_
                             _%$%hd257021257151%_
                             _%$%tl257022257153%_
                             _%$%e257023257156%_
                             _%$%hd257024257159%_
                             _%$%tl257025257161%_
                             _%$%e257026257164%_
                             _%$%hd257027257167%_
                             _%$%tl257028257169%_
                             _%$%e257029257172%_
                             _%$%hd257030257175%_
                             _%$%tl257031257177%_
                             _%$%e257032257180%_
                             _%$%hd257033257183%_
                             _%$%tl257034257185%_)
                      (let ((_%$%g257004257188%_ _%$%hd257033257183%_)
                            (_%$%g257005257189%_ _%$%hd257030257175%_)
                            (_%$%g257006257190%_ _%$%hd257027257167%_)
                            (_%$%g257007257191%_ _%$%hd257024257159%_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _%$%g257007257191%_
                               'not))
                            (_%__kont262440262441%_
                             _%$%g257004257188%_
                             _%$%g257005257189%_
                             _%$%g257006257190%_
                             _%$%g257007257191%_)
                            (_%__kont262442262443%_
                             _%$%hd257033257183%_
                             _%$%hd257030257175%_
                             _%$%hd257012257127%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx262434262435%_))
                   (let ((_%$%e256949257435%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx262434262435%_))))
                     (let ((_%$%tl256951257440%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e256949257435%_)))
                           (_%$%hd256950257438%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e256949257435%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl256951257440%_))
                           (let ((_%$%e256952257443%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl256951257440%_))))
                             (let ((_%$%tl256954257448%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e256952257443%_)))
                                   (_%$%hd256953257446%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e256952257443%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd256953257446%_))
                                   (let ((_%$%e256955257451%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd256953257446%_))))
                                     (let ((_%$%tl256957257456%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e256955257451%_)))
                                           (_%$%hd256956257454%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e256955257451%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd256956257454%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#quote
                                                  _%$%hd256956257454%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl256957257456%_))
                                                   (let ((_%$%e256958257459%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl256957257456%_))))
                                                     (let ((_%$%tl256960257464%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e256958257459%_)))
                                                           (_%$%hd256959257462%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e256958257459%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl256960257464%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl256954257448%_))
                       (let ((_%$%e256961257467%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl256954257448%_))))
                         (let ((_%$%tl256963257472%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e256961257467%_)))
                               (_%$%hd256962257470%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e256961257467%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl256963257472%_))
                               (let ((_%$%e256964257475%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl256963257472%_))))
                                 (let ((_%$%tl256966257480%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e256964257475%_)))
                                       (_%$%hd256965257478%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e256964257475%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl256966257480%_))
                                       (_%__kont262436262437%_
                                        _%$%hd256965257478%_
                                        _%$%hd256962257470%_
                                        _%$%hd256959257462%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g256944257054%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g256944257054%_)))))
                       (let () (declare (not safe)) (_%$%g256944257054%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl256954257448%_))
                       (let ((_%$%e257044257075%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl256954257448%_))))
                         (let ((_%$%tl257046257080%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e257044257075%_)))
                               (_%$%hd257045257078%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e257044257075%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl257046257080%_))
                               (let ((_%$%e257047257083%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl257046257080%_))))
                                 (let ((_%$%tl257049257088%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e257047257083%_)))
                                       (_%$%hd257048257086%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e257047257083%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl257049257088%_))
                                       (_%__kont262442262443%_
                                        _%$%hd257048257086%_
                                        _%$%hd257045257078%_
                                        _%$%hd256953257446%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g256944257054%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g256944257054%_)))))
                       (let () (declare (not safe)) (_%$%g256944257054%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl256954257448%_))
                                                       (let ((_%$%e257044257075%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl256954257448%_))))
                 (let ((_%$%tl257046257080%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e257044257075%_)))
                       (_%$%hd257045257078%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e257044257075%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl257046257080%_))
                       (let ((_%$%e257047257083%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl257046257080%_))))
                         (let ((_%$%tl257049257088%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e257047257083%_)))
                               (_%$%hd257048257086%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e257047257083%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl257049257088%_))
                               (_%__kont262442262443%_
                                _%$%hd257048257086%_
                                _%$%hd257045257078%_
                                _%$%hd256953257446%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g256944257054%_)))))
                       (let () (declare (not safe)) (_%$%g256944257054%_)))))
               (let () (declare (not safe)) (_%$%g256944257054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-eq?
                                                      '%#call
                                                      _%$%hd256956257454%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl256957257456%_))
                                                       (let ((_%$%e256980257248%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl256957257456%_))))
                 (let ((_%$%tl256982257253%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e256980257248%_)))
                       (_%$%hd256981257251%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e256980257248%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%hd256981257251%_))
                       (let ((_%$%e256983257256%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%hd256981257251%_))))
                         (let ((_%$%tl256985257261%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e256983257256%_)))
                               (_%$%hd256984257259%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e256983257256%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%$%hd256984257259%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-eq? '%#ref _%$%hd256984257259%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl256985257261%_))
                                       (let ((_%$%e256986257264%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl256985257261%_))))
                                         (let ((_%$%tl256988257269%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e256986257264%_)))
                                               (_%$%hd256987257267%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e256986257264%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl256988257269%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl256982257253%_))
                                                   (let ((_%$%e256989257272%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl256982257253%_))))
                                                     (let ((_%$%tl256991257277%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e256989257272%_)))
                                                           (_%$%hd256990257275%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e256989257272%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd256990257275%_))
                                                           (let ((_%$%e256992257280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd256990257275%_))))
                     (let ((_%$%tl256994257285%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e256992257280%_)))
                           (_%$%hd256993257283%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e256992257280%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%$%hd256993257283%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-eq? '%#ref _%$%hd256993257283%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl256994257285%_))
                                   (let ((_%$%e256995257288%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl256994257285%_))))
                                     (let ((_%$%tl256997257293%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e256995257288%_)))
                                           (_%$%hd256996257291%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e256995257288%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl256997257293%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl256991257277%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl256954257448%_))
                                                   (let ((_%$%e256998257296%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl256954257448%_))))
                                                     (let ((_%$%tl257000257301%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e256998257296%_)))
                                                           (_%$%hd256999257299%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e256998257296%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl257000257301%_))
                                                           (let ((_%$%e257001257304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl257000257301%_))))
                     (let ((_%$%tl257003257309%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e257001257304%_)))
                           (_%$%hd257002257307%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e257001257304%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl257003257309%_))
                           (_%__kont262438262439%_
                            _%$%hd257002257307%_
                            _%$%hd256999257299%_
                            _%$%hd256996257291%_
                            _%$%hd256987257267%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g256944257054%_)))))
                   (let () (declare (not safe)) (_%$%g256944257054%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256944257054%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl256954257448%_))
                                                   (let ((_%$%e257044257075%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl256954257448%_))))
                                                     (let ((_%$%tl257046257080%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e257044257075%_)))
                                                           (_%$%hd257045257078%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e257044257075%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl257046257080%_))
                                                           (let ((_%$%e257047257083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl257046257080%_))))
                     (let ((_%$%tl257049257088%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e257047257083%_)))
                           (_%$%hd257048257086%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e257047257083%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl257049257088%_))
                           (_%__kont262442262443%_
                            _%$%hd257048257086%_
                            _%$%hd257045257078%_
                            _%$%hd256953257446%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g256944257054%_)))))
                   (let () (declare (not safe)) (_%$%g256944257054%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256944257054%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl256991257277%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl256954257448%_))
                                                   (let ((_%$%e257029257172%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl256954257448%_))))
                                                     (let ((_%$%tl257031257177%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e257029257172%_)))
                                                           (_%$%hd257030257175%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e257029257172%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl257031257177%_))
                                                           (let ((_%$%e257032257180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl257031257177%_))))
                     (let ((_%$%tl257034257185%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e257032257180%_)))
                           (_%$%hd257033257183%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e257032257180%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl257034257185%_))
                           (_%__match262641262642%_
                            _%$%e256949257435%_
                            _%$%hd256950257438%_
                            _%$%tl256951257440%_
                            _%$%e256952257443%_
                            _%$%hd256953257446%_
                            _%$%tl256954257448%_
                            _%$%e256955257451%_
                            _%$%hd256956257454%_
                            _%$%tl256957257456%_
                            _%$%e256980257248%_
                            _%$%hd256981257251%_
                            _%$%tl256982257253%_
                            _%$%e256983257256%_
                            _%$%hd256984257259%_
                            _%$%tl256985257261%_
                            _%$%e256986257264%_
                            _%$%hd256987257267%_
                            _%$%tl256988257269%_
                            _%$%e256989257272%_
                            _%$%hd256990257275%_
                            _%$%tl256991257277%_
                            _%$%e257029257172%_
                            _%$%hd257030257175%_
                            _%$%tl257031257177%_
                            _%$%e257032257180%_
                            _%$%hd257033257183%_
                            _%$%tl257034257185%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g256944257054%_)))))
                   (let () (declare (not safe)) (_%$%g256944257054%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256944257054%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl256954257448%_))
                                                   (let ((_%$%e257044257075%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl256954257448%_))))
                                                     (let ((_%$%tl257046257080%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e257044257075%_)))
                                                           (_%$%hd257045257078%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e257044257075%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl257046257080%_))
                                                           (let ((_%$%e257047257083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl257046257080%_))))
                     (let ((_%$%tl257049257088%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e257047257083%_)))
                           (_%$%hd257048257086%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e257047257083%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl257049257088%_))
                           (_%__kont262442262443%_
                            _%$%hd257048257086%_
                            _%$%hd257045257078%_
                            _%$%hd256953257446%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g256944257054%_)))))
                   (let () (declare (not safe)) (_%$%g256944257054%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256944257054%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl256991257277%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl256954257448%_))
                                           (let ((_%$%e257029257172%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl256954257448%_))))
                                             (let ((_%$%tl257031257177%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e257029257172%_)))
                                                   (_%$%hd257030257175%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e257029257172%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl257031257177%_))
                                                   (let ((_%$%e257032257180%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl257031257177%_))))
                                                     (let ((_%$%tl257034257185%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e257032257180%_)))
                                                           (_%$%hd257033257183%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e257032257180%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl257034257185%_))
                                                           (_%__match262641262642%_
                                                            _%$%e256949257435%_
                                                            _%$%hd256950257438%_
                                                            _%$%tl256951257440%_
                                                            _%$%e256952257443%_
                                                            _%$%hd256953257446%_
                                                            _%$%tl256954257448%_
                                                            _%$%e256955257451%_
                                                            _%$%hd256956257454%_
                                                            _%$%tl256957257456%_
                                                            _%$%e256980257248%_
                                                            _%$%hd256981257251%_
                                                            _%$%tl256982257253%_
                                                            _%$%e256983257256%_
                                                            _%$%hd256984257259%_
                                                            _%$%tl256985257261%_
                                                            _%$%e256986257264%_
                                                            _%$%hd256987257267%_
                                                            _%$%tl256988257269%_
                                                            _%$%e256989257272%_
                                                            _%$%hd256990257275%_
                                                            _%$%tl256991257277%_
                                                            _%$%e257029257172%_
                                                            _%$%hd257030257175%_
                                                            _%$%tl257031257177%_
                                                            _%$%e257032257180%_
                                                            _%$%hd257033257183%_
                                                            _%$%tl257034257185%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g256944257054%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256944257054%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256944257054%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl256954257448%_))
                                           (let ((_%$%e257044257075%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl256954257448%_))))
                                             (let ((_%$%tl257046257080%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e257044257075%_)))
                                                   (_%$%hd257045257078%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e257044257075%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl257046257080%_))
                                                   (let ((_%$%e257047257083%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl257046257080%_))))
                                                     (let ((_%$%tl257049257088%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e257047257083%_)))
                                                           (_%$%hd257048257086%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e257047257083%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl257049257088%_))
                                                           (_%__kont262442262443%_
                                                            _%$%hd257048257086%_
                                                            _%$%hd257045257078%_
                                                            _%$%hd256953257446%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g256944257054%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256944257054%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256944257054%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl256991257277%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl256954257448%_))
                                       (let ((_%$%e257029257172%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl256954257448%_))))
                                         (let ((_%$%tl257031257177%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e257029257172%_)))
                                               (_%$%hd257030257175%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e257029257172%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl257031257177%_))
                                               (let ((_%$%e257032257180%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl257031257177%_))))
                                                 (let ((_%$%tl257034257185%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e257032257180%_)))
                                                       (_%$%hd257033257183%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e257032257180%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl257034257185%_))
                                                       (_%__match262641262642%_
                                                        _%$%e256949257435%_
                                                        _%$%hd256950257438%_
                                                        _%$%tl256951257440%_
                                                        _%$%e256952257443%_
                                                        _%$%hd256953257446%_
                                                        _%$%tl256954257448%_
                                                        _%$%e256955257451%_
                                                        _%$%hd256956257454%_
                                                        _%$%tl256957257456%_
                                                        _%$%e256980257248%_
                                                        _%$%hd256981257251%_
                                                        _%$%tl256982257253%_
                                                        _%$%e256983257256%_
                                                        _%$%hd256984257259%_
                                                        _%$%tl256985257261%_
                                                        _%$%e256986257264%_
                                                        _%$%hd256987257267%_
                                                        _%$%tl256988257269%_
                                                        _%$%e256989257272%_
                                                        _%$%hd256990257275%_
                                                        _%$%tl256991257277%_
                                                        _%$%e257029257172%_
                                                        _%$%hd257030257175%_
                                                        _%$%tl257031257177%_
                                                        _%$%e257032257180%_
                                                        _%$%hd257033257183%_
                                                        _%$%tl257034257185%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g256944257054%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g256944257054%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g256944257054%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl256954257448%_))
                                       (let ((_%$%e257044257075%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl256954257448%_))))
                                         (let ((_%$%tl257046257080%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e257044257075%_)))
                                               (_%$%hd257045257078%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e257044257075%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl257046257080%_))
                                               (let ((_%$%e257047257083%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl257046257080%_))))
                                                 (let ((_%$%tl257049257088%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e257047257083%_)))
                                                       (_%$%hd257048257086%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e257047257083%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl257049257088%_))
                                                       (_%__kont262442262443%_
                                                        _%$%hd257048257086%_
                                                        _%$%hd257045257078%_
                                                        _%$%hd256953257446%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g256944257054%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g256944257054%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g256944257054%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl256991257277%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl256954257448%_))
                                   (let ((_%$%e257029257172%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl256954257448%_))))
                                     (let ((_%$%tl257031257177%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e257029257172%_)))
                                           (_%$%hd257030257175%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e257029257172%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl257031257177%_))
                                           (let ((_%$%e257032257180%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl257031257177%_))))
                                             (let ((_%$%tl257034257185%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e257032257180%_)))
                                                   (_%$%hd257033257183%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e257032257180%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl257034257185%_))
                                                   (_%__match262641262642%_
                                                    _%$%e256949257435%_
                                                    _%$%hd256950257438%_
                                                    _%$%tl256951257440%_
                                                    _%$%e256952257443%_
                                                    _%$%hd256953257446%_
                                                    _%$%tl256954257448%_
                                                    _%$%e256955257451%_
                                                    _%$%hd256956257454%_
                                                    _%$%tl256957257456%_
                                                    _%$%e256980257248%_
                                                    _%$%hd256981257251%_
                                                    _%$%tl256982257253%_
                                                    _%$%e256983257256%_
                                                    _%$%hd256984257259%_
                                                    _%$%tl256985257261%_
                                                    _%$%e256986257264%_
                                                    _%$%hd256987257267%_
                                                    _%$%tl256988257269%_
                                                    _%$%e256989257272%_
                                                    _%$%hd256990257275%_
                                                    _%$%tl256991257277%_
                                                    _%$%e257029257172%_
                                                    _%$%hd257030257175%_
                                                    _%$%tl257031257177%_
                                                    _%$%e257032257180%_
                                                    _%$%hd257033257183%_
                                                    _%$%tl257034257185%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256944257054%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256944257054%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g256944257054%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl256954257448%_))
                                   (let ((_%$%e257044257075%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl256954257448%_))))
                                     (let ((_%$%tl257046257080%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e257044257075%_)))
                                           (_%$%hd257045257078%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e257044257075%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl257046257080%_))
                                           (let ((_%$%e257047257083%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl257046257080%_))))
                                             (let ((_%$%tl257049257088%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e257047257083%_)))
                                                   (_%$%hd257048257086%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e257047257083%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl257049257088%_))
                                                   (_%__kont262442262443%_
                                                    _%$%hd257048257086%_
                                                    _%$%hd257045257078%_
                                                    _%$%hd256953257446%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256944257054%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256944257054%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g256944257054%_)))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl256991257277%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl256954257448%_))
                           (let ((_%$%e257029257172%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl256954257448%_))))
                             (let ((_%$%tl257031257177%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e257029257172%_)))
                                   (_%$%hd257030257175%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e257029257172%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl257031257177%_))
                                   (let ((_%$%e257032257180%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl257031257177%_))))
                                     (let ((_%$%tl257034257185%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e257032257180%_)))
                                           (_%$%hd257033257183%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e257032257180%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl257034257185%_))
                                           (_%__match262641262642%_
                                            _%$%e256949257435%_
                                            _%$%hd256950257438%_
                                            _%$%tl256951257440%_
                                            _%$%e256952257443%_
                                            _%$%hd256953257446%_
                                            _%$%tl256954257448%_
                                            _%$%e256955257451%_
                                            _%$%hd256956257454%_
                                            _%$%tl256957257456%_
                                            _%$%e256980257248%_
                                            _%$%hd256981257251%_
                                            _%$%tl256982257253%_
                                            _%$%e256983257256%_
                                            _%$%hd256984257259%_
                                            _%$%tl256985257261%_
                                            _%$%e256986257264%_
                                            _%$%hd256987257267%_
                                            _%$%tl256988257269%_
                                            _%$%e256989257272%_
                                            _%$%hd256990257275%_
                                            _%$%tl256991257277%_
                                            _%$%e257029257172%_
                                            _%$%hd257030257175%_
                                            _%$%tl257031257177%_
                                            _%$%e257032257180%_
                                            _%$%hd257033257183%_
                                            _%$%tl257034257185%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256944257054%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g256944257054%_)))))
                           (let () (declare (not safe)) (_%$%g256944257054%_)))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl256954257448%_))
                           (let ((_%$%e257044257075%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl256954257448%_))))
                             (let ((_%$%tl257046257080%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e257044257075%_)))
                                   (_%$%hd257045257078%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e257044257075%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl257046257080%_))
                                   (let ((_%$%e257047257083%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl257046257080%_))))
                                     (let ((_%$%tl257049257088%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e257047257083%_)))
                                           (_%$%hd257048257086%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e257047257083%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl257049257088%_))
                                           (_%__kont262442262443%_
                                            _%$%hd257048257086%_
                                            _%$%hd257045257078%_
                                            _%$%hd256953257446%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256944257054%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g256944257054%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g256944257054%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl256954257448%_))
                                                       (let ((_%$%e257044257075%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl256954257448%_))))
                 (let ((_%$%tl257046257080%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e257044257075%_)))
                       (_%$%hd257045257078%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e257044257075%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl257046257080%_))
                       (let ((_%$%e257047257083%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl257046257080%_))))
                         (let ((_%$%tl257049257088%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e257047257083%_)))
                               (_%$%hd257048257086%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e257047257083%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl257049257088%_))
                               (_%__kont262442262443%_
                                _%$%hd257048257086%_
                                _%$%hd257045257078%_
                                _%$%hd256953257446%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g256944257054%_)))))
                       (let () (declare (not safe)) (_%$%g256944257054%_)))))
               (let () (declare (not safe)) (_%$%g256944257054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl256954257448%_))
                                                   (let ((_%$%e257044257075%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl256954257448%_))))
                                                     (let ((_%$%tl257046257080%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e257044257075%_)))
                                                           (_%$%hd257045257078%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e257044257075%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl257046257080%_))
                                                           (let ((_%$%e257047257083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl257046257080%_))))
                     (let ((_%$%tl257049257088%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e257047257083%_)))
                           (_%$%hd257048257086%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e257047257083%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl257049257088%_))
                           (_%__kont262442262443%_
                            _%$%hd257048257086%_
                            _%$%hd257045257078%_
                            _%$%hd256953257446%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g256944257054%_)))))
                   (let () (declare (not safe)) (_%$%g256944257054%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256944257054%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl256954257448%_))
                                           (let ((_%$%e257044257075%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl256954257448%_))))
                                             (let ((_%$%tl257046257080%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e257044257075%_)))
                                                   (_%$%hd257045257078%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e257044257075%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl257046257080%_))
                                                   (let ((_%$%e257047257083%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl257046257080%_))))
                                                     (let ((_%$%tl257049257088%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e257047257083%_)))
                                                           (_%$%hd257048257086%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e257047257083%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl257049257088%_))
                                                           (_%__kont262442262443%_
                                                            _%$%hd257048257086%_
                                                            _%$%hd257045257078%_
                                                            _%$%hd256953257446%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g256944257054%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256944257054%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256944257054%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl256954257448%_))
                                       (let ((_%$%e257044257075%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl256954257448%_))))
                                         (let ((_%$%tl257046257080%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e257044257075%_)))
                                               (_%$%hd257045257078%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e257044257075%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl257046257080%_))
                                               (let ((_%$%e257047257083%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl257046257080%_))))
                                                 (let ((_%$%tl257049257088%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e257047257083%_)))
                                                       (_%$%hd257048257086%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e257047257083%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl257049257088%_))
                                                       (_%__kont262442262443%_
                                                        _%$%hd257048257086%_
                                                        _%$%hd257045257078%_
                                                        _%$%hd256953257446%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g256944257054%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g256944257054%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g256944257054%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl256954257448%_))
                                   (let ((_%$%e257044257075%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl256954257448%_))))
                                     (let ((_%$%tl257046257080%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e257044257075%_)))
                                           (_%$%hd257045257078%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e257044257075%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl257046257080%_))
                                           (let ((_%$%e257047257083%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl257046257080%_))))
                                             (let ((_%$%tl257049257088%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e257047257083%_)))
                                                   (_%$%hd257048257086%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e257047257083%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl257049257088%_))
                                                   (_%__kont262442262443%_
                                                    _%$%hd257048257086%_
                                                    _%$%hd257045257078%_
                                                    _%$%hd256953257446%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g256944257054%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256944257054%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g256944257054%_))))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl256954257448%_))
                           (let ((_%$%e257044257075%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl256954257448%_))))
                             (let ((_%$%tl257046257080%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e257044257075%_)))
                                   (_%$%hd257045257078%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e257044257075%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl257046257080%_))
                                   (let ((_%$%e257047257083%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl257046257080%_))))
                                     (let ((_%$%tl257049257088%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e257047257083%_)))
                                           (_%$%hd257048257086%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e257047257083%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl257049257088%_))
                                           (_%__kont262442262443%_
                                            _%$%hd257048257086%_
                                            _%$%hd257045257078%_
                                            _%$%hd256953257446%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g256944257054%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g256944257054%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g256944257054%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%$%tl256954257448%_))
                   (let ((_%$%e257044257075%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl256954257448%_))))
                     (let ((_%$%tl257046257080%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e257044257075%_)))
                           (_%$%hd257045257078%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e257044257075%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl257046257080%_))
                           (let ((_%$%e257047257083%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl257046257080%_))))
                             (let ((_%$%tl257049257088%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e257047257083%_)))
                                   (_%$%hd257048257086%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e257047257083%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl257049257088%_))
                                   (_%__kont262442262443%_
                                    _%$%hd257048257086%_
                                    _%$%hd257045257078%_
                                    _%$%hd256953257446%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g256944257054%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g256944257054%_)))))
                   (let () (declare (not safe)) (_%$%g256944257054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl256954257448%_))
                                                       (let ((_%$%e257044257075%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl256954257448%_))))
                 (let ((_%$%tl257046257080%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e257044257075%_)))
                       (_%$%hd257045257078%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e257044257075%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl257046257080%_))
                       (let ((_%$%e257047257083%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl257046257080%_))))
                         (let ((_%$%tl257049257088%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e257047257083%_)))
                               (_%$%hd257048257086%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e257047257083%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl257049257088%_))
                               (_%__kont262442262443%_
                                _%$%hd257048257086%_
                                _%$%hd257045257078%_
                                _%$%hd256953257446%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g256944257054%_)))))
                       (let () (declare (not safe)) (_%$%g256944257054%_)))))
               (let () (declare (not safe)) (_%$%g256944257054%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl256954257448%_))
                                               (let ((_%$%e257044257075%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl256954257448%_))))
                                                 (let ((_%$%tl257046257080%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e257044257075%_)))
                                                       (_%$%hd257045257078%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e257044257075%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl257046257080%_))
                                                       (let ((_%$%e257047257083%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl257046257080%_))))
                 (let ((_%$%tl257049257088%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e257047257083%_)))
                       (_%$%hd257048257086%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e257047257083%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl257049257088%_))
                       (_%__kont262442262443%_
                        _%$%hd257048257086%_
                        _%$%hd257045257078%_
                        _%$%hd256953257446%_)
                       (let () (declare (not safe)) (_%$%g256944257054%_)))))
               (let () (declare (not safe)) (_%$%g256944257054%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g256944257054%_))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl256954257448%_))
                                       (let ((_%$%e257044257075%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl256954257448%_))))
                                         (let ((_%$%tl257046257080%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e257044257075%_)))
                                               (_%$%hd257045257078%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e257044257075%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl257046257080%_))
                                               (let ((_%$%e257047257083%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl257046257080%_))))
                                                 (let ((_%$%tl257049257088%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e257047257083%_)))
                                                       (_%$%hd257048257086%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e257047257083%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl257049257088%_))
                                                       (_%__kont262442262443%_
                                                        _%$%hd257048257086%_
                                                        _%$%hd257045257078%_
                                                        _%$%hd256953257446%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g256944257054%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g256944257054%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g256944257054%_))))))
                           (let ()
                             (declare (not safe))
                             (_%$%g256944257054%_)))))
                   (let () (declare (not safe)) (_%$%g256944257054%_)))))))))
    (define gxc#check-contract-violation!
      (lambda (_%stx256806%_ _%expr256807%_)
        (let* ((_%__stx262670262671%_ _%expr256807%_)
               (_%$%g256810256840%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262670262671%_)))))
          (let ((_%__kont262672262673%_
                 (lambda (_%$%g256812256908%_
                          _%$%g256813256909%_
                          _%$%g256814256910%_)
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"contract violation"
                      _%stx256806%_
                      _%$%g256814256910%_
                      _%$%g256813256909%_
                      _%$%g256812256908%_))))
                (_%__kont262674262675%_ (lambda () _%expr256807%_)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx262670262671%_))
                (let ((_%$%e256815256852%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx262670262671%_))))
                  (let ((_%$%tl256817256857%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e256815256852%_)))
                        (_%$%hd256816256855%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e256815256852%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd256816256855%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq?
                               '%#begin-annotation
                               _%$%hd256816256855%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl256817256857%_))
                                (let ((_%$%e256818256860%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl256817256857%_))))
                                  (let ((_%$%tl256820256865%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e256818256860%_)))
                                        (_%$%hd256819256863%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e256818256860%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd256819256863%_))
                                        (let ((_%$%e256821256868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd256819256863%_))))
                                          (let ((_%$%tl256823256873%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e256821256868%_)))
                                                (_%$%hd256822256871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e256821256868%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd256822256871%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '@contract-violation
                                                       _%$%hd256822256871%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl256823256873%_))
                                                        (let ((_%$%e256824256876%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl256823256873%_))))
                  (let ((_%$%tl256826256881%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e256824256876%_)))
                        (_%$%hd256825256879%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e256824256876%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl256826256881%_))
                        (let ((_%$%e256827256884%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl256826256881%_))))
                          (let ((_%$%tl256829256889%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e256827256884%_)))
                                (_%$%hd256828256887%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e256827256884%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl256829256889%_))
                                (let ((_%$%e256830256892%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl256829256889%_))))
                                  (let ((_%$%tl256832256897%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e256830256892%_)))
                                        (_%$%hd256831256895%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e256830256892%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl256832256897%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl256820256865%_))
                                            (let ((_%$%e256833256900%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl256820256865%_))))
                                              (let ((_%$%tl256835256905%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e256833256900%_)))
                                                    (_%$%hd256834256903%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e256833256900%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl256835256905%_))
                                                    (_%__kont262672262673%_
                                                     _%$%hd256831256895%_
                                                     _%$%hd256828256887%_
                                                     _%$%hd256825256879%_)
                                                    (_%__kont262674262675%_))))
                                            (_%__kont262674262675%_))
                                        (_%__kont262674262675%_))))
                                (_%__kont262674262675%_))))
                        (_%__kont262674262675%_))))
                (_%__kont262674262675%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont262674262675%_))
                                                (_%__kont262674262675%_))))
                                        (_%__kont262674262675%_))))
                                (_%__kont262674262675%_))
                            (_%__kont262674262675%_))
                        (_%__kont262674262675%_))))
                (_%__kont262674262675%_))))))))
