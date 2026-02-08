(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1770513303)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp251514 (list gxc#::basic-xform::t))
            (__tmp251513 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp251514
         '()
         __tmp251513
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args250791%_
        (apply make-instance gxc#::optimize-call::t _%$args250791%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp251515
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
        (__make-atomic-promise __tmp251515)))
    (define gxc#apply-optimize-call
      (lambda (_%stx250783%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self250786%_
                (let ((__obj251505
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj251505))
               (__tmp251516
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self250786%_ _%stx250783%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp251516
           gxc#current-compile-method
           _%self250786%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp251518 (list gxc#::void::t))
            (__tmp251517 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp251518
         '()
         __tmp251517
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args250780%_
        (apply make-instance gxc#::check-return-type::t _%$args250780%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp251519
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
        (__make-atomic-promise __tmp251519)))
    (define gxc#apply-check-return-type
      (lambda (_%stx250772%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self250775%_
                (let ((__obj251507
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj251507))
               (__tmp251520
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self250775%_ _%stx250772%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp251520
           gxc#current-compile-method
           _%self250775%_))))
    (define gxc#optimize-call%
      (lambda (_%self250379%_ _%stx250380%_)
        (let* ((_%__stx250860250861%_ _%stx250380%_)
               (_%g250383250429%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx250860250861%_)))))
          (let ((_%__kont250862250863%_
                 (lambda (_%g250385250568%_ _%g250386250569%_)
                   (let* ((_%rator-id250589%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g250386250569%_)))
                          (_%rator-type250591%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id250589%_))))
                     (if (or (not _%rator-type250591%_)
                             (eq? (##structure-ref
                                   _%rator-type250591%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self250379%_ _%stx250380%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type250591%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp251521
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type250591%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id250589%_
                                  '" => "
                                  _%rator-type250591%_
                                  '" "
                                  __tmp251521))
                               (let* ((_%optimized250606%_
                                       (let ((__method251508
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type250591%_
                                                 'optimize-call))))
                                         (if __method251508
                                             (let ((__tmp251522
                                                    (let ((__tmp251523
                                                           (lambda (_%g250598250601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g250599250603%_)
                     (cons _%g250598250601%_ _%g250599250603%_))))
              (declare (not safe))
              (foldr__0 __tmp251523 '() _%g250385250568%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method251508
                                                _%rator-type250591%_
                                                _%self250379%_
                                                _%stx250380%_
                                                __tmp251522))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type250591%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx250808250809%_
                                       _%optimized250606%_)
                                      (_%g250609250638%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx250808250809%_)))))
                                 (let ((_%__kont250810250811%_
                                        (lambda (_%g250611250704%_
                                                 _%g250612250705%_)
                                          (let* ((_%optimized-rator-id250732%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g250612250705%_)))
                                                 (_%rator-type250737%_
                                                  (let ((_%$e250734%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id250732%_))))
                                                    (if _%$e250734%_
                                                        _%$e250734%_
                                                        _%rator-type250591%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type250737%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id250732%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type250737%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type250737%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized250606%_
                                                (let ((__tmp251524
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g250612250705%_ '()))
                           (let ((__tmp251525
                                  (lambda (_%g250745250748%_ _%g250746250750%_)
                                    (cons _%g250745250748%_
                                          _%g250746250750%_))))
                             (declare (not safe))
                             (foldr__0 __tmp251525 '() _%g250611250704%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp251524
                                                   _%stx250380%_))))))
                                       (_%__kont250814250815%_
                                        (lambda () _%optimized250606%_)))
                                   (let ((_%__match250857250858%_
                                          (lambda (_%e250613250650%_
                                                   _%hd250614250653%_
                                                   _%tl250615250655%_
                                                   _%e250616250658%_
                                                   _%hd250617250661%_
                                                   _%tl250618250663%_
                                                   _%e250619250666%_
                                                   _%hd250620250669%_
                                                   _%tl250621250671%_
                                                   _%e250622250674%_
                                                   _%hd250623250677%_
                                                   _%tl250624250679%_
                                                   _%__splice250812250813%_
                                                   _%target250625250682%_
                                                   _%tl250627250684%_)
                                            (letrec ((_%loop250628250687%_
                                                      (lambda (_%hd250626250690%_
                                                               _%arg250632250692%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd250626250690%_))
                                                            (let ((_%e250629250694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd250626250690%_))))
                      (let ((_%lp-tl250631250699%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e250629250694%_)))
                            (_%lp-hd250630250697%_
                             (let ()
                               (declare (not safe))
                               (##car _%e250629250694%_))))
                        (_%loop250628250687%_
                         _%lp-tl250631250699%_
                         (cons _%lp-hd250630250697%_ _%arg250632250692%_))))
                    (let ((_%arg250633250702%_ (reverse _%arg250632250692%_)))
                      (_%__kont250810250811%_
                       _%arg250633250702%_
                       _%hd250623250677%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop250628250687%_
                                               _%target250625250682%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx250808250809%_))
                                         (let ((_%e250613250650%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx250808250809%_))))
                                           (let ((_%tl250615250655%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e250613250650%_)))
                                                 (_%hd250614250653%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e250613250650%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd250614250653%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd250614250653%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl250615250655%_))
                                                         (let ((_%e250616250658%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl250615250655%_))))
                   (let ((_%tl250618250663%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e250616250658%_)))
                         (_%hd250617250661%_
                          (let ()
                            (declare (not safe))
                            (##car _%e250616250658%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd250617250661%_))
                         (let ((_%e250619250666%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd250617250661%_))))
                           (let ((_%tl250621250671%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e250619250666%_)))
                                 (_%hd250620250669%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e250619250666%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd250620250669%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd250620250669%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl250621250671%_))
                                         (let ((_%e250622250674%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl250621250671%_))))
                                           (let ((_%tl250624250679%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e250622250674%_)))
                                                 (_%hd250623250677%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e250622250674%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl250624250679%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl250618250663%_))
                                                     (let ((_%__splice250812250813%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl250618250663%_
                                                               '0))))
                                                       (let ((_%tl250627250684%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice250812250813%_ '1)))
                     (_%target250625250682%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice250812250813%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl250627250684%_))
                     (_%__match250857250858%_
                      _%e250613250650%_
                      _%hd250614250653%_
                      _%tl250615250655%_
                      _%e250616250658%_
                      _%hd250617250661%_
                      _%tl250618250663%_
                      _%e250619250666%_
                      _%hd250620250669%_
                      _%tl250621250671%_
                      _%e250622250674%_
                      _%hd250623250677%_
                      _%tl250624250679%_
                      _%__splice250812250813%_
                      _%target250625250682%_
                      _%tl250627250684%_)
                     (_%__kont250814250815%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont250814250815%_))
                                                 (_%__kont250814250815%_))))
                                         (_%__kont250814250815%_))
                                     (_%__kont250814250815%_))
                                 (_%__kont250814250815%_))))
                         (_%__kont250814250815%_))))
                 (_%__kont250814250815%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont250814250815%_))
                                                 (_%__kont250814250815%_))))
                                         (_%__kont250814250815%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type250591%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type250591%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp251526
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g250386250569%_
                                                                '()))
                                                    (map (lambda (_%g250756250758%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self250379%_
                                                              _%g250756250758%_)))
                                                         (let ((__tmp251527
                                                                (lambda (_%g250760250763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g250761250765%_)
                          (cons _%g250760250763%_ _%g250761250765%_))))
                   (declare (not safe))
                   (foldr__0 __tmp251527 '() _%g250385250568%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp251526
                                    _%stx250380%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx250380%_
                                    _%rator-type250591%_))))))))
                (_%__kont250866250867%_
                 (lambda (_%g250408250472%_ _%g250409250473%_)
                   (let ((_%rator-type250490%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g250409250473%_))))
                     (if (and _%rator-type250490%_
                              (eq? (##structure-ref
                                    _%rator-type250490%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type250490%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type250490%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type250490%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp251528
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self250379%_
                                               _%g250409250473%_))
                                            (map (lambda (_%g250492250494%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self250379%_
                                                      _%g250492250494%_)))
                                                 (let ((__tmp251529
                                                        (lambda (_%g250496250499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g250497250501%_)
                  (cons _%g250496250499%_ _%g250497250501%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp251529
                                                    '()
                                                    _%g250408250472%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp251528 _%stx250380%_))
                         (if (or (not _%rator-type250490%_)
                                 (let ((__tmp251530
                                        (##structure-ref
                                         _%rator-type250490%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp251530 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self250379%_ _%stx250380%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx250380%_
                                _%rator-type250490%_))))))))
            (let* ((_%__match250927250928%_
                    (lambda (_%e250410250434%_
                             _%hd250411250437%_
                             _%tl250412250439%_
                             _%e250413250442%_
                             _%hd250414250445%_
                             _%tl250415250447%_
                             _%__splice250868250869%_
                             _%target250416250450%_
                             _%tl250418250452%_)
                      (letrec ((_%loop250419250455%_
                                (lambda (_%hd250417250458%_
                                         _%rand250423250460%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd250417250458%_))
                                      (let ((_%e250420250462%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd250417250458%_))))
                                        (let ((_%lp-tl250422250467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250420250462%_)))
                                              (_%lp-hd250421250465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250420250462%_))))
                                          (_%loop250419250455%_
                                           _%lp-tl250422250467%_
                                           (cons _%lp-hd250421250465%_
                                                 _%rand250423250460%_))))
                                      (let ((_%rand250424250470%_
                                             (reverse _%rand250423250460%_)))
                                        (_%__kont250866250867%_
                                         _%rand250424250470%_
                                         _%hd250414250445%_))))))
                        (_%loop250419250455%_ _%target250416250450%_ '()))))
                   (_%__match250907250908%_
                    (lambda (_%e250387250514%_
                             _%hd250388250517%_
                             _%tl250389250519%_
                             _%e250390250522%_
                             _%hd250391250525%_
                             _%tl250392250527%_
                             _%e250393250530%_
                             _%hd250394250533%_
                             _%tl250395250535%_
                             _%e250396250538%_
                             _%hd250397250541%_
                             _%tl250398250543%_
                             _%__splice250864250865%_
                             _%target250399250546%_
                             _%tl250401250548%_)
                      (letrec ((_%loop250402250551%_
                                (lambda (_%hd250400250554%_
                                         _%rand250406250556%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd250400250554%_))
                                      (let ((_%e250403250558%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd250400250554%_))))
                                        (let ((_%lp-tl250405250563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250403250558%_)))
                                              (_%lp-hd250404250561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250403250558%_))))
                                          (_%loop250402250551%_
                                           _%lp-tl250405250563%_
                                           (cons _%lp-hd250404250561%_
                                                 _%rand250406250556%_))))
                                      (let ((_%rand250407250566%_
                                             (reverse _%rand250406250556%_)))
                                        (_%__kont250862250863%_
                                         _%rand250407250566%_
                                         _%hd250397250541%_))))))
                        (_%loop250402250551%_ _%target250399250546%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx250860250861%_))
                  (let ((_%e250387250514%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx250860250861%_))))
                    (let ((_%tl250389250519%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250387250514%_)))
                          (_%hd250388250517%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250387250514%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250389250519%_))
                          (let ((_%e250390250522%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250389250519%_))))
                            (let ((_%tl250392250527%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250390250522%_)))
                                  (_%hd250391250525%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250390250522%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd250391250525%_))
                                  (let ((_%e250393250530%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd250391250525%_))))
                                    (let ((_%tl250395250535%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250393250530%_)))
                                          (_%hd250394250533%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250393250530%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd250394250533%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd250394250533%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250395250535%_))
                                                  (let ((_%e250396250538%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250395250535%_))))
                                                    (let ((_%tl250398250543%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250396250538%_)))
                                                          (_%hd250397250541%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250396250538%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250398250543%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl250392250527%_))
                      (let ((_%__splice250864250865%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl250392250527%_
                                '0))))
                        (let ((_%tl250401250548%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice250864250865%_ '1)))
                              (_%target250399250546%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice250864250865%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250401250548%_))
                              (_%__match250907250908%_
                               _%e250387250514%_
                               _%hd250388250517%_
                               _%tl250389250519%_
                               _%e250390250522%_
                               _%hd250391250525%_
                               _%tl250392250527%_
                               _%e250393250530%_
                               _%hd250394250533%_
                               _%tl250395250535%_
                               _%e250396250538%_
                               _%hd250397250541%_
                               _%tl250398250543%_
                               _%__splice250864250865%_
                               _%target250399250546%_
                               _%tl250401250548%_)
                              (let ()
                                (declare (not safe))
                                (_%g250383250429%_)))))
                      (let () (declare (not safe)) (_%g250383250429%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl250392250527%_))
                      (let ((_%__splice250868250869%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl250392250527%_
                                '0))))
                        (let ((_%tl250418250452%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice250868250869%_ '1)))
                              (_%target250416250450%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice250868250869%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250418250452%_))
                              (_%__match250927250928%_
                               _%e250387250514%_
                               _%hd250388250517%_
                               _%tl250389250519%_
                               _%e250390250522%_
                               _%hd250391250525%_
                               _%tl250392250527%_
                               _%__splice250868250869%_
                               _%target250416250450%_
                               _%tl250418250452%_)
                              (let ()
                                (declare (not safe))
                                (_%g250383250429%_)))))
                      (let () (declare (not safe)) (_%g250383250429%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl250392250527%_))
                                                      (let ((_%__splice250868250869%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl250392250527%_
                        '0))))
                (let ((_%tl250418250452%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice250868250869%_ '1)))
                      (_%target250416250450%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice250868250869%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250418250452%_))
                      (_%__match250927250928%_
                       _%e250387250514%_
                       _%hd250388250517%_
                       _%tl250389250519%_
                       _%e250390250522%_
                       _%hd250391250525%_
                       _%tl250392250527%_
                       _%__splice250868250869%_
                       _%target250416250450%_
                       _%tl250418250452%_)
                      (let () (declare (not safe)) (_%g250383250429%_)))))
              (let () (declare (not safe)) (_%g250383250429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl250392250527%_))
                                                  (let ((_%__splice250868250869%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl250392250527%_
                                                            '0))))
                                                    (let ((_%tl250418250452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice250868250869%_
                                                              '1)))
                                                          (_%target250416250450%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice250868250869%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250418250452%_))
                                                          (_%__match250927250928%_
                                                           _%e250387250514%_
                                                           _%hd250388250517%_
                                                           _%tl250389250519%_
                                                           _%e250390250522%_
                                                           _%hd250391250525%_
                                                           _%tl250392250527%_
                                                           _%__splice250868250869%_
                                                           _%target250416250450%_
                                                           _%tl250418250452%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250383250429%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250383250429%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl250392250527%_))
                                              (let ((_%__splice250868250869%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl250392250527%_
                                                        '0))))
                                                (let ((_%tl250418250452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice250868250869%_
                                                          '1)))
                                                      (_%target250416250450%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice250868250869%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250418250452%_))
                                                      (_%__match250927250928%_
                                                       _%e250387250514%_
                                                       _%hd250388250517%_
                                                       _%tl250389250519%_
                                                       _%e250390250522%_
                                                       _%hd250391250525%_
                                                       _%tl250392250527%_
                                                       _%__splice250868250869%_
                                                       _%target250416250450%_
                                                       _%tl250418250452%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250383250429%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250383250429%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl250392250527%_))
                                      (let ((_%__splice250868250869%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl250392250527%_
                                                '0))))
                                        (let ((_%tl250418250452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice250868250869%_
                                                  '1)))
                                              (_%target250416250450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice250868250869%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250418250452%_))
                                              (_%__match250927250928%_
                                               _%e250387250514%_
                                               _%hd250388250517%_
                                               _%tl250389250519%_
                                               _%e250390250522%_
                                               _%hd250391250525%_
                                               _%tl250392250527%_
                                               _%__splice250868250869%_
                                               _%target250416250450%_
                                               _%tl250418250452%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g250383250429%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250383250429%_))))))
                          (let () (declare (not safe)) (_%g250383250429%_)))))
                  (let () (declare (not safe)) (_%g250383250429%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self250341%_ _%ctx250342%_ _%stx250343%_ _%args250344%_)
        (let ((_%self250347%_ _%self250341%_))
          (if (let ((__method251509
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self250347%_ 'check-arguments))))
                (if __method251509
                    (let ()
                      (declare (not safe))
                      (__method251509
                       _%self250347%_
                       _%ctx250342%_
                       _%stx250343%_
                       _%args250344%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self250347%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature250357%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self250347%_ '2 '#f '#f)))
                     (_%signature250359%_ _%signature250357%_)
                     (_%$e250369%_
                      (if _%signature250359%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature250359%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e250369%_
                    ((lambda (_%unchecked250372%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked250372%_))
                           (let ((__tmp251531
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked250372%_
                                                          '()))
                                              (map (lambda (_%g250373250375%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx250342%_
                                                        _%g250373250375%_)))
                                                   _%args250344%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp251531
                              _%stx250343%_
                              _%ctx250342%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx250342%_ _%stx250343%_))))
                     _%$e250369%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx250342%_ _%stx250343%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx250342%_ _%stx250343%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass250793 __method-table250794)
        (let ((__check-arguments250795
               (let ((__tmp251532
                      (lambda ()
                        (let ((__method250796
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table250794
                                  'check-arguments
                                  '#f))))
                          (if __method250796
                              __method250796
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp251532))))
          (lambda (_%self250341%_ _%ctx250342%_ _%stx250343%_ _%args250344%_)
            (let ((_%self250347%_ _%self250341%_))
              (if ((force __check-arguments250795)
                   _%self250347%_
                   _%ctx250342%_
                   _%stx250343%_
                   _%args250344%_)
                  (let* ((_%signature250357%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self250347%_
                             '2
                             '#f
                             '#f)))
                         (_%signature250359%_ _%signature250357%_)
                         (_%$e250369%_
                          (if _%signature250359%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature250359%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e250369%_
                        ((lambda (_%unchecked250372%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked250372%_))
                               (let ((__tmp251533
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked250372%_
                                                              '()))
                                                  (map (lambda (_%g250373250375%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx250342%_
                                                            _%g250373250375%_)))
                                                       _%args250344%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp251533
                                  _%stx250343%_
                                  _%ctx250342%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx250342%_
                                  _%stx250343%_))))
                         _%$e250369%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx250342%_ _%stx250343%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx250342%_ _%stx250343%_))))))))
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
      (lambda (_%self250094%_ _%ctx250095%_ _%stx250096%_ _%args250097%_)
        (let* ((_%self250100%_ _%self250094%_)
               (_%signature250109250111%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250100%_ '2 '#f '#f))))
          (if _%signature250109250111%_
              (let* ((_%signature250113%_ _%signature250109250111%_)
                     (_%argument-types250114250116%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature250113%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types250114250116%_
                    (let* ((_%argument-types250118%_
                            _%argument-types250114250116%_)
                           (_%argument-types250123%_
                            (let ((__tmp251534
                                   (lambda (_%t250121%_)
                                     (if _%t250121%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx250096%_
                                            _%t250121%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp251534
                               _%argument-types250118%_))))
                      (let _%loop250125%_ ((_%rest-args250127%_ _%args250097%_)
                                           (_%rest-types250128%_
                                            _%argument-types250123%_)
                                           (_%result250129%_ '#t))
                        (let* ((_%rest-args250130250138%_ _%rest-args250127%_)
                               (_%else250132250146%_
                                (lambda () _%result250129%_))
                               (_%K250134250207%_
                                (lambda (_%rest-args250149%_ _%arg250150%_)
                                  (let* ((_%rest-types250151250162%_
                                          _%rest-types250128%_)
                                         (_%E250155250166%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types250151250162%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K250158250195%_
                                           (lambda (_%rest-types250192%_
                                                    _%type250193%_)
                                             (_%loop250125%_
                                              _%rest-args250149%_
                                              _%rest-types250192%_
                                              (if (gxc#check-expression-type!
                                                   _%stx250096%_
                                                   _%arg250150%_
                                                   _%type250193%_)
                                                  _%result250129%_
                                                  '#f))))
                                          (_%K250157250186%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx250096%_
                                                _%argument-types250123%_))))
                                          (_%K250156250176%_
                                           (lambda (_%tail-type250170%_)
                                             (if (let ((__tmp251535
                                                        (lambda (_%g250171250173%_)
                                                          (gxc#check-expression-type!
                                                           _%stx250096%_
                                                           _%g250171250173%_
                                                           _%tail-type250170%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp251535
                                                    _%rest-args250149%_))
                                                 _%result250129%_
                                                 '#f))))
                                      (let ((_%try-match250153250189%_
                                             (lambda ()
                                               (if (null? _%rest-types250151250162%_)
                                                   (_%K250157250186%_)
                                                   (let ((_%tail-type250179%_
                                                          _%rest-types250151250162%_))
                                                     (_%K250156250176%_
                                                      _%tail-type250179%_))))))
                                        (if (pair? _%rest-types250151250162%_)
                                            (let ((_%tl250160250200%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types250151250162%_)))
                                                  (_%hd250159250198%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types250151250162%_))))
                                              (let ((_%type250203%_
                                                     _%hd250159250198%_)
                                                    (_%rest-types250205%_
                                                     _%tl250160250200%_))
                                                (_%K250158250195%_
                                                 _%rest-types250205%_
                                                 _%type250203%_)))
                                            (_%try-match250153250189%_))))))))
                          (if (pair? _%rest-args250130250138%_)
                              (let ((_%hd250135250210%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args250130250138%_)))
                                    (_%tl250136250212%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args250130250138%_))))
                                (let* ((_%arg250215%_ _%hd250135250210%_)
                                       (_%rest-args250217%_
                                        _%tl250136250212%_))
                                  (_%K250134250207%_
                                   _%rest-args250217%_
                                   _%arg250215%_)))
                              (_%else250132250146%_)))))
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
      (lambda (_%self249905%_ _%ctx249906%_ _%stx249907%_ _%args249908%_)
        (let* ((_%self249911%_ _%self249905%_)
               (_%g249921249931%_
                (lambda (_%g249922249928%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g249922249928%_))))
               (_%g249920249969%_
                (lambda (_%g249922249934%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g249922249934%_))
                      (let ((_%e249924249936%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g249922249934%_))))
                        (let ((_%hd249925249939%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249924249936%_)))
                              (_%tl249926249941%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249924249936%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249926249941%_))
                              ((lambda (_%g249923249944%_)
                                 (let* ((_%klass249956%_
                                         (let ((__tmp251536
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self249911%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx249907%_
                                            __tmp251536)))
                                        (_%object249958%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx249906%_
                                            _%g249923249944%_)))
                                        (_%instance?249963%_
                                         (let ((_%$e249960%_
                                                (gxc#expression-type?
                                                 _%object249958%_
                                                 _%klass249956%_)))
                                           (if _%$e249960%_
                                               _%$e249960%_
                                               (gxc#expression-type?
                                                _%g249923249944%_
                                                _%klass249956%_)))))
                                   (if _%instance?249963%_
                                       (let ((__tmp251537
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object249958%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g249923249944%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object249958%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp251537
                                          _%stx249907%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx249906%_
                                          _%stx249907%_)))))
                               _%hd249925249939%_)
                              (_%g249921249931%_ _%g249922249934%_))))
                      (_%g249921249931%_ _%g249922249934%_)))))
          (_%g249920249969%_ _%args249908%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self249701%_ _%ctx249702%_ _%stx249703%_ _%args249704%_)
        (let* ((_%self249707%_ _%self249701%_)
               (_%g249717249727%_
                (lambda (_%g249718249724%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g249718249724%_))))
               (_%g249716249780%_
                (lambda (_%g249718249730%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g249718249730%_))
                      (let ((_%e249720249732%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g249718249730%_))))
                        (let ((_%hd249721249735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249720249732%_)))
                              (_%tl249722249737%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249720249732%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249722249737%_))
                              ((lambda (_%g249719249740%_)
                                 (let* ((_%klass249752%_
                                         (let ((__tmp251538
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self249707%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx249703%_
                                            __tmp251538)))
                                        (_%object249754%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx249702%_
                                            _%g249719249740%_)))
                                        (_%instance?249759%_
                                         (let ((_%$e249756%_
                                                (gxc#expression-type?
                                                 _%object249754%_
                                                 _%klass249752%_)))
                                           (if _%$e249756%_
                                               _%$e249756%_
                                               (gxc#expression-type?
                                                _%g249719249740%_
                                                _%klass249752%_))))
                                        (_%klass249762%_ _%klass249752%_))
                                   (if _%instance?249759%_
                                       (let ((__tmp251539
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object249754%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g249719249740%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object249754%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp251539
                                          _%stx249703%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass249762%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp251540
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass249762%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object249754%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp251540
                                              _%stx249703%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass249762%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp251541
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass249762%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object249754%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp251541
                                                  _%stx249703%_))
                                               (let ((__tmp251542
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self249707%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object249754%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp251542
                                                  _%stx249703%_)))))))
                               _%hd249721249735%_)
                              (_%g249717249727%_ _%g249718249730%_))))
                      (_%g249717249727%_ _%g249718249730%_)))))
          (_%g249716249780%_ _%args249704%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx249369%_)
        (let* ((_%__stx250937250938%_ _%stx249369%_)
               (_%g249374249415%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx250937250938%_)))))
          (let ((_%__kont250939250940%_ (lambda () '#t))
                (_%__kont250941250942%_ (lambda () '#t))
                (_%__kont250943250944%_
                 (lambda (_%g249388249481%_ _%g249389249482%_)
                   (let ((_%rator-type249503249505%_
                          (let ((__tmp251543
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g249389249482%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp251543))))
                     (if _%rator-type249503249505%_
                         (let* ((_%rator-type249507%_
                                 _%rator-type249503249505%_)
                                (_%rator-signature249508249510%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type249507%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type249507%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature249508249510%_
                               (let* ((_%rator-signature249512%_
                                       _%rator-signature249508249510%_)
                                      (_%rator-effect249513249515%_
                                       (if _%rator-signature249512%_
                                           (##direct-structure-ref
                                            _%rator-signature249512%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect249513249515%_
                                     (let ((_%rator-effect249517%_
                                            _%rator-effect249513249515%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect249517%_)
                                               (equal? '(alloc)
                                                       _%rator-effect249517%_))
                                           (let ((__tmp251544
                                                  (let ((__tmp251545
                                                         (lambda (_%g249522249525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g249523249527%_)
                   (cons _%g249522249525%_ _%g249523249527%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp251545
                                                     '()
                                                     _%g249388249481%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp251544))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont250947250948%_ (lambda () '#f)))
            (let ((_%__match251026251027%_
                   (lambda (_%e249390249427%_
                            _%hd249391249430%_
                            _%tl249392249432%_
                            _%e249393249435%_
                            _%hd249394249438%_
                            _%tl249395249440%_
                            _%e249396249443%_
                            _%hd249397249446%_
                            _%tl249398249448%_
                            _%e249399249451%_
                            _%hd249400249454%_
                            _%tl249401249456%_
                            _%__splice250945250946%_
                            _%target249402249459%_
                            _%tl249404249461%_)
                     (letrec ((_%loop249405249464%_
                               (lambda (_%hd249403249467%_
                                        _%rand249409249469%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd249403249467%_))
                                     (let ((_%e249406249471%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd249403249467%_))))
                                       (let ((_%lp-tl249408249476%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e249406249471%_)))
                                             (_%lp-hd249407249474%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e249406249471%_))))
                                         (_%loop249405249464%_
                                          _%lp-tl249408249476%_
                                          (cons _%lp-hd249407249474%_
                                                _%rand249409249469%_))))
                                     (let ((_%rand249410249479%_
                                            (reverse _%rand249409249469%_)))
                                       (_%__kont250943250944%_
                                        _%rand249410249479%_
                                        _%hd249400249454%_))))))
                       (_%loop249405249464%_ _%target249402249459%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx250937250938%_))
                  (let ((_%e249376249558%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx250937250938%_))))
                    (let ((_%tl249378249563%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249376249558%_)))
                          (_%hd249377249561%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249376249558%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd249377249561%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd249377249561%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249378249563%_))
                                  (let ((_%e249379249566%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249378249563%_))))
                                    (let ((_%tl249381249571%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249379249566%_)))
                                          (_%hd249380249569%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249379249566%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249381249571%_))
                                          (_%__kont250939250940%_)
                                          (_%__kont250947250948%_))))
                                  (_%__kont250947250948%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd249377249561%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249378249563%_))
                                      (let ((_%e249385249543%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249378249563%_))))
                                        (let ((_%tl249387249548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249385249543%_)))
                                              (_%hd249386249546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249385249543%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249387249548%_))
                                              (_%__kont250941250942%_)
                                              (_%__kont250947250948%_))))
                                      (_%__kont250947250948%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd249377249561%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249378249563%_))
                                          (let ((_%e249393249435%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249378249563%_))))
                                            (let ((_%tl249395249440%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249393249435%_)))
                                                  (_%hd249394249438%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249393249435%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd249394249438%_))
                                                  (let ((_%e249396249443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd249394249438%_))))
                                                    (let ((_%tl249398249448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249396249443%_)))
                                                          (_%hd249397249446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249396249443%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd249397249446%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd249397249446%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249398249448%_))
                          (let ((_%e249399249451%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249398249448%_))))
                            (let ((_%tl249401249456%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249399249451%_)))
                                  (_%hd249400249454%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249399249451%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl249401249456%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl249395249440%_))
                                      (let ((_%__splice250945250946%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl249395249440%_
                                                '0))))
                                        (let ((_%tl249404249461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice250945250946%_
                                                  '1)))
                                              (_%target249402249459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice250945250946%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249404249461%_))
                                              (_%__match251026251027%_
                                               _%e249376249558%_
                                               _%hd249377249561%_
                                               _%tl249378249563%_
                                               _%e249393249435%_
                                               _%hd249394249438%_
                                               _%tl249395249440%_
                                               _%e249396249443%_
                                               _%hd249397249446%_
                                               _%tl249398249448%_
                                               _%e249399249451%_
                                               _%hd249400249454%_
                                               _%tl249401249456%_
                                               _%__splice250945250946%_
                                               _%target249402249459%_
                                               _%tl249404249461%_)
                                              (_%__kont250947250948%_))))
                                      (_%__kont250947250948%_))
                                  (_%__kont250947250948%_))))
                          (_%__kont250947250948%_))
                      (_%__kont250947250948%_))
                  (_%__kont250947250948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont250947250948%_))))
                                          (_%__kont250947250948%_))
                                      (_%__kont250947250948%_))))
                          (_%__kont250947250948%_))))
                  (_%__kont250947250948%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx249364%_ _%klass249365%_)
        (let ((_%expr-type249367%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx249364%_))))
          (if _%expr-type249367%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type249367%_ _%klass249365%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx249342%_ _%expr249343%_ _%type249344%_)
        (if (not _%type249344%_)
            '#f
            (let ((_%$e249347%_
                   (eq? (##structure-ref _%type249344%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e249347%_
                  _%$e249347%_
                  (let ((_%expr-type249351%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr249343%_))))
                    (if (not _%expr-type249351%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type249351%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e249355%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type249351%_
                                      'gxc#!abort::t))))
                              (if _%$e249355%_
                                  _%$e249355%_
                                  (let ((_%$e249358%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type249351%_
                                            _%type249344%_))))
                                    (if _%$e249358%_
                                        _%$e249358%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type249344%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type249344%_
                                                   _%expr-type249351%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx249342%_
                                                   _%expr249343%_
                                                   _%expr-type249351%_
                                                   _%type249344%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self249156%_ _%ctx249157%_ _%stx249158%_ _%args249159%_)
        (let* ((_%self249162%_ _%self249156%_)
               (_%klass249172%_
                (let ((__tmp251546
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self249162%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx249158%_ __tmp251546)))
               (_%fields249174%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass249172%_
                           '5
                           '#f
                           '#f))))
               (_%args249180%_
                (map (lambda (_%g249175249177%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx249157%_ _%g249175249177%_)))
                     _%args249159%_))
               (_%inline-make-object249182%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self249162%_
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
                           _%self249162%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields249174%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass249185%_ _%klass249172%_)
               (_%$e249199%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass249185%_ '6 '#f '#f))))
          (if _%$e249199%_
              ((lambda (_%ctor249202%_)
                 (let ((_%$obj249204%_
                        (let ((__tmp251547
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp251547)))
                       (_%ctor-impl249205%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass249185%_
                           _%ctor249202%_))))
                   (let ((__tmp251548
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj249204%_ '())
                                                  (cons _%inline-make-object249182%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl249205%_
                                                            (let ((__tmp251549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl249205%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj249204%_ '()))
                                             _%args249180%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp251549
                       _%stx249158%_
                       _%ctx249157%_))
                    (let ((_%$ctor249207%_
                           (let ((__tmp251550
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp251550))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor249207%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self249162%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj249204%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor249202%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor249207%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor249207%_ '()))
                              (cons (cons '%#ref (cons _%$obj249204%_ '()))
                                    _%args249180%_)))
                  (cons (cons '%#call
                              (cons (cons '%#ref (cons 'error '()))
                                    (cons (cons '%#quote
                                                (cons '"missing constructor method implementation"
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons 'class: '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self249162%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor249202%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj249204%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp251548 _%stx249158%_))))
               _%$e249199%_)
              (let ((_%$e249209%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass249185%_
                        '10
                        '#f
                        '#f))))
                (if _%$e249209%_
                    ((lambda (_%metaclass249212%_)
                       (let* ((_%$obj249214%_
                               (let ((__tmp251551
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp251551)))
                              (_%metakons249216%_
                               (let ((__tmp251552
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx249158%_
                                         _%metaclass249212%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp251552
                                  'instance-init!)))
                              (__tmp251553
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj249214%_
                                                             '())
                                                       (cons _%inline-make-object249182%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons249216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp251554
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons249216%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self249162%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj249214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args249180%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp251554
                            _%stx249158%_
                            _%ctx249157%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self249162%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj249214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args249180%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj249214%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp251553 _%stx249158%_)))
                     _%$e249209%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass249185%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp251555
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args249180%_))))
                              (declare (not safe))
                              (##fx= __tmp251555 _%fields249174%_))
                            (let ((__tmp251556
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self249162%_
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
                                              _%self249162%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args249180%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp251556
                               _%stx249158%_))
                            (let ((__tmp251558
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self249162%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp251557
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass249185%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx249158%_
                               __tmp251558
                               __tmp251557)))
                        (let ((_%$obj249221%_
                               (let ((__tmp251559
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp251559))))
                          (let _%lp249223%_ ((_%rest249225%_ _%args249180%_)
                                             (_%initializers249226%_ '()))
                            (let* ((_%__stx251029251030%_ _%rest249225%_)
                                   (_%g249230249251%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx251029251030%_)))))
                              (let ((_%__kont251031251032%_
                                     (lambda (_%g249232249305%_
                                              _%g249233249306%_
                                              _%g249234249307%_)
                                       (let* ((_%slot249334%_
                                               (let ((__tmp251560
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g249234249307%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp251560)))
                                              (_%off249336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass249185%_
                                                  _%slot249334%_))))
                                         (if _%off249336%_
                                             (_%lp249223%_
                                              _%g249232249305%_
                                              (cons (cons _%off249336%_
                                                          _%g249233249306%_)
                                                    _%initializers249226%_))
                                             (let ((__tmp251561
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self249162%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx249158%_
                                                __tmp251561
                                                _%slot249334%_))))))
                                    (_%__kont251033251034%_
                                     (lambda ()
                                       (let ((__tmp251562
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj249221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object249182%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp251565
                                     (cons (cons '%#ref
                                                 (cons _%$obj249221%_ '()))
                                           '()))
                                    (__tmp251563
                                     (let ((__tmp251564
                                            (lambda (_%i249265%_ _%r249266%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self249162%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i249265%_) '()))
                              (cons (cons '%#ref (cons _%$obj249221%_ '()))
                                    (cons (cdr _%i249265%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r249266%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp251564
                                        '()
                                        _%initializers249226%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp251565 __tmp251563)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp251562
                                          _%stx249158%_))))
                                    (_%__kont251035251036%_
                                     (lambda ()
                                       (let ((__tmp251566
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj249221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object249182%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj249221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args249180%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj249221%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp251566
                                          _%stx249158%_)))))
                                (let* ((_%g249228249268%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx251029251030%_))
                                              (_%__kont251033251034%_)
                                              (_%__kont251035251036%_))))
                                       (_%__match251066251067%_
                                        (lambda (_%e249235249273%_
                                                 _%hd249236249276%_
                                                 _%tl249237249278%_
                                                 _%e249238249281%_
                                                 _%hd249239249284%_
                                                 _%tl249240249286%_
                                                 _%e249241249289%_
                                                 _%hd249242249292%_
                                                 _%tl249243249294%_
                                                 _%e249244249297%_
                                                 _%hd249245249300%_
                                                 _%tl249246249302%_)
                                          (let ((_%g249232249305%_
                                                 _%tl249246249302%_)
                                                (_%g249233249306%_
                                                 _%hd249245249300%_)
                                                (_%g249234249307%_
                                                 _%hd249242249292%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g249234249307%_))
                                                (_%__kont251031251032%_
                                                 _%g249232249305%_
                                                 _%g249233249306%_
                                                 _%g249234249307%_)
                                                (_%__kont251035251036%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx251029251030%_))
                                      (let ((_%e249235249273%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx251029251030%_))))
                                        (let ((_%tl249237249278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249235249273%_)))
                                              (_%hd249236249276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249235249273%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd249236249276%_))
                                              (let ((_%e249238249281%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd249236249276%_))))
                                                (let ((_%tl249240249286%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249238249281%_)))
                                                      (_%hd249239249284%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249238249281%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd249239249284%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd249239249284%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl249240249286%_))
                      (let ((_%e249241249289%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249240249286%_))))
                        (let ((_%tl249243249294%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249241249289%_)))
                              (_%hd249242249292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249241249289%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249243249294%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249237249278%_))
                                  (let ((_%e249244249297%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249237249278%_))))
                                    (let ((_%tl249246249302%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249244249297%_)))
                                          (_%hd249245249300%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249244249297%_))))
                                      (_%__match251066251067%_
                                       _%e249235249273%_
                                       _%hd249236249276%_
                                       _%tl249237249278%_
                                       _%e249238249281%_
                                       _%hd249239249284%_
                                       _%tl249240249286%_
                                       _%e249241249289%_
                                       _%hd249242249292%_
                                       _%tl249243249294%_
                                       _%e249244249297%_
                                       _%hd249245249300%_
                                       _%tl249246249302%_)))
                                  (_%__kont251035251036%_))
                              (_%__kont251035251036%_))))
                      (_%__kont251035251036%_))
                  (_%__kont251035251036%_))
              (_%__kont251035251036%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont251035251036%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249228249268%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self248939%_ _%ctx248940%_ _%stx248941%_ _%args248942%_)
        (let* ((_%self248945%_ _%self248939%_)
               (_%arguments-ok?248955%_
                (let ((__method251510
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self248945%_ 'check-arguments))))
                  (if __method251510
                      (let ()
                        (declare (not safe))
                        (__method251510
                         _%self248945%_
                         _%ctx248940%_
                         _%stx248941%_
                         _%args248942%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self248945%_
                                 'check-arguments))
                        '#!void))))
               (_%g248957248967%_
                (lambda (_%g248958248964%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g248958248964%_))))
               (_%g248956249031%_
                (lambda (_%g248958248970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g248958248970%_))
                      (let ((_%e248960248972%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g248958248970%_))))
                        (let ((_%hd248961248975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e248960248972%_)))
                              (_%tl248962248977%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e248960248972%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl248962248977%_))
                              ((lambda (_%g248959248980%_)
                                 (let* ((_%klass248993%_
                                         (let ((__tmp251567
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self248945%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx248941%_
                                            __tmp251567)))
                                        (_%field248995%_
                                         (let ((__tmp251568
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self248945%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass248993%_
                                            __tmp251568)))
                                        (_%object248997%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx248940%_
                                            _%g248959248980%_)))
                                        (_%klass249000%_ _%klass248993%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass249000%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp251569
                                              (cons (if (or _%arguments-ok?248955%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self248945%_
                            '4
                            '#f
                            '#f))))
                '%#struct-unchecked-ref
                '%#struct-direct-ref)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self248945%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field248995%_ '()))
                        (cons _%object248997%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp251569
                                          _%stx248941%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass249000%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp251570
                                                  (cons (if (or _%arguments-ok?248955%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self248945%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self248945%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field248995%_ '()))
                            (cons _%object248997%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp251570
                                              _%stx248941%_))
                                           (let ((_%$e249019%_
                                                  (let ((__tmp251571
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self248945%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass249000%_
                                                     __tmp251571))))
                                             (if _%$e249019%_
                                                 ((lambda (_%klass249022%_)
                                                    (let ((__tmp251572
                                                           (cons (if (or _%arguments-ok?248955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self248945%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self248945%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field248995%_ '()))
                                     (cons _%object248997%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp251572 _%stx248941%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e249019%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self248945%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp251573
                                                            (let ((_%$obj249028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp251574
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp251574))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj249028%_ '())
                                              (cons _%object248997%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass249000%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj249028%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self248945%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field248995%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj249028%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?248955%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj249028%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self248945%_
                           '3
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
                                                             _%self248945%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj249028%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self248945%_
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
               (gxc#xform-wrap-source __tmp251573 _%stx248941%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp251575
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object248997%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self248945%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp251575 _%stx248941%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd248961248975%_)
                              (_%g248957248967%_ _%g248958248970%_))))
                      (_%g248957248967%_ _%g248958248970%_)))))
          (_%g248956249031%_ _%args248942%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass250797 __method-table250798)
        (let ((__check-arguments250799
               (let ((__tmp251576
                      (lambda ()
                        (let ((__method250800
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table250798
                                  'check-arguments
                                  '#f))))
                          (if __method250800
                              __method250800
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp251576)))
              (__slot250801
               (let ((__slot250802
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass250797 'slot))))
                 (if __slot250802
                     __slot250802
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self248939%_ _%ctx248940%_ _%stx248941%_ _%args248942%_)
            (let* ((_%self248945%_ _%self248939%_)
                   (_%arguments-ok?248955%_
                    ((force __check-arguments250799)
                     _%self248945%_
                     _%ctx248940%_
                     _%stx248941%_
                     _%args248942%_))
                   (_%g248957248967%_
                    (lambda (_%g248958248964%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g248958248964%_))))
                   (_%g248956249031%_
                    (lambda (_%g248958248970%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g248958248970%_))
                          (let ((_%e248960248972%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g248958248970%_))))
                            (let ((_%hd248961248975%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e248960248972%_)))
                                  (_%tl248962248977%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e248960248972%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl248962248977%_))
                                  ((lambda (_%g248959248980%_)
                                     (let* ((_%klass248993%_
                                             (let ((__tmp251577
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self248945%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx248941%_
                                                __tmp251577)))
                                            (_%field248995%_
                                             (let ((__tmp251578
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self248945%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass248993%_
                                                __tmp251578)))
                                            (_%object248997%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx248940%_
                                                _%g248959248980%_)))
                                            (_%klass249000%_ _%klass248993%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass249000%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp251579
                                                  (cons (if (or _%arguments-ok?248955%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self248945%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self248945%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field248995%_ '()))
                            (cons _%object248997%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp251579
                                              _%stx248941%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass249000%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp251580
                                                      (cons (if (or _%arguments-ok?248955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self248945%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self248945%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field248995%_ '()))
                                (cons _%object248997%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp251580
                                                  _%stx248941%_))
                                               (let ((_%$e249019%_
                                                      (let ((__tmp251581
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self248945%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass249000%_ __tmp251581))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e249019%_
                                                     ((lambda (_%klass249022%_)
                                                        (let ((__tmp251582
                                                               (cons (if (or _%arguments-ok?248955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self248945%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self248945%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field248995%_ '()))
                                         (cons _%object248997%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp251582 _%stx248941%_)))
              _%$e249019%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self248945%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp251583
                                                                (let ((_%$obj249028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp251584
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp251584))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj249028%_ '())
                                                  (cons _%object248997%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass249000%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj249028%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self248945%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field248995%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj249028%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?248955%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj249028%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self248945%_
                               __slot250801
                               '#f
                               '#f))
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'class-slot-ref '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self248945%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj249028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self248945%_
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
                   (gxc#xform-wrap-source __tmp251583 _%stx248941%_))
                 (let ((__tmp251585
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object248997%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self248945%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp251585 _%stx248941%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd248961248975%_)
                                  (_%g248957248967%_ _%g248958248970%_))))
                          (_%g248957248967%_ _%g248958248970%_)))))
              (_%g248956249031%_ _%args248942%_))))))
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
      (lambda (_%self248703%_ _%ctx248704%_ _%stx248705%_ _%args248706%_)
        (let* ((_%self248709%_ _%self248703%_)
               (_%arguments-ok?248719%_
                (let ((__method251511
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self248709%_ 'check-arguments))))
                  (if __method251511
                      (let ()
                        (declare (not safe))
                        (__method251511
                         _%self248709%_
                         _%ctx248704%_
                         _%stx248705%_
                         _%args248706%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self248709%_
                                 'check-arguments))
                        '#!void))))
               (_%g248721248735%_
                (lambda (_%g248722248732%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g248722248732%_))))
               (_%g248720248814%_
                (lambda (_%g248722248738%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g248722248738%_))
                      (let ((_%e248725248740%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g248722248738%_))))
                        (let ((_%hd248726248743%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e248725248740%_)))
                              (_%tl248727248745%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e248725248740%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl248727248745%_))
                              (let ((_%e248728248748%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl248727248745%_))))
                                (let ((_%hd248729248751%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e248728248748%_)))
                                      (_%tl248730248753%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e248728248748%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl248730248753%_))
                                      ((lambda (_%g248723248756%_
                                                _%g248724248757%_)
                                         (let* ((_%klass248773%_
                                                 (let ((__tmp251586
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self248709%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx248705%_
                                                    __tmp251586)))
                                                (_%field248775%_
                                                 (let ((__tmp251587
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self248709%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass248773%_
                                                    __tmp251587)))
                                                (_%object248777%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx248704%_
                                                    _%g248724248757%_)))
                                                (_%value248779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx248704%_
                                                    _%g248723248756%_)))
                                                (_%klass248782%_
                                                 _%klass248773%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass248782%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp251588
                                                      (cons (if (or _%arguments-ok?248719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self248709%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self248709%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field248775%_ '()))
                                (cons _%object248777%_
                                      (cons _%value248779%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp251588
                                                  _%stx248705%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass248782%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp251589
                                                          (cons (if (or _%arguments-ok?248719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self248709%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self248709%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field248775%_ '()))
                                    (cons _%object248777%_
                                          (cons _%value248779%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp251589
                                                      _%stx248705%_))
                                                   (let ((_%$e248802%_
                                                          (let ((__tmp251590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self248709%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass248782%_
                     __tmp251590))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e248802%_
                                                         ((lambda (_%klass248805%_)
                                                            (let ((__tmp251591
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?248719%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self248709%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self248709%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field248775%_ '()))
                                             (cons _%object248777%_
                                                   (cons _%value248779%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251591 _%stx248705%_)))
                  _%$e248802%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self248709%_ '4 '#f '#f))
                     (let ((__tmp251592
                            (let ((_%$obj248811%_
                                   (let ((__tmp251593
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp251593))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj248811%_ '())
                                                      (cons _%object248777%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass248782%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj248811%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self248709%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field248775%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj248811%_
                                                              '()))
                                                  (cons _%value248779%_
                                                        '())))))
                          (cons (if _%arguments-ok?248719%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj248811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self248709%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value248779%_ '())))))
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
                             _%self248709%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj248811%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self248709%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value248779%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp251592 _%stx248705%_))
                     (let ((__tmp251594
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object248777%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self248709%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value248779%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp251594
                        _%stx248705%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd248729248751%_
                                       _%hd248726248743%_)
                                      (_%g248721248735%_ _%g248722248738%_))))
                              (_%g248721248735%_ _%g248722248738%_))))
                      (_%g248721248735%_ _%g248722248738%_)))))
          (_%g248720248814%_ _%args248706%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass250803 __method-table250804)
        (let ((__check-arguments250805
               (let ((__tmp251595
                      (lambda ()
                        (let ((__method250806
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table250804
                                  'check-arguments
                                  '#f))))
                          (if __method250806
                              __method250806
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp251595))))
          (lambda (_%self248703%_ _%ctx248704%_ _%stx248705%_ _%args248706%_)
            (let* ((_%self248709%_ _%self248703%_)
                   (_%arguments-ok?248719%_
                    ((force __check-arguments250805)
                     _%self248709%_
                     _%ctx248704%_
                     _%stx248705%_
                     _%args248706%_))
                   (_%g248721248735%_
                    (lambda (_%g248722248732%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g248722248732%_))))
                   (_%g248720248814%_
                    (lambda (_%g248722248738%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g248722248738%_))
                          (let ((_%e248725248740%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g248722248738%_))))
                            (let ((_%hd248726248743%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e248725248740%_)))
                                  (_%tl248727248745%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e248725248740%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl248727248745%_))
                                  (let ((_%e248728248748%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl248727248745%_))))
                                    (let ((_%hd248729248751%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e248728248748%_)))
                                          (_%tl248730248753%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e248728248748%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl248730248753%_))
                                          ((lambda (_%g248723248756%_
                                                    _%g248724248757%_)
                                             (let* ((_%klass248773%_
                                                     (let ((__tmp251596
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self248709%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx248705%_
                                                        __tmp251596)))
                                                    (_%field248775%_
                                                     (let ((__tmp251597
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self248709%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass248773%_
                                                        __tmp251597)))
                                                    (_%object248777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx248704%_
                                                        _%g248724248757%_)))
                                                    (_%value248779%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx248704%_
                                                        _%g248723248756%_)))
                                                    (_%klass248782%_
                                                     _%klass248773%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass248782%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp251598
                                                          (cons (if (or _%arguments-ok?248719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self248709%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self248709%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field248775%_ '()))
                                    (cons _%object248777%_
                                          (cons _%value248779%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp251598
                                                      _%stx248705%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass248782%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp251599
                                                              (cons (if (or _%arguments-ok?248719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self248709%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self248709%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field248775%_ '()))
                                        (cons _%object248777%_
                                              (cons _%value248779%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp251599 _%stx248705%_))
               (let ((_%$e248802%_
                      (let ((__tmp251600
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self248709%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass248782%_
                         __tmp251600))))
                 (if _%$e248802%_
                     ((lambda (_%klass248805%_)
                        (let ((__tmp251601
                               (cons (if (or _%arguments-ok?248719%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self248709%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self248709%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field248775%_
                                                             '()))
                                                 (cons _%object248777%_
                                                       (cons _%value248779%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp251601 _%stx248705%_)))
                      _%$e248802%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self248709%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp251602
                                (let ((_%$obj248811%_
                                       (let ((__tmp251603
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp251603))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj248811%_
                                                                '())
                                                          (cons _%object248777%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass248782%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj248811%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self248709%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field248775%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj248811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value248779%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?248719%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj248811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self248709%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value248779%_ '())))))
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
                                 _%self248709%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj248811%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self248709%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value248779%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp251602 _%stx248705%_))
                         (let ((__tmp251604
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object248777%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self248709%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value248779%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp251604
                            _%stx248705%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd248729248751%_
                                           _%hd248726248743%_)
                                          (_%g248721248735%_
                                           _%g248722248738%_))))
                                  (_%g248721248735%_ _%g248722248738%_))))
                          (_%g248721248735%_ _%g248722248738%_)))))
              (_%g248720248814%_ _%args248706%_))))))
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
      (lambda (_%self248519%_ _%ctx248520%_ _%stx248521%_ _%args248522%_)
        (let* ((_%self248525%_ _%self248519%_)
               (_%self248534248544%_ _%self248525%_)
               (_%E248536248547%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self248534248544%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K248537248557%_
                (lambda (_%inline248550%_ _%dispatch248551%_ _%arity248552%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self248525%_
                         _%args248522%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx248521%_
                         _%arity248552%_)))
                  (if _%inline248550%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp251605 (_%inline248550%_ _%stx248521%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp251605
                           _%stx248521%_
                           _%ctx248520%_)))
                      (if (and _%dispatch248551%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch248551%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch248551%_))
                            (let ((__tmp251606
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch248551%_
                                                           '()))
                                               _%args248522%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp251606
                               _%stx248521%_
                               _%ctx248520%_)))
                          (gxc#!procedure::optimize-call
                           _%self248525%_
                           _%ctx248520%_
                           _%stx248521%_
                           _%args248522%_)))))
               (_%e248538248560%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248534248544%_ '1 '#f '#f)))
               (_%e248539248563%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248534248544%_ '2 '#f '#f)))
               (_%e248540248566%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248534248544%_ '3 '#f '#f)))
               (_%arity248569%_ _%e248540248566%_)
               (_%e248541248571%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248534248544%_ '4 '#f '#f)))
               (_%dispatch248574%_ _%e248541248571%_)
               (_%e248542248576%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248534248544%_ '5 '#f '#f)))
               (_%inline248579%_ _%e248542248576%_))
          (_%K248537248557%_
           _%inline248579%_
           _%dispatch248574%_
           _%arity248569%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self248371%_ _%ctx248372%_ _%stx248373%_ _%args248374%_)
        (let* ((_%self248377%_ _%self248371%_)
               (_%$e248391%_
                (let ((__tmp251608
                       (lambda (_%g248386248388%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g248386248388%_
                            _%args248374%_))))
                      (__tmp251607
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self248377%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp251608 __tmp251607))))
          (if _%$e248391%_
              ((lambda (_%clause248394%_)
                 (let ((__method251512
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause248394%_ 'optimize-call))))
                   (if __method251512
                       (let ()
                         (declare (not safe))
                         (__method251512
                          _%clause248394%_
                          _%ctx248372%_
                          _%stx248373%_
                          _%args248374%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause248394%_
                                  'optimize-call))
                         '#!void))))
               _%$e248391%_)
              (let ((__tmp251609
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self248377%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx248373%_
                 __tmp251609))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self248112%_ _%ctx248113%_ _%stx248114%_ _%args248115%_)
        (let* ((_%self248118%_ _%self248112%_)
               (_%self248127248136%_ _%self248118%_)
               (_%E248129248139%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self248127248136%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K248130248230%_
                (lambda (_%dispatch248142%_ _%table248143%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch248142%_))
                      (let* ((_%g248144248154%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch248142%_)))
                             (_%else248146248162%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch248142%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx248113%_
                                   _%stx248114%_))))
                             (_%K248148248211%_
                              (lambda (_%main248165%_ _%keys248166%_)
                                (let ((_g251610_
                                       (gxc#!kw-lambda-split-args
                                        _%stx248114%_
                                        _%args248115%_)))
                                  (begin
                                    (let ((_g251611_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g251610_)
                                                 (##values-length _g251610_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g251611_ 2)))
                                          (error "Context expects 2 values"
                                                 _g251611_)))
                                    (let ((_%pargs248168%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g251610_ 0)))
                                          (_%kwargs248169%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g251610_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main248165%_))
                                        (if _%table248143%_
                                            (let ((_%xargs248177%_
                                                   (map (lambda (_%key248171%_)
                                                          (let ((_%$e248173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key248171%_ _%kwargs248169%_))))
                    (if _%$e248173%_ _%$e248173%_ '(%#ref absent-value))))
                _%keys248166%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw248179%_)
                                                 (if (memq (car _%kw248179%_)
                                                           _%keys248166%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx248114%_
                                                        _%keys248166%_
                                                        _%kw248179%_))))
                                               _%kwargs248169%_)
                                              (let ((__tmp251612
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main248165%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs248168%_
                                  _%xargs248177%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp251612
                                                 _%stx248114%_
                                                 _%ctx248113%_)))
                                            (let* ((_%kwt248181%_
                                                    (let ((__tmp251613
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp251613)))
                                                   (_%kwvars248185%_
                                                    (map (lambda (_%_248183%_)
                                                           (let ((__tmp251614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp251614)))
                 _%kwargs248169%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind248190%_
                                                    (map (lambda (_%kw248187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar248188%_)
                   (cons (cons _%kwvar248188%_ '())
                         (cons (cdr _%kw248187%_) '())))
                 _%kwargs248169%_
                 _%kwvars248185%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset248195%_
                                                    (map (lambda (_%kw248192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar248193%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt248181%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw248192%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar248193%_
                                                             '()))
                                                 '()))))))
                 _%kwargs248169%_
                 _%kwvars248185%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs248200%_
                                                    (map (lambda (_%kw248197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar248198%_)
                   (cons (car _%kw248197%_)
                         (cons '%#ref (cons _%kwvar248198%_ '()))))
                 _%kwargs248169%_
                 _%kwvars248185%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs248208%_
                                                    (map (lambda (_%key248202%_)
                                                           (let ((_%$e248204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key248202%_ _%xkwargs248200%_))))
                     (if _%$e248204%_ _%$e248204%_ '(%#ref absent-value))))
                 _%keys248166%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp251615
                                                    (cons '%#let-values
                                                          (cons _%kwbind248190%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt248181%_ '())
                                                      (cons (let ((__tmp251616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs248169%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251616 _%stx248114%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp251617
                                                             (cons (let ((__tmp251618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main248165%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt248181%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs248168%_
                                                       _%xargs248208%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp251618 _%stx248114%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp251617 _%kwset248195%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp251615
                                               _%stx248114%_
                                               _%ctx248113%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g248144248154%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e248149248214%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g248144248154%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e248150248217%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g248144248154%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e248151248220%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g248144248154%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys248223%_ _%e248151248220%_)
                                   (_%e248152248225%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g248144248154%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main248228%_ _%e248152248225%_))
                              (_%K248148248211%_
                               _%main248228%_
                               _%keys248223%_))
                            (_%else248146248162%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx248113%_ _%stx248114%_)))))
               (_%e248131248233%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248127248136%_ '1 '#f '#f)))
               (_%e248132248236%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248127248136%_ '2 '#f '#f)))
               (_%e248133248239%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248127248136%_ '3 '#f '#f)))
               (_%table248242%_ _%e248133248239%_)
               (_%e248134248244%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self248127248136%_ '4 '#f '#f)))
               (_%dispatch248247%_ _%e248134248244%_))
          (_%K248130248230%_ _%dispatch248247%_ _%table248242%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx247725%_ _%args247726%_)
        (let _%lp247728%_ ((_%rest247730%_ _%args247726%_)
                           (_%pargs247731%_ '())
                           (_%kwargs247732%_ '()))
          (let* ((_%__stx251071251072%_ _%rest247730%_)
                 (_%g247738247790%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx251071251072%_)))))
            (let ((_%__kont251073251074%_
                   (lambda (_%g247740247969%_ _%g247741247970%_)
                     (_%lp247728%_
                      _%g247740247969%_
                      (cons _%g247741247970%_ _%pargs247731%_)
                      _%kwargs247732%_)))
                  (_%__kont251075251076%_
                   (lambda (_%g247755247915%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g247755247915%_
                                _%pargs247731%_))
                             (reverse _%kwargs247732%_))))
                  (_%__kont251077251078%_
                   (lambda (_%g247766247862%_
                            _%g247767247863%_
                            _%g247768247864%_)
                     (let ((_%kw247881%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g247768247864%_))))
                       (if (assq _%kw247881%_ _%kwargs247732%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx247725%_
                              _%kw247881%_))
                           (_%lp247728%_
                            _%g247766247862%_
                            _%pargs247731%_
                            (cons (cons _%kw247881%_ _%g247767247863%_)
                                  _%kwargs247732%_))))))
                  (_%__kont251079251080%_
                   (lambda (_%g247781247810%_ _%g247782247811%_)
                     (_%lp247728%_
                      _%g247781247810%_
                      (cons _%g247782247811%_ _%pargs247731%_)
                      _%kwargs247732%_)))
                  (_%__kont251081251082%_
                   (lambda ()
                     (values (reverse _%pargs247731%_)
                             (reverse _%kwargs247732%_)))))
              (let ((_%__match251178251179%_
                     (lambda (_%e247769247830%_
                              _%hd247770247833%_
                              _%tl247771247835%_
                              _%e247772247838%_
                              _%hd247773247841%_
                              _%tl247774247843%_
                              _%e247775247846%_
                              _%hd247776247849%_
                              _%tl247777247851%_
                              _%e247778247854%_
                              _%hd247779247857%_
                              _%tl247780247859%_)
                       (let ((_%g247766247862%_ _%tl247780247859%_)
                             (_%g247767247863%_ _%hd247779247857%_)
                             (_%g247768247864%_ _%hd247776247849%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g247768247864%_))
                             (_%__kont251077251078%_
                              _%g247766247862%_
                              _%g247767247863%_
                              _%g247768247864%_)
                             (_%__kont251079251080%_
                              _%tl247771247835%_
                              _%hd247770247833%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx251071251072%_))
                    (let ((_%e247742247934%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx251071251072%_))))
                      (let ((_%tl247744247939%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e247742247934%_)))
                            (_%hd247743247937%_
                             (let ()
                               (declare (not safe))
                               (##car _%e247742247934%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd247743247937%_))
                            (let ((_%e247745247942%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd247743247937%_))))
                              (let ((_%tl247747247947%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e247745247942%_)))
                                    (_%hd247746247945%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e247745247942%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd247746247945%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd247746247945%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl247747247947%_))
                                            (let ((_%e247748247950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl247747247947%_))))
                                              (let ((_%tl247750247955%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e247748247950%_)))
                                                    (_%hd247749247953%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e247748247950%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd247749247953%_))
                                                    (let ((_%e247751247958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd247749247953%_))))
                                                      (if (equal? _%e247751247958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl247750247955%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl247744247939%_))
                          (let ((_%e247752247961%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl247744247939%_))))
                            (let ((_%tl247754247966%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e247752247961%_)))
                                  (_%hd247753247964%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e247752247961%_))))
                              (_%__kont251073251074%_
                               _%tl247754247966%_
                               _%hd247753247964%_)))
                          (_%__kont251079251080%_
                           _%tl247744247939%_
                           _%hd247743247937%_))
                      (_%__kont251079251080%_
                       _%tl247744247939%_
                       _%hd247743247937%_))
                  (if (equal? _%e247751247958%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl247750247955%_))
                          (_%__kont251075251076%_ _%tl247744247939%_)
                          (_%__kont251079251080%_
                           _%tl247744247939%_
                           _%hd247743247937%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl247750247955%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl247744247939%_))
                              (let ((_%e247778247854%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl247744247939%_))))
                                (let ((_%tl247780247859%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e247778247854%_)))
                                      (_%hd247779247857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e247778247854%_))))
                                  (_%__match251178251179%_
                                   _%e247742247934%_
                                   _%hd247743247937%_
                                   _%tl247744247939%_
                                   _%e247745247942%_
                                   _%hd247746247945%_
                                   _%tl247747247947%_
                                   _%e247748247950%_
                                   _%hd247749247953%_
                                   _%tl247750247955%_
                                   _%e247778247854%_
                                   _%hd247779247857%_
                                   _%tl247780247859%_)))
                              (_%__kont251079251080%_
                               _%tl247744247939%_
                               _%hd247743247937%_))
                          (_%__kont251079251080%_
                           _%tl247744247939%_
                           _%hd247743247937%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl247750247955%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl247744247939%_))
                                                            (let ((_%e247778247854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl247744247939%_))))
                      (let ((_%tl247780247859%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e247778247854%_)))
                            (_%hd247779247857%_
                             (let ()
                               (declare (not safe))
                               (##car _%e247778247854%_))))
                        (_%__match251178251179%_
                         _%e247742247934%_
                         _%hd247743247937%_
                         _%tl247744247939%_
                         _%e247745247942%_
                         _%hd247746247945%_
                         _%tl247747247947%_
                         _%e247748247950%_
                         _%hd247749247953%_
                         _%tl247750247955%_
                         _%e247778247854%_
                         _%hd247779247857%_
                         _%tl247780247859%_)))
                    (_%__kont251079251080%_
                     _%tl247744247939%_
                     _%hd247743247937%_))
                (_%__kont251079251080%_
                 _%tl247744247939%_
                 _%hd247743247937%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont251079251080%_
                                             _%tl247744247939%_
                                             _%hd247743247937%_))
                                        (_%__kont251079251080%_
                                         _%tl247744247939%_
                                         _%hd247743247937%_))
                                    (_%__kont251079251080%_
                                     _%tl247744247939%_
                                     _%hd247743247937%_))))
                            (_%__kont251079251080%_
                             _%tl247744247939%_
                             _%hd247743247937%_))))
                    (_%__kont251081251082%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self247709%_ _%ctx247710%_ _%stx247711%_ _%args247712%_)
        (let ((_%self247715%_ _%self247709%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx247710%_ _%stx247711%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self247399%_ _%stx247400%_)
        (let* ((_%__stx251187251188%_ _%stx247400%_)
               (_%g247403247443%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx251187251188%_)))))
          (let ((_%__kont251189251190%_
                 (lambda (_%g247405247547%_ _%g247406247548%_)
                   (let ((_%$e247575%_
                          (member 'return:
                                  (let ((__tmp251619
                                         (lambda (_%g247567247570%_
                                                  _%g247568247572%_)
                                           (cons _%g247567247570%_
                                                 _%g247568247572%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp251619
                                     '()
                                     _%g247406247548%_))
                                  gx#stx-eq?)))
                     (if _%$e247575%_
                         ((lambda (_%tail247578%_)
                            (let ((_%type247580%_
                                   (let ((__tmp251620
                                          (let ((__tmp251621
                                                 (cadr _%tail247578%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp251621))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx247400%_
                                      __tmp251620))))
                              (gxc#check-return-type!
                               _%stx247400%_
                               _%g247405247547%_
                               _%type247580%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self247399%_
                                 _%g247405247547%_))))
                          _%$e247575%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self247399%_
                            _%g247405247547%_))))))
                (_%__kont251193251194%_
                 (lambda (_%g247428247472%_ _%g247429247473%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self247399%_ _%g247428247472%_)))))
            (let ((_%__match251224251225%_
                   (lambda (_%e247407247493%_
                            _%hd247408247496%_
                            _%tl247409247498%_
                            _%e247410247501%_
                            _%hd247411247504%_
                            _%tl247412247506%_
                            _%e247413247509%_
                            _%hd247414247512%_
                            _%tl247415247514%_
                            _%__splice251191251192%_
                            _%target247416247517%_
                            _%tl247418247519%_)
                     (letrec ((_%loop247419247522%_
                               (lambda (_%hd247417247525%_
                                        _%signature247423247527%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd247417247525%_))
                                     (let ((_%e247420247529%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd247417247525%_))))
                                       (let ((_%lp-tl247422247534%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e247420247529%_)))
                                             (_%lp-hd247421247532%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e247420247529%_))))
                                         (_%loop247419247522%_
                                          _%lp-tl247422247534%_
                                          (cons _%lp-hd247421247532%_
                                                _%signature247423247527%_))))
                                     (let ((_%signature247424247537%_
                                            (reverse _%signature247423247527%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl247412247506%_))
                                           (let ((_%e247425247539%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl247412247506%_))))
                                             (let ((_%tl247427247544%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e247425247539%_)))
                                                   (_%hd247426247542%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e247425247539%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl247427247544%_))
                                                   (_%__kont251189251190%_
                                                    _%hd247426247542%_
                                                    _%signature247424247537%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g247403247443%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g247403247443%_))))))))
                       (_%loop247419247522%_ _%target247416247517%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx251187251188%_))
                  (let ((_%e247407247493%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx251187251188%_))))
                    (let ((_%tl247409247498%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247407247493%_)))
                          (_%hd247408247496%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247407247493%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl247409247498%_))
                          (let ((_%e247410247501%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl247409247498%_))))
                            (let ((_%tl247412247506%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e247410247501%_)))
                                  (_%hd247411247504%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e247410247501%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd247411247504%_))
                                  (let ((_%e247413247509%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd247411247504%_))))
                                    (let ((_%tl247415247514%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e247413247509%_)))
                                          (_%hd247414247512%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e247413247509%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd247414247512%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd247414247512%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl247415247514%_))
                                                  (let ((_%__splice251191251192%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl247415247514%_
                                                            '0))))
                                                    (let ((_%tl247418247519%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice251191251192%_
                                                              '1)))
                                                          (_%target247416247517%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice251191251192%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl247418247519%_))
                                                          (_%__match251224251225%_
                                                           _%e247407247493%_
                                                           _%hd247408247496%_
                                                           _%tl247409247498%_
                                                           _%e247410247501%_
                                                           _%hd247411247504%_
                                                           _%tl247412247506%_
                                                           _%e247413247509%_
                                                           _%hd247414247512%_
                                                           _%tl247415247514%_
                                                           _%__splice251191251192%_
                                                           _%target247416247517%_
                                                           _%tl247418247519%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl247412247506%_))
                      (let ((_%e247436247464%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl247412247506%_))))
                        (let ((_%tl247438247469%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e247436247464%_)))
                              (_%hd247437247467%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e247436247464%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl247438247469%_))
                              (_%__kont251193251194%_
                               _%hd247437247467%_
                               _%hd247411247504%_)
                              (let ()
                                (declare (not safe))
                                (_%g247403247443%_)))))
                      (let () (declare (not safe)) (_%g247403247443%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl247412247506%_))
                                                      (let ((_%e247436247464%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl247412247506%_))))
                (let ((_%tl247438247469%_
                       (let () (declare (not safe)) (##cdr _%e247436247464%_)))
                      (_%hd247437247467%_
                       (let ()
                         (declare (not safe))
                         (##car _%e247436247464%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl247438247469%_))
                      (_%__kont251193251194%_
                       _%hd247437247467%_
                       _%hd247411247504%_)
                      (let () (declare (not safe)) (_%g247403247443%_)))))
              (let () (declare (not safe)) (_%g247403247443%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl247412247506%_))
                                                  (let ((_%e247436247464%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl247412247506%_))))
                                                    (let ((_%tl247438247469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e247436247464%_)))
                                                          (_%hd247437247467%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e247436247464%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl247438247469%_))
                                                          (_%__kont251193251194%_
                                                           _%hd247437247467%_
                                                           _%hd247411247504%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g247403247443%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g247403247443%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl247412247506%_))
                                              (let ((_%e247436247464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl247412247506%_))))
                                                (let ((_%tl247438247469%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e247436247464%_)))
                                                      (_%hd247437247467%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e247436247464%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl247438247469%_))
                                                      (_%__kont251193251194%_
                                                       _%hd247437247467%_
                                                       _%hd247411247504%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g247403247443%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g247403247443%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl247412247506%_))
                                      (let ((_%e247436247464%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl247412247506%_))))
                                        (let ((_%tl247438247469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e247436247464%_)))
                                              (_%hd247437247467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e247436247464%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl247438247469%_))
                                              (_%__kont251193251194%_
                                               _%hd247437247467%_
                                               _%hd247411247504%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g247403247443%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g247403247443%_))))))
                          (let () (declare (not safe)) (_%g247403247443%_)))))
                  (let () (declare (not safe)) (_%g247403247443%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx247374%_ _%expr247375%_ _%type247376%_)
        (let ((_%$e247378%_ (not _%type247376%_)))
          (if _%$e247378%_
              _%$e247378%_
              (let ((_%$e247381%_
                     (eq? (##structure-ref _%type247376%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e247381%_
                    _%$e247381%_
                    (let ((_%$e247384%_
                           (eq? (##structure-ref
                                 _%type247376%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e247384%_
                          _%$e247384%_
                          (let ((_%expr-type247388%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr247375%_))))
                            (if (not _%expr-type247388%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx247374%_
                                   _%type247376%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type247388%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx247374%_
                                       _%type247376%_
                                       _%expr-type247388%_))
                                    (let ((_%$e247392%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type247388%_
                                              'gxc#!abort::t))))
                                      (if _%$e247392%_
                                          _%$e247392%_
                                          (let ((_%$e247395%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type247388%_
                                                    _%type247376%_))))
                                            (if _%$e247395%_
                                                _%$e247395%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx247374%_
                                                   _%type247376%_
                                                   _%expr-type247388%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self246800%_ _%stx246801%_)
        (let* ((_%__stx251269251270%_ _%stx246801%_)
               (_%g246806246916%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx251269251270%_)))))
          (let ((_%__kont251271251272%_
                 (lambda (_%g246808247348%_
                          _%g246809247349%_
                          _%g246810247350%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g246810247350%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self246800%_ _%g246809247349%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self246800%_
                          _%g246808247348%_)))))
                (_%__kont251273251274%_
                 (lambda (_%g246829247174%_
                          _%g246830247175%_
                          _%g246831247176%_
                          _%g246832247177%_)
                   (let ((_%$e247209%_
                          (let ((__tmp251622
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g246832247177%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp251622))))
                     (if _%$e247209%_
                         ((lambda (_%pred-type247212%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type247212%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type247212%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test247217%_
                                        (let ((__tmp251623
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g246832247177%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g246831247176%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp251623
                                           _%stx246801%_
                                           _%self246800%_)))
                                       (_%K247221%_
                                        (let ((__tmp251624
                                               (lambda ()
                                                 (let ((__tmp251627
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self246800%_
                                                             _%g246830247175%_))))
                                                       (__tmp251625
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g246831247176%_))
                            (let ((__tmp251626
                                   (##structure-ref
                                    _%pred-type247212%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx246801%_
                               __tmp251626)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp251627
                                                    gxc#current-compile-path-type
                                                    __tmp251625)))))
                                          (declare (not safe))
                                          (__make-promise __tmp251624)))
                                       (_%E247224%_
                                        (let ((__tmp251628
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self246800%_
                                                    _%g246829247174%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp251628)))
                                       (_%__stx251247251248%_ _%test247217%_)
                                       (_%g247228247242%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx251247251248%_)))))
                                  (let ((_%__kont251249251250%_
                                         (lambda (_%g247230247270%_
                                                  _%g247231247271%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g247230247270%_))
                                               (force _%K247221%_)
                                               (force _%E247224%_))))
                                        (_%__kont251251251252%_
                                         (lambda ()
                                           (let ((__tmp251629
                                                  (cons '%#if
                                                        (cons _%test247217%_
                                                              (cons (force _%K247221%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E247224%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp251629
                                              _%stx246801%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx251247251248%_))
                                        (let ((_%e247232247254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx251247251248%_))))
                                          (let ((_%tl247234247259%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e247232247254%_)))
                                                (_%hd247233247257%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e247232247254%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl247234247259%_))
                                                (let ((_%e247235247262%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl247234247259%_))))
                                                  (let ((_%tl247237247267%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e247235247262%_)))
                                                        (_%hd247236247265%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e247235247262%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl247237247267%_))
                                                        (_%__kont251249251250%_
                                                         _%hd247236247265%_
                                                         _%hd247233247257%_)
                                                        (_%__kont251251251252%_))))
                                                (_%__kont251251251252%_))))
                                        (_%__kont251251251252%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self246800%_
                                   _%stx246801%_))))
                          _%$e247209%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self246800%_
                            _%stx246801%_))))))
                (_%__kont251275251276%_
                 (lambda (_%g246866247050%_
                          _%g246867247051%_
                          _%g246868247052%_
                          _%g246869247053%_)
                   (gxc#optimize-if%
                    _%self246800%_
                    (let ((__tmp251630
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g246868247052%_
                                       (cons _%g246866247050%_
                                             (cons _%g246867247051%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp251630 _%stx246801%_)))))
                (_%__kont251277251278%_
                 (lambda (_%g246897246953%_
                          _%g246898246954%_
                          _%g246899246955%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self246800%_ _%stx246801%_)))))
            (let ((_%__match251476251477%_
                   (lambda (_%e246870246978%_
                            _%hd246871246981%_
                            _%tl246872246983%_
                            _%e246873246986%_
                            _%hd246874246989%_
                            _%tl246875246991%_
                            _%e246876246994%_
                            _%hd246877246997%_
                            _%tl246878246999%_
                            _%e246879247002%_
                            _%hd246880247005%_
                            _%tl246881247007%_
                            _%e246882247010%_
                            _%hd246883247013%_
                            _%tl246884247015%_
                            _%e246885247018%_
                            _%hd246886247021%_
                            _%tl246887247023%_
                            _%e246888247026%_
                            _%hd246889247029%_
                            _%tl246890247031%_
                            _%e246891247034%_
                            _%hd246892247037%_
                            _%tl246893247039%_
                            _%e246894247042%_
                            _%hd246895247045%_
                            _%tl246896247047%_)
                     (let ((_%g246866247050%_ _%hd246895247045%_)
                           (_%g246867247051%_ _%hd246892247037%_)
                           (_%g246868247052%_ _%hd246889247029%_)
                           (_%g246869247053%_ _%hd246886247021%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g246869247053%_ 'not))
                           (_%__kont251275251276%_
                            _%g246866247050%_
                            _%g246867247051%_
                            _%g246868247052%_
                            _%g246869247053%_)
                           (_%__kont251277251278%_
                            _%hd246895247045%_
                            _%hd246892247037%_
                            _%hd246874246989%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx251269251270%_))
                  (let ((_%e246811247300%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx251269251270%_))))
                    (let ((_%tl246813247305%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246811247300%_)))
                          (_%hd246812247303%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246811247300%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl246813247305%_))
                          (let ((_%e246814247308%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl246813247305%_))))
                            (let ((_%tl246816247313%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e246814247308%_)))
                                  (_%hd246815247311%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e246814247308%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd246815247311%_))
                                  (let ((_%e246817247316%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd246815247311%_))))
                                    (let ((_%tl246819247321%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246817247316%_)))
                                          (_%hd246818247319%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246817247316%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd246818247319%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd246818247319%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246819247321%_))
                                                  (let ((_%e246820247324%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246819247321%_))))
                                                    (let ((_%tl246822247329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246820247324%_)))
                                                          (_%hd246821247327%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246820247324%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl246822247329%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl246816247313%_))
                      (let ((_%e246823247332%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl246816247313%_))))
                        (let ((_%tl246825247337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246823247332%_)))
                              (_%hd246824247335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246823247332%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl246825247337%_))
                              (let ((_%e246826247340%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl246825247337%_))))
                                (let ((_%tl246828247345%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e246826247340%_)))
                                      (_%hd246827247343%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e246826247340%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl246828247345%_))
                                      (_%__kont251271251272%_
                                       _%hd246827247343%_
                                       _%hd246824247335%_
                                       _%hd246821247327%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g246806246916%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g246806246916%_)))))
                      (let () (declare (not safe)) (_%g246806246916%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl246816247313%_))
                      (let ((_%e246906246937%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl246816247313%_))))
                        (let ((_%tl246908246942%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246906246937%_)))
                              (_%hd246907246940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246906246937%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl246908246942%_))
                              (let ((_%e246909246945%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl246908246942%_))))
                                (let ((_%tl246911246950%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e246909246945%_)))
                                      (_%hd246910246948%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e246909246945%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl246911246950%_))
                                      (_%__kont251277251278%_
                                       _%hd246910246948%_
                                       _%hd246907246940%_
                                       _%hd246815247311%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g246806246916%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g246806246916%_)))))
                      (let () (declare (not safe)) (_%g246806246916%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl246816247313%_))
                                                      (let ((_%e246906246937%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl246816247313%_))))
                (let ((_%tl246908246942%_
                       (let () (declare (not safe)) (##cdr _%e246906246937%_)))
                      (_%hd246907246940%_
                       (let ()
                         (declare (not safe))
                         (##car _%e246906246937%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl246908246942%_))
                      (let ((_%e246909246945%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl246908246942%_))))
                        (let ((_%tl246911246950%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246909246945%_)))
                              (_%hd246910246948%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246909246945%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl246911246950%_))
                              (_%__kont251277251278%_
                               _%hd246910246948%_
                               _%hd246907246940%_
                               _%hd246815247311%_)
                              (let ()
                                (declare (not safe))
                                (_%g246806246916%_)))))
                      (let () (declare (not safe)) (_%g246806246916%_)))))
              (let () (declare (not safe)) (_%g246806246916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd246818247319%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl246819247321%_))
                                                      (let ((_%e246842247110%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl246819247321%_))))
                (let ((_%tl246844247115%_
                       (let () (declare (not safe)) (##cdr _%e246842247110%_)))
                      (_%hd246843247113%_
                       (let ()
                         (declare (not safe))
                         (##car _%e246842247110%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd246843247113%_))
                      (let ((_%e246845247118%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd246843247113%_))))
                        (let ((_%tl246847247123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246845247118%_)))
                              (_%hd246846247121%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246845247118%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd246846247121%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd246846247121%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl246847247123%_))
                                      (let ((_%e246848247126%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl246847247123%_))))
                                        (let ((_%tl246850247131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e246848247126%_)))
                                              (_%hd246849247129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e246848247126%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl246850247131%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246844247115%_))
                                                  (let ((_%e246851247134%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246844247115%_))))
                                                    (let ((_%tl246853247139%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246851247134%_)))
                                                          (_%hd246852247137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246851247134%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd246852247137%_))
                                                          (let ((_%e246854247142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd246852247137%_))))
                    (let ((_%tl246856247147%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246854247142%_)))
                          (_%hd246855247145%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246854247142%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd246855247145%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd246855247145%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246856247147%_))
                                  (let ((_%e246857247150%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246856247147%_))))
                                    (let ((_%tl246859247155%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246857247150%_)))
                                          (_%hd246858247153%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246857247150%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl246859247155%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl246853247139%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246816247313%_))
                                                  (let ((_%e246860247158%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246816247313%_))))
                                                    (let ((_%tl246862247163%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246860247158%_)))
                                                          (_%hd246861247161%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246860247158%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl246862247163%_))
                                                          (let ((_%e246863247166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246862247163%_))))
                    (let ((_%tl246865247171%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246863247166%_)))
                          (_%hd246864247169%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246863247166%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl246865247171%_))
                          (_%__kont251273251274%_
                           _%hd246864247169%_
                           _%hd246861247161%_
                           _%hd246858247153%_
                           _%hd246849247129%_)
                          (let () (declare (not safe)) (_%g246806246916%_)))))
                  (let () (declare (not safe)) (_%g246806246916%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246806246916%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246816247313%_))
                                                  (let ((_%e246906246937%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246816247313%_))))
                                                    (let ((_%tl246908246942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246906246937%_)))
                                                          (_%hd246907246940%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246906246937%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl246908246942%_))
                                                          (let ((_%e246909246945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246908246942%_))))
                    (let ((_%tl246911246950%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246909246945%_)))
                          (_%hd246910246948%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246909246945%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl246911246950%_))
                          (_%__kont251277251278%_
                           _%hd246910246948%_
                           _%hd246907246940%_
                           _%hd246815247311%_)
                          (let () (declare (not safe)) (_%g246806246916%_)))))
                  (let () (declare (not safe)) (_%g246806246916%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246806246916%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl246853247139%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246816247313%_))
                                                  (let ((_%e246891247034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246816247313%_))))
                                                    (let ((_%tl246893247039%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246891247034%_)))
                                                          (_%hd246892247037%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246891247034%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl246893247039%_))
                                                          (let ((_%e246894247042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246893247039%_))))
                    (let ((_%tl246896247047%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246894247042%_)))
                          (_%hd246895247045%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246894247042%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl246896247047%_))
                          (_%__match251476251477%_
                           _%e246811247300%_
                           _%hd246812247303%_
                           _%tl246813247305%_
                           _%e246814247308%_
                           _%hd246815247311%_
                           _%tl246816247313%_
                           _%e246817247316%_
                           _%hd246818247319%_
                           _%tl246819247321%_
                           _%e246842247110%_
                           _%hd246843247113%_
                           _%tl246844247115%_
                           _%e246845247118%_
                           _%hd246846247121%_
                           _%tl246847247123%_
                           _%e246848247126%_
                           _%hd246849247129%_
                           _%tl246850247131%_
                           _%e246851247134%_
                           _%hd246852247137%_
                           _%tl246853247139%_
                           _%e246891247034%_
                           _%hd246892247037%_
                           _%tl246893247039%_
                           _%e246894247042%_
                           _%hd246895247045%_
                           _%tl246896247047%_)
                          (let () (declare (not safe)) (_%g246806246916%_)))))
                  (let () (declare (not safe)) (_%g246806246916%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246806246916%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246816247313%_))
                                                  (let ((_%e246906246937%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246816247313%_))))
                                                    (let ((_%tl246908246942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246906246937%_)))
                                                          (_%hd246907246940%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246906246937%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl246908246942%_))
                                                          (let ((_%e246909246945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246908246942%_))))
                    (let ((_%tl246911246950%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246909246945%_)))
                          (_%hd246910246948%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246909246945%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl246911246950%_))
                          (_%__kont251277251278%_
                           _%hd246910246948%_
                           _%hd246907246940%_
                           _%hd246815247311%_)
                          (let () (declare (not safe)) (_%g246806246916%_)))))
                  (let () (declare (not safe)) (_%g246806246916%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246806246916%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl246853247139%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246816247313%_))
                                          (let ((_%e246891247034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246816247313%_))))
                                            (let ((_%tl246893247039%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246891247034%_)))
                                                  (_%hd246892247037%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246891247034%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246893247039%_))
                                                  (let ((_%e246894247042%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246893247039%_))))
                                                    (let ((_%tl246896247047%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246894247042%_)))
                                                          (_%hd246895247045%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246894247042%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl246896247047%_))
                                                          (_%__match251476251477%_
                                                           _%e246811247300%_
                                                           _%hd246812247303%_
                                                           _%tl246813247305%_
                                                           _%e246814247308%_
                                                           _%hd246815247311%_
                                                           _%tl246816247313%_
                                                           _%e246817247316%_
                                                           _%hd246818247319%_
                                                           _%tl246819247321%_
                                                           _%e246842247110%_
                                                           _%hd246843247113%_
                                                           _%tl246844247115%_
                                                           _%e246845247118%_
                                                           _%hd246846247121%_
                                                           _%tl246847247123%_
                                                           _%e246848247126%_
                                                           _%hd246849247129%_
                                                           _%tl246850247131%_
                                                           _%e246851247134%_
                                                           _%hd246852247137%_
                                                           _%tl246853247139%_
                                                           _%e246891247034%_
                                                           _%hd246892247037%_
                                                           _%tl246893247039%_
                                                           _%e246894247042%_
                                                           _%hd246895247045%_
                                                           _%tl246896247047%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g246806246916%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246806246916%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246806246916%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246816247313%_))
                                          (let ((_%e246906246937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246816247313%_))))
                                            (let ((_%tl246908246942%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246906246937%_)))
                                                  (_%hd246907246940%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246906246937%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246908246942%_))
                                                  (let ((_%e246909246945%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246908246942%_))))
                                                    (let ((_%tl246911246950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246909246945%_)))
                                                          (_%hd246910246948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246909246945%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl246911246950%_))
                                                          (_%__kont251277251278%_
                                                           _%hd246910246948%_
                                                           _%hd246907246940%_
                                                           _%hd246815247311%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g246806246916%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246806246916%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246806246916%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl246853247139%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl246816247313%_))
                                      (let ((_%e246891247034%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl246816247313%_))))
                                        (let ((_%tl246893247039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e246891247034%_)))
                                              (_%hd246892247037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e246891247034%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl246893247039%_))
                                              (let ((_%e246894247042%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl246893247039%_))))
                                                (let ((_%tl246896247047%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e246894247042%_)))
                                                      (_%hd246895247045%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e246894247042%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl246896247047%_))
                                                      (_%__match251476251477%_
                                                       _%e246811247300%_
                                                       _%hd246812247303%_
                                                       _%tl246813247305%_
                                                       _%e246814247308%_
                                                       _%hd246815247311%_
                                                       _%tl246816247313%_
                                                       _%e246817247316%_
                                                       _%hd246818247319%_
                                                       _%tl246819247321%_
                                                       _%e246842247110%_
                                                       _%hd246843247113%_
                                                       _%tl246844247115%_
                                                       _%e246845247118%_
                                                       _%hd246846247121%_
                                                       _%tl246847247123%_
                                                       _%e246848247126%_
                                                       _%hd246849247129%_
                                                       _%tl246850247131%_
                                                       _%e246851247134%_
                                                       _%hd246852247137%_
                                                       _%tl246853247139%_
                                                       _%e246891247034%_
                                                       _%hd246892247037%_
                                                       _%tl246893247039%_
                                                       _%e246894247042%_
                                                       _%hd246895247045%_
                                                       _%tl246896247047%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g246806246916%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g246806246916%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g246806246916%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl246816247313%_))
                                      (let ((_%e246906246937%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl246816247313%_))))
                                        (let ((_%tl246908246942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e246906246937%_)))
                                              (_%hd246907246940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e246906246937%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl246908246942%_))
                                              (let ((_%e246909246945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl246908246942%_))))
                                                (let ((_%tl246911246950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e246909246945%_)))
                                                      (_%hd246910246948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e246909246945%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl246911246950%_))
                                                      (_%__kont251277251278%_
                                                       _%hd246910246948%_
                                                       _%hd246907246940%_
                                                       _%hd246815247311%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g246806246916%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g246806246916%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g246806246916%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl246853247139%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246816247313%_))
                                  (let ((_%e246891247034%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246816247313%_))))
                                    (let ((_%tl246893247039%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246891247034%_)))
                                          (_%hd246892247037%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246891247034%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246893247039%_))
                                          (let ((_%e246894247042%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246893247039%_))))
                                            (let ((_%tl246896247047%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246894247042%_)))
                                                  (_%hd246895247045%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246894247042%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl246896247047%_))
                                                  (_%__match251476251477%_
                                                   _%e246811247300%_
                                                   _%hd246812247303%_
                                                   _%tl246813247305%_
                                                   _%e246814247308%_
                                                   _%hd246815247311%_
                                                   _%tl246816247313%_
                                                   _%e246817247316%_
                                                   _%hd246818247319%_
                                                   _%tl246819247321%_
                                                   _%e246842247110%_
                                                   _%hd246843247113%_
                                                   _%tl246844247115%_
                                                   _%e246845247118%_
                                                   _%hd246846247121%_
                                                   _%tl246847247123%_
                                                   _%e246848247126%_
                                                   _%hd246849247129%_
                                                   _%tl246850247131%_
                                                   _%e246851247134%_
                                                   _%hd246852247137%_
                                                   _%tl246853247139%_
                                                   _%e246891247034%_
                                                   _%hd246892247037%_
                                                   _%tl246893247039%_
                                                   _%e246894247042%_
                                                   _%hd246895247045%_
                                                   _%tl246896247047%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246806246916%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246806246916%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246806246916%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246816247313%_))
                                  (let ((_%e246906246937%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246816247313%_))))
                                    (let ((_%tl246908246942%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246906246937%_)))
                                          (_%hd246907246940%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246906246937%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246908246942%_))
                                          (let ((_%e246909246945%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246908246942%_))))
                                            (let ((_%tl246911246950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246909246945%_)))
                                                  (_%hd246910246948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246909246945%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl246911246950%_))
                                                  (_%__kont251277251278%_
                                                   _%hd246910246948%_
                                                   _%hd246907246940%_
                                                   _%hd246815247311%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246806246916%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246806246916%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246806246916%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl246853247139%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl246816247313%_))
                          (let ((_%e246891247034%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl246816247313%_))))
                            (let ((_%tl246893247039%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e246891247034%_)))
                                  (_%hd246892247037%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e246891247034%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246893247039%_))
                                  (let ((_%e246894247042%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246893247039%_))))
                                    (let ((_%tl246896247047%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246894247042%_)))
                                          (_%hd246895247045%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246894247042%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl246896247047%_))
                                          (_%__match251476251477%_
                                           _%e246811247300%_
                                           _%hd246812247303%_
                                           _%tl246813247305%_
                                           _%e246814247308%_
                                           _%hd246815247311%_
                                           _%tl246816247313%_
                                           _%e246817247316%_
                                           _%hd246818247319%_
                                           _%tl246819247321%_
                                           _%e246842247110%_
                                           _%hd246843247113%_
                                           _%tl246844247115%_
                                           _%e246845247118%_
                                           _%hd246846247121%_
                                           _%tl246847247123%_
                                           _%e246848247126%_
                                           _%hd246849247129%_
                                           _%tl246850247131%_
                                           _%e246851247134%_
                                           _%hd246852247137%_
                                           _%tl246853247139%_
                                           _%e246891247034%_
                                           _%hd246892247037%_
                                           _%tl246893247039%_
                                           _%e246894247042%_
                                           _%hd246895247045%_
                                           _%tl246896247047%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g246806246916%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246806246916%_)))))
                          (let () (declare (not safe)) (_%g246806246916%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl246816247313%_))
                          (let ((_%e246906246937%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl246816247313%_))))
                            (let ((_%tl246908246942%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e246906246937%_)))
                                  (_%hd246907246940%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e246906246937%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246908246942%_))
                                  (let ((_%e246909246945%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246908246942%_))))
                                    (let ((_%tl246911246950%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246909246945%_)))
                                          (_%hd246910246948%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246909246945%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl246911246950%_))
                                          (_%__kont251277251278%_
                                           _%hd246910246948%_
                                           _%hd246907246940%_
                                           _%hd246815247311%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g246806246916%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246806246916%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g246806246916%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl246816247313%_))
                                                      (let ((_%e246906246937%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl246816247313%_))))
                (let ((_%tl246908246942%_
                       (let () (declare (not safe)) (##cdr _%e246906246937%_)))
                      (_%hd246907246940%_
                       (let ()
                         (declare (not safe))
                         (##car _%e246906246937%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl246908246942%_))
                      (let ((_%e246909246945%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl246908246942%_))))
                        (let ((_%tl246911246950%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246909246945%_)))
                              (_%hd246910246948%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246909246945%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl246911246950%_))
                              (_%__kont251277251278%_
                               _%hd246910246948%_
                               _%hd246907246940%_
                               _%hd246815247311%_)
                              (let ()
                                (declare (not safe))
                                (_%g246806246916%_)))))
                      (let () (declare (not safe)) (_%g246806246916%_)))))
              (let () (declare (not safe)) (_%g246806246916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246816247313%_))
                                                  (let ((_%e246906246937%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246816247313%_))))
                                                    (let ((_%tl246908246942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246906246937%_)))
                                                          (_%hd246907246940%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246906246937%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl246908246942%_))
                                                          (let ((_%e246909246945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246908246942%_))))
                    (let ((_%tl246911246950%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246909246945%_)))
                          (_%hd246910246948%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246909246945%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl246911246950%_))
                          (_%__kont251277251278%_
                           _%hd246910246948%_
                           _%hd246907246940%_
                           _%hd246815247311%_)
                          (let () (declare (not safe)) (_%g246806246916%_)))))
                  (let () (declare (not safe)) (_%g246806246916%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246806246916%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246816247313%_))
                                          (let ((_%e246906246937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246816247313%_))))
                                            (let ((_%tl246908246942%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246906246937%_)))
                                                  (_%hd246907246940%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246906246937%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl246908246942%_))
                                                  (let ((_%e246909246945%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl246908246942%_))))
                                                    (let ((_%tl246911246950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e246909246945%_)))
                                                          (_%hd246910246948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e246909246945%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl246911246950%_))
                                                          (_%__kont251277251278%_
                                                           _%hd246910246948%_
                                                           _%hd246907246940%_
                                                           _%hd246815247311%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g246806246916%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246806246916%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246806246916%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl246816247313%_))
                                      (let ((_%e246906246937%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl246816247313%_))))
                                        (let ((_%tl246908246942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e246906246937%_)))
                                              (_%hd246907246940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e246906246937%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl246908246942%_))
                                              (let ((_%e246909246945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl246908246942%_))))
                                                (let ((_%tl246911246950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e246909246945%_)))
                                                      (_%hd246910246948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e246909246945%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl246911246950%_))
                                                      (_%__kont251277251278%_
                                                       _%hd246910246948%_
                                                       _%hd246907246940%_
                                                       _%hd246815247311%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g246806246916%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g246806246916%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g246806246916%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246816247313%_))
                                  (let ((_%e246906246937%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246816247313%_))))
                                    (let ((_%tl246908246942%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246906246937%_)))
                                          (_%hd246907246940%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246906246937%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl246908246942%_))
                                          (let ((_%e246909246945%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl246908246942%_))))
                                            (let ((_%tl246911246950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e246909246945%_)))
                                                  (_%hd246910246948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e246909246945%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl246911246950%_))
                                                  (_%__kont251277251278%_
                                                   _%hd246910246948%_
                                                   _%hd246907246940%_
                                                   _%hd246815247311%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g246806246916%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g246806246916%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246806246916%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl246816247313%_))
                          (let ((_%e246906246937%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl246816247313%_))))
                            (let ((_%tl246908246942%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e246906246937%_)))
                                  (_%hd246907246940%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e246906246937%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl246908246942%_))
                                  (let ((_%e246909246945%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl246908246942%_))))
                                    (let ((_%tl246911246950%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e246909246945%_)))
                                          (_%hd246910246948%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e246909246945%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl246911246950%_))
                                          (_%__kont251277251278%_
                                           _%hd246910246948%_
                                           _%hd246907246940%_
                                           _%hd246815247311%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g246806246916%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g246806246916%_)))))
                          (let () (declare (not safe)) (_%g246806246916%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl246816247313%_))
                  (let ((_%e246906246937%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl246816247313%_))))
                    (let ((_%tl246908246942%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e246906246937%_)))
                          (_%hd246907246940%_
                           (let ()
                             (declare (not safe))
                             (##car _%e246906246937%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl246908246942%_))
                          (let ((_%e246909246945%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl246908246942%_))))
                            (let ((_%tl246911246950%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e246909246945%_)))
                                  (_%hd246910246948%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e246909246945%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl246911246950%_))
                                  (_%__kont251277251278%_
                                   _%hd246910246948%_
                                   _%hd246907246940%_
                                   _%hd246815247311%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g246806246916%_)))))
                          (let () (declare (not safe)) (_%g246806246916%_)))))
                  (let () (declare (not safe)) (_%g246806246916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl246816247313%_))
                                                      (let ((_%e246906246937%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl246816247313%_))))
                (let ((_%tl246908246942%_
                       (let () (declare (not safe)) (##cdr _%e246906246937%_)))
                      (_%hd246907246940%_
                       (let ()
                         (declare (not safe))
                         (##car _%e246906246937%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl246908246942%_))
                      (let ((_%e246909246945%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl246908246942%_))))
                        (let ((_%tl246911246950%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e246909246945%_)))
                              (_%hd246910246948%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e246909246945%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl246911246950%_))
                              (_%__kont251277251278%_
                               _%hd246910246948%_
                               _%hd246907246940%_
                               _%hd246815247311%_)
                              (let ()
                                (declare (not safe))
                                (_%g246806246916%_)))))
                      (let () (declare (not safe)) (_%g246806246916%_)))))
              (let () (declare (not safe)) (_%g246806246916%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl246816247313%_))
                                              (let ((_%e246906246937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl246816247313%_))))
                                                (let ((_%tl246908246942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e246906246937%_)))
                                                      (_%hd246907246940%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e246906246937%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl246908246942%_))
                                                      (let ((_%e246909246945%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl246908246942%_))))
                (let ((_%tl246911246950%_
                       (let () (declare (not safe)) (##cdr _%e246909246945%_)))
                      (_%hd246910246948%_
                       (let ()
                         (declare (not safe))
                         (##car _%e246909246945%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl246911246950%_))
                      (_%__kont251277251278%_
                       _%hd246910246948%_
                       _%hd246907246940%_
                       _%hd246815247311%_)
                      (let () (declare (not safe)) (_%g246806246916%_)))))
              (let () (declare (not safe)) (_%g246806246916%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g246806246916%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl246816247313%_))
                                      (let ((_%e246906246937%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl246816247313%_))))
                                        (let ((_%tl246908246942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e246906246937%_)))
                                              (_%hd246907246940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e246906246937%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl246908246942%_))
                                              (let ((_%e246909246945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl246908246942%_))))
                                                (let ((_%tl246911246950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e246909246945%_)))
                                                      (_%hd246910246948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e246909246945%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl246911246950%_))
                                                      (_%__kont251277251278%_
                                                       _%hd246910246948%_
                                                       _%hd246907246940%_
                                                       _%hd246815247311%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g246806246916%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g246806246916%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g246806246916%_))))))
                          (let () (declare (not safe)) (_%g246806246916%_)))))
                  (let () (declare (not safe)) (_%g246806246916%_))))))))))
