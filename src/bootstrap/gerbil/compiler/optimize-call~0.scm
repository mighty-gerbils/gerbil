(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1713000284)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp196710 (list gxc#::basic-xform::t))
            (__tmp196709 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp196710
         '()
         __tmp196709
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args195987%_
        (apply make-instance gxc#::optimize-call::t _%$args195987%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp196711
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
        (__make-promise __tmp196711)))
    (define gxc#apply-optimize-call
      (lambda (_%stx195979%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self195982%_
                (let ((__obj196701
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj196701))
               (__tmp196712
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self195982%_ _%stx195979%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp196712
           gxc#current-compile-method
           _%self195982%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp196714 (list gxc#::void::t))
            (__tmp196713 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp196714
         '()
         __tmp196713
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args195976%_
        (apply make-instance gxc#::check-return-type::t _%$args195976%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp196715
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
        (__make-promise __tmp196715)))
    (define gxc#apply-check-return-type
      (lambda (_%stx195968%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self195971%_
                (let ((__obj196703
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj196703))
               (__tmp196716
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self195971%_ _%stx195968%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp196716
           gxc#current-compile-method
           _%self195971%_))))
    (define gxc#optimize-call%
      (lambda (_%self195569%_ _%stx195570%_)
        (let* ((_%__stx196056196057%_ _%stx195570%_)
               (_%g195573195619%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx196056196057%_)))))
          (let ((_%__kont196058196059%_
                 (lambda (_%L195762%_ _%L195763%_)
                   (let* ((_%rator-id195783%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L195763%_)))
                          (_%rator-type195785%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id195783%_))))
                     (if (or (not _%rator-type195785%_)
                             (eq? (##structure-ref
                                   _%rator-type195785%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self195569%_ _%stx195570%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type195785%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp196717
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type195785%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id195783%_
                                  '" => "
                                  _%rator-type195785%_
                                  '" "
                                  __tmp196717))
                               (let* ((_%optimized195800%_
                                       (let ((__method196704
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type195785%_
                                                 'optimize-call))))
                                         (if __method196704
                                             (let ((__tmp196718
                                                    (let ((__tmp196719
                                                           (lambda (_%g195792195795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g195793195797%_)
                     (cons _%g195792195795%_ _%g195793195797%_))))
              (declare (not safe))
              (__foldr1 __tmp196719 '() _%L195762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method196704
                                                _%rator-type195785%_
                                                _%self195569%_
                                                _%stx195570%_
                                                __tmp196718))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type195785%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx196004196005%_
                                       _%optimized195800%_)
                                      (_%g195803195832%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx196004196005%_)))))
                                 (let ((_%__kont196006196007%_
                                        (lambda (_%L195900%_ _%L195901%_)
                                          (let* ((_%optimized-rator-id195928%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L195901%_)))
                                                 (_%rator-type195933%_
                                                  (let ((_%$e195930%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id195928%_))))
                                                    (if _%$e195930%_
                                                        _%$e195930%_
                                                        _%rator-type195785%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type195933%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id195928%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type195933%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type195933%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized195800%_
                                                (let ((__tmp196720
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L195901%_ '()))
                           (let ((__tmp196721
                                  (lambda (_%g195941195944%_ _%g195942195946%_)
                                    (cons _%g195941195944%_
                                          _%g195942195946%_))))
                             (declare (not safe))
                             (__foldr1 __tmp196721 '() _%L195900%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp196720
                                                   _%stx195570%_))))))
                                       (_%__kont196010196011%_
                                        (lambda () _%optimized195800%_)))
                                   (let ((_%__match196053196054%_
                                          (lambda (_%e195807195844%_
                                                   _%hd195808195847%_
                                                   _%tl195809195849%_
                                                   _%e195810195852%_
                                                   _%hd195811195855%_
                                                   _%tl195812195857%_
                                                   _%e195813195860%_
                                                   _%hd195814195863%_
                                                   _%tl195815195865%_
                                                   _%e195816195868%_
                                                   _%hd195817195871%_
                                                   _%tl195818195873%_
                                                   _%__splice196008196009%_
                                                   _%target195819195876%_
                                                   _%tl195821195878%_)
                                            (letrec ((_%loop195822195881%_
                                                      (lambda (_%hd195820195884%_
                                                               _%arg195826195886%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd195820195884%_))
                                                            (let ((_%e195823195889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd195820195884%_))))
                      (let ((_%lp-tl195825195894%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195823195889%_)))
                            (_%lp-hd195824195892%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195823195889%_))))
                        (_%loop195822195881%_
                         _%lp-tl195825195894%_
                         (cons _%lp-hd195824195892%_ _%arg195826195886%_))))
                    (let ((_%arg195827195897%_ (reverse _%arg195826195886%_)))
                      (_%__kont196006196007%_
                       _%arg195827195897%_
                       _%hd195817195871%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop195822195881%_
                                               _%target195819195876%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx196004196005%_))
                                         (let ((_%e195807195844%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx196004196005%_))))
                                           (let ((_%tl195809195849%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e195807195844%_)))
                                                 (_%hd195808195847%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e195807195844%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd195808195847%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd195808195847%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl195809195849%_))
                                                         (let ((_%e195810195852%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl195809195849%_))))
                   (let ((_%tl195812195857%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e195810195852%_)))
                         (_%hd195811195855%_
                          (let ()
                            (declare (not safe))
                            (##car _%e195810195852%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd195811195855%_))
                         (let ((_%e195813195860%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd195811195855%_))))
                           (let ((_%tl195815195865%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e195813195860%_)))
                                 (_%hd195814195863%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e195813195860%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd195814195863%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd195814195863%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl195815195865%_))
                                         (let ((_%e195816195868%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl195815195865%_))))
                                           (let ((_%tl195818195873%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e195816195868%_)))
                                                 (_%hd195817195871%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e195816195868%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl195818195873%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl195812195857%_))
                                                     (let ((_%__splice196008196009%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl195812195857%_
                                                               '0))))
                                                       (let ((_%tl195821195878%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice196008196009%_ '1)))
                     (_%target195819195876%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice196008196009%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl195821195878%_))
                     (_%__match196053196054%_
                      _%e195807195844%_
                      _%hd195808195847%_
                      _%tl195809195849%_
                      _%e195810195852%_
                      _%hd195811195855%_
                      _%tl195812195857%_
                      _%e195813195860%_
                      _%hd195814195863%_
                      _%tl195815195865%_
                      _%e195816195868%_
                      _%hd195817195871%_
                      _%tl195818195873%_
                      _%__splice196008196009%_
                      _%target195819195876%_
                      _%tl195821195878%_)
                     (_%__kont196010196011%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont196010196011%_))
                                                 (_%__kont196010196011%_))))
                                         (_%__kont196010196011%_))
                                     (_%__kont196010196011%_))
                                 (_%__kont196010196011%_))))
                         (_%__kont196010196011%_))))
                 (_%__kont196010196011%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont196010196011%_))
                                                 (_%__kont196010196011%_))))
                                         (_%__kont196010196011%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type195785%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type195785%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp196722
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L195763%_
                                                                '()))
                                                    (map (lambda (_%g195952195954%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self195569%_
                                                              _%g195952195954%_)))
                                                         (let ((__tmp196723
                                                                (lambda (_%g195956195959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g195957195961%_)
                          (cons _%g195956195959%_ _%g195957195961%_))))
                   (declare (not safe))
                   (__foldr1 __tmp196723 '() _%L195762%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp196722
                                    _%stx195570%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx195570%_
                                    _%rator-type195785%_))))))))
                (_%__kont196062196063%_
                 (lambda (_%L195664%_ _%L195665%_)
                   (let ((_%rator-type195682%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L195665%_))))
                     (if (and _%rator-type195682%_
                              (eq? (##structure-ref
                                    _%rator-type195682%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type195682%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type195682%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type195682%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp196724
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self195569%_
                                               _%L195665%_))
                                            (map (lambda (_%g195684195686%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self195569%_
                                                      _%g195684195686%_)))
                                                 (let ((__tmp196725
                                                        (lambda (_%g195688195691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g195689195693%_)
                  (cons _%g195688195691%_ _%g195689195693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp196725
                                                    '()
                                                    _%L195664%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp196724 _%stx195570%_))
                         (if (or (not _%rator-type195682%_)
                                 (let ((__tmp196726
                                        (##structure-ref
                                         _%rator-type195682%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp196726 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self195569%_ _%stx195570%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx195570%_
                                _%rator-type195682%_))))))))
            (let* ((_%__match196123196124%_
                    (lambda (_%e195600195624%_
                             _%hd195601195627%_
                             _%tl195602195629%_
                             _%e195603195632%_
                             _%hd195604195635%_
                             _%tl195605195637%_
                             _%__splice196064196065%_
                             _%target195606195640%_
                             _%tl195608195642%_)
                      (letrec ((_%loop195609195645%_
                                (lambda (_%hd195607195648%_
                                         _%rand195613195650%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd195607195648%_))
                                      (let ((_%e195610195653%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd195607195648%_))))
                                        (let ((_%lp-tl195612195658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195610195653%_)))
                                              (_%lp-hd195611195656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195610195653%_))))
                                          (_%loop195609195645%_
                                           _%lp-tl195612195658%_
                                           (cons _%lp-hd195611195656%_
                                                 _%rand195613195650%_))))
                                      (let ((_%rand195614195661%_
                                             (reverse _%rand195613195650%_)))
                                        (_%__kont196062196063%_
                                         _%rand195614195661%_
                                         _%hd195604195635%_))))))
                        (_%loop195609195645%_ _%target195606195640%_ '()))))
                   (_%__match196103196104%_
                    (lambda (_%e195577195706%_
                             _%hd195578195709%_
                             _%tl195579195711%_
                             _%e195580195714%_
                             _%hd195581195717%_
                             _%tl195582195719%_
                             _%e195583195722%_
                             _%hd195584195725%_
                             _%tl195585195727%_
                             _%e195586195730%_
                             _%hd195587195733%_
                             _%tl195588195735%_
                             _%__splice196060196061%_
                             _%target195589195738%_
                             _%tl195591195740%_)
                      (letrec ((_%loop195592195743%_
                                (lambda (_%hd195590195746%_
                                         _%rand195596195748%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd195590195746%_))
                                      (let ((_%e195593195751%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd195590195746%_))))
                                        (let ((_%lp-tl195595195756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195593195751%_)))
                                              (_%lp-hd195594195754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195593195751%_))))
                                          (_%loop195592195743%_
                                           _%lp-tl195595195756%_
                                           (cons _%lp-hd195594195754%_
                                                 _%rand195596195748%_))))
                                      (let ((_%rand195597195759%_
                                             (reverse _%rand195596195748%_)))
                                        (_%__kont196058196059%_
                                         _%rand195597195759%_
                                         _%hd195587195733%_))))))
                        (_%loop195592195743%_ _%target195589195738%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx196056196057%_))
                  (let ((_%e195577195706%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx196056196057%_))))
                    (let ((_%tl195579195711%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195577195706%_)))
                          (_%hd195578195709%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195577195706%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195579195711%_))
                          (let ((_%e195580195714%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl195579195711%_))))
                            (let ((_%tl195582195719%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195580195714%_)))
                                  (_%hd195581195717%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195580195714%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd195581195717%_))
                                  (let ((_%e195583195722%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd195581195717%_))))
                                    (let ((_%tl195585195727%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195583195722%_)))
                                          (_%hd195584195725%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195583195722%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd195584195725%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd195584195725%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195585195727%_))
                                                  (let ((_%e195586195730%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl195585195727%_))))
                                                    (let ((_%tl195588195735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195586195730%_)))
                                                          (_%hd195587195733%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195586195730%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195588195735%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl195582195719%_))
                      (let ((_%__splice196060196061%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl195582195719%_
                                '0))))
                        (let ((_%tl195591195740%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196060196061%_ '1)))
                              (_%target195589195738%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196060196061%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195591195740%_))
                              (_%__match196103196104%_
                               _%e195577195706%_
                               _%hd195578195709%_
                               _%tl195579195711%_
                               _%e195580195714%_
                               _%hd195581195717%_
                               _%tl195582195719%_
                               _%e195583195722%_
                               _%hd195584195725%_
                               _%tl195585195727%_
                               _%e195586195730%_
                               _%hd195587195733%_
                               _%tl195588195735%_
                               _%__splice196060196061%_
                               _%target195589195738%_
                               _%tl195591195740%_)
                              (let ()
                                (declare (not safe))
                                (_%g195573195619%_)))))
                      (let () (declare (not safe)) (_%g195573195619%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl195582195719%_))
                      (let ((_%__splice196064196065%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl195582195719%_
                                '0))))
                        (let ((_%tl195608195642%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196064196065%_ '1)))
                              (_%target195606195640%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice196064196065%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195608195642%_))
                              (_%__match196123196124%_
                               _%e195577195706%_
                               _%hd195578195709%_
                               _%tl195579195711%_
                               _%e195580195714%_
                               _%hd195581195717%_
                               _%tl195582195719%_
                               _%__splice196064196065%_
                               _%target195606195640%_
                               _%tl195608195642%_)
                              (let ()
                                (declare (not safe))
                                (_%g195573195619%_)))))
                      (let () (declare (not safe)) (_%g195573195619%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl195582195719%_))
                                                      (let ((_%__splice196064196065%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl195582195719%_ '0))))
                (let ((_%tl195608195642%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice196064196065%_ '1)))
                      (_%target195606195640%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice196064196065%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl195608195642%_))
                      (_%__match196123196124%_
                       _%e195577195706%_
                       _%hd195578195709%_
                       _%tl195579195711%_
                       _%e195580195714%_
                       _%hd195581195717%_
                       _%tl195582195719%_
                       _%__splice196064196065%_
                       _%target195606195640%_
                       _%tl195608195642%_)
                      (let () (declare (not safe)) (_%g195573195619%_)))))
              (let () (declare (not safe)) (_%g195573195619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl195582195719%_))
                                                  (let ((_%__splice196064196065%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl195582195719%_
                                                            '0))))
                                                    (let ((_%tl195608195642%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196064196065%_
                                                              '1)))
                                                          (_%target195606195640%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196064196065%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195608195642%_))
                                                          (_%__match196123196124%_
                                                           _%e195577195706%_
                                                           _%hd195578195709%_
                                                           _%tl195579195711%_
                                                           _%e195580195714%_
                                                           _%hd195581195717%_
                                                           _%tl195582195719%_
                                                           _%__splice196064196065%_
                                                           _%target195606195640%_
                                                           _%tl195608195642%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g195573195619%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g195573195619%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl195582195719%_))
                                              (let ((_%__splice196064196065%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl195582195719%_
                                                        '0))))
                                                (let ((_%tl195608195642%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice196064196065%_
                                                          '1)))
                                                      (_%target195606195640%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice196064196065%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195608195642%_))
                                                      (_%__match196123196124%_
                                                       _%e195577195706%_
                                                       _%hd195578195709%_
                                                       _%tl195579195711%_
                                                       _%e195580195714%_
                                                       _%hd195581195717%_
                                                       _%tl195582195719%_
                                                       _%__splice196064196065%_
                                                       _%target195606195640%_
                                                       _%tl195608195642%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g195573195619%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g195573195619%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl195582195719%_))
                                      (let ((_%__splice196064196065%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl195582195719%_
                                                '0))))
                                        (let ((_%tl195608195642%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196064196065%_
                                                  '1)))
                                              (_%target195606195640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196064196065%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195608195642%_))
                                              (_%__match196123196124%_
                                               _%e195577195706%_
                                               _%hd195578195709%_
                                               _%tl195579195711%_
                                               _%e195580195714%_
                                               _%hd195581195717%_
                                               _%tl195582195719%_
                                               _%__splice196064196065%_
                                               _%target195606195640%_
                                               _%tl195608195642%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g195573195619%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g195573195619%_))))))
                          (let () (declare (not safe)) (_%g195573195619%_)))))
                  (let () (declare (not safe)) (_%g195573195619%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self191948195529%_ _%ctx195531%_ _%stx195532%_ _%args195533%_)
        (let* ((_%self195535%_ _%self191948195529%_)
               (_%self195537%_ _%self195535%_))
          (if (let ((__method196705
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self195537%_ 'check-arguments))))
                (if __method196705
                    (let ()
                      (declare (not safe))
                      (__method196705
                       _%self195537%_
                       _%ctx195531%_
                       _%stx195532%_
                       _%args195533%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self195537%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature195547%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195537%_ '2 '#f '#f)))
                     (_%signature195549%_ _%signature195547%_)
                     (_%$e195559%_
                      (if _%signature195549%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature195549%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e195559%_
                    ((lambda (_%unchecked195562%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked195562%_))
                           (let ((__tmp196727
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked195562%_
                                                          '()))
                                              (map (lambda (_%g195563195565%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx195531%_
                                                        _%g195563195565%_)))
                                                   _%args195533%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp196727
                              _%stx195532%_
                              _%ctx195531%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx195531%_ _%stx195532%_))))
                     _%$e195559%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx195531%_ _%stx195532%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx195531%_ _%stx195532%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass195989 __method-table195990)
        (let ((__check-arguments195991
               (let ((__tmp196728
                      (lambda ()
                        (let ((__method195992
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table195990
                                  'check-arguments
                                  '#f))))
                          (if __method195992
                              __method195992
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp196728))))
          (lambda (_%self191948195529%_
                   _%ctx195531%_
                   _%stx195532%_
                   _%args195533%_)
            (let* ((_%self195535%_ _%self191948195529%_)
                   (_%self195537%_ _%self195535%_))
              (if ((force __check-arguments195991)
                   _%self195537%_
                   _%ctx195531%_
                   _%stx195532%_
                   _%args195533%_)
                  (let* ((_%signature195547%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self195537%_
                             '2
                             '#f
                             '#f)))
                         (_%signature195549%_ _%signature195547%_)
                         (_%$e195559%_
                          (if _%signature195549%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature195549%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e195559%_
                        ((lambda (_%unchecked195562%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked195562%_))
                               (let ((__tmp196729
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked195562%_
                                                              '()))
                                                  (map (lambda (_%g195563195565%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx195531%_
                                                            _%g195563195565%_)))
                                                       _%args195533%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp196729
                                  _%stx195532%_
                                  _%ctx195531%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx195531%_
                                  _%stx195532%_))))
                         _%$e195559%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx195531%_ _%stx195532%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx195531%_ _%stx195532%_))))))))
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
      (lambda (_%self191949195278%_ _%ctx195280%_ _%stx195281%_ _%args195282%_)
        (let* ((_%self195284%_ _%self191949195278%_)
               (_%self195286%_ _%self195284%_)
               (_%signature195295195297%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195286%_ '2 '#f '#f))))
          (if _%signature195295195297%_
              (let* ((_%signature195300%_ _%signature195295195297%_)
                     (_%argument-types195301195303%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature195300%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types195301195303%_
                    (let* ((_%argument-types195306%_
                            _%argument-types195301195303%_)
                           (_%argument-types195311%_
                            (let ((__tmp196730
                                   (lambda (_%t195309%_)
                                     (if _%t195309%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195281%_
                                            _%t195309%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp196730
                               _%argument-types195306%_))))
                      (let _%loop195313%_ ((_%rest-args195315%_ _%args195282%_)
                                           (_%rest-types195316%_
                                            _%argument-types195311%_)
                                           (_%result195317%_ '#t))
                        (let* ((_%rest-args195318195326%_ _%rest-args195315%_)
                               (_%else195320195334%_
                                (lambda () _%result195317%_))
                               (_%K195322195395%_
                                (lambda (_%rest-args195337%_ _%arg195338%_)
                                  (let* ((_%rest-types195339195350%_
                                          _%rest-types195316%_)
                                         (_%E195343195354%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types195339195350%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K195346195383%_
                                           (lambda (_%rest-types195380%_
                                                    _%type195381%_)
                                             (_%loop195313%_
                                              _%rest-args195337%_
                                              _%rest-types195380%_
                                              (if (gxc#check-expression-type!
                                                   _%stx195281%_
                                                   _%arg195338%_
                                                   _%type195381%_)
                                                  _%result195317%_
                                                  '#f))))
                                          (_%K195345195374%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx195281%_
                                                _%argument-types195311%_))))
                                          (_%K195344195364%_
                                           (lambda (_%tail-type195358%_)
                                             (if (let ((__tmp196731
                                                        (lambda (_%g195359195361%_)
                                                          (gxc#check-expression-type!
                                                           _%stx195281%_
                                                           _%g195359195361%_
                                                           _%tail-type195358%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp196731
                                                    _%rest-args195337%_))
                                                 _%result195317%_
                                                 '#f))))
                                      (let ((_%try-match195341195377%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types195339195350%_))
                                                   (_%K195345195374%_)
                                                   (let ((_%tail-type195367%_
                                                          _%rest-types195339195350%_))
                                                     (_%K195344195364%_
                                                      _%tail-type195367%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types195339195350%_))
                                            (let ((_%tl195348195388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types195339195350%_)))
                                                  (_%hd195347195386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types195339195350%_))))
                                              (let ((_%type195391%_
                                                     _%hd195347195386%_)
                                                    (_%rest-types195393%_
                                                     _%tl195348195388%_))
                                                (_%K195346195383%_
                                                 _%rest-types195393%_
                                                 _%type195391%_)))
                                            (_%try-match195341195377%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args195318195326%_))
                              (let ((_%hd195323195398%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args195318195326%_)))
                                    (_%tl195324195400%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args195318195326%_))))
                                (let* ((_%arg195403%_ _%hd195323195398%_)
                                       (_%rest-args195405%_
                                        _%tl195324195400%_))
                                  (_%K195322195395%_
                                   _%rest-args195405%_
                                   _%arg195403%_)))
                              (_%else195320195334%_)))))
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
      (lambda (_%self191950195087%_ _%ctx195089%_ _%stx195090%_ _%args195091%_)
        (let* ((_%self195093%_ _%self191950195087%_)
               (_%self195095%_ _%self195093%_)
               (_%g195105195115%_
                (lambda (_%g195106195112%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195106195112%_))))
               (_%g195104195153%_
                (lambda (_%g195106195118%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195106195118%_))
                      (let ((_%e195108195120%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195106195118%_))))
                        (let ((_%hd195109195123%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195108195120%_)))
                              (_%tl195110195125%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195108195120%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195110195125%_))
                              ((lambda (_%L195128%_)
                                 (let* ((_%klass195140%_
                                         (let ((__tmp196732
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self195095%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx195090%_
                                            __tmp196732)))
                                        (_%object195142%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx195089%_
                                            _%L195128%_)))
                                        (_%instance?195147%_
                                         (let ((_%$e195144%_
                                                (gxc#expression-type?
                                                 _%object195142%_
                                                 _%klass195140%_)))
                                           (if _%$e195144%_
                                               _%$e195144%_
                                               (gxc#expression-type?
                                                _%L195128%_
                                                _%klass195140%_)))))
                                   (if _%instance?195147%_
                                       (let ((__tmp196733
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object195142%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L195128%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object195142%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp196733
                                          _%stx195090%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx195089%_
                                          _%stx195090%_)))))
                               _%hd195109195123%_)
                              (_%g195105195115%_ _%g195106195118%_))))
                      (_%g195105195115%_ _%g195106195118%_)))))
          (_%g195104195153%_ _%args195091%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self191951194881%_ _%ctx194883%_ _%stx194884%_ _%args194885%_)
        (let* ((_%self194887%_ _%self191951194881%_)
               (_%self194889%_ _%self194887%_)
               (_%g194899194909%_
                (lambda (_%g194900194906%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194900194906%_))))
               (_%g194898194962%_
                (lambda (_%g194900194912%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194900194912%_))
                      (let ((_%e194902194914%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194900194912%_))))
                        (let ((_%hd194903194917%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194902194914%_)))
                              (_%tl194904194919%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194902194914%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194904194919%_))
                              ((lambda (_%L194922%_)
                                 (let* ((_%klass194934%_
                                         (let ((__tmp196734
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194889%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx194884%_
                                            __tmp196734)))
                                        (_%object194936%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx194883%_
                                            _%L194922%_)))
                                        (_%instance?194941%_
                                         (let ((_%$e194938%_
                                                (gxc#expression-type?
                                                 _%object194936%_
                                                 _%klass194934%_)))
                                           (if _%$e194938%_
                                               _%$e194938%_
                                               (gxc#expression-type?
                                                _%L194922%_
                                                _%klass194934%_))))
                                        (_%klass194944%_ _%klass194934%_))
                                   (if _%instance?194941%_
                                       (let ((__tmp196735
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object194936%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L194922%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object194936%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp196735
                                          _%stx194884%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass194944%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp196736
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass194944%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object194936%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp196736
                                              _%stx194884%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass194944%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp196737
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass194944%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object194936%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp196737
                                                  _%stx194884%_))
                                               (let ((__tmp196738
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self194889%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object194936%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp196738
                                                  _%stx194884%_)))))))
                               _%hd194903194917%_)
                              (_%g194899194909%_ _%g194900194912%_))))
                      (_%g194899194909%_ _%g194900194912%_)))))
          (_%g194898194962%_ _%args194885%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx194544%_)
        (let* ((_%__stx196133196134%_ _%stx194544%_)
               (_%g194549194590%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx196133196134%_)))))
          (let ((_%__kont196135196136%_ (lambda () '#t))
                (_%__kont196137196138%_ (lambda () '#t))
                (_%__kont196139196140%_
                 (lambda (_%L194658%_ _%L194659%_)
                   (let ((_%rator-type194680194682%_
                          (let ((__tmp196739
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L194659%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp196739))))
                     (if _%rator-type194680194682%_
                         (let* ((_%rator-type194685%_
                                 _%rator-type194680194682%_)
                                (_%rator-signature194686194688%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type194685%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type194685%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature194686194688%_
                               (let* ((_%rator-signature194691%_
                                       _%rator-signature194686194688%_)
                                      (_%rator-effect194692194694%_
                                       (if _%rator-signature194691%_
                                           (##direct-structure-ref
                                            _%rator-signature194691%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect194692194694%_
                                     (let ((_%rator-effect194697%_
                                            _%rator-effect194692194694%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect194697%_)
                                               (equal? '(alloc)
                                                       _%rator-effect194697%_))
                                           (let ((__tmp196740
                                                  (let ((__tmp196741
                                                         (lambda (_%g194702194705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g194703194707%_)
                   (cons _%g194702194705%_ _%g194703194707%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp196741
                                                     '()
                                                     _%L194658%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp196740))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont196143196144%_ (lambda () '#f)))
            (let ((_%__match196222196223%_
                   (lambda (_%e194565194602%_
                            _%hd194566194605%_
                            _%tl194567194607%_
                            _%e194568194610%_
                            _%hd194569194613%_
                            _%tl194570194615%_
                            _%e194571194618%_
                            _%hd194572194621%_
                            _%tl194573194623%_
                            _%e194574194626%_
                            _%hd194575194629%_
                            _%tl194576194631%_
                            _%__splice196141196142%_
                            _%target194577194634%_
                            _%tl194579194636%_)
                     (letrec ((_%loop194580194639%_
                               (lambda (_%hd194578194642%_
                                        _%rand194584194644%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd194578194642%_))
                                     (let ((_%e194581194647%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd194578194642%_))))
                                       (let ((_%lp-tl194583194652%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e194581194647%_)))
                                             (_%lp-hd194582194650%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e194581194647%_))))
                                         (_%loop194580194639%_
                                          _%lp-tl194583194652%_
                                          (cons _%lp-hd194582194650%_
                                                _%rand194584194644%_))))
                                     (let ((_%rand194585194655%_
                                            (reverse _%rand194584194644%_)))
                                       (_%__kont196139196140%_
                                        _%rand194585194655%_
                                        _%hd194575194629%_))))))
                       (_%loop194580194639%_ _%target194577194634%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx196133196134%_))
                  (let ((_%e194551194738%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx196133196134%_))))
                    (let ((_%tl194553194743%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194551194738%_)))
                          (_%hd194552194741%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194551194738%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd194552194741%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd194552194741%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl194553194743%_))
                                  (let ((_%e194554194746%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl194553194743%_))))
                                    (let ((_%tl194556194751%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194554194746%_)))
                                          (_%hd194555194749%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194554194746%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl194556194751%_))
                                          (_%__kont196135196136%_)
                                          (_%__kont196143196144%_))))
                                  (_%__kont196143196144%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd194552194741%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194553194743%_))
                                      (let ((_%e194560194723%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194553194743%_))))
                                        (let ((_%tl194562194728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194560194723%_)))
                                              (_%hd194561194726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194560194723%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194562194728%_))
                                              (_%__kont196137196138%_)
                                              (_%__kont196143196144%_))))
                                      (_%__kont196143196144%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd194552194741%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl194553194743%_))
                                          (let ((_%e194568194610%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl194553194743%_))))
                                            (let ((_%tl194570194615%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e194568194610%_)))
                                                  (_%hd194569194613%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e194568194610%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd194569194613%_))
                                                  (let ((_%e194571194618%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd194569194613%_))))
                                                    (let ((_%tl194573194623%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194571194618%_)))
                                                          (_%hd194572194621%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194571194618%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd194572194621%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd194572194621%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194573194623%_))
                          (let ((_%e194574194626%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194573194623%_))))
                            (let ((_%tl194576194631%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194574194626%_)))
                                  (_%hd194575194629%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194574194626%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl194576194631%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl194570194615%_))
                                      (let ((_%__splice196141196142%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl194570194615%_
                                                '0))))
                                        (let ((_%tl194579194636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196141196142%_
                                                  '1)))
                                              (_%target194577194634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice196141196142%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194579194636%_))
                                              (_%__match196222196223%_
                                               _%e194551194738%_
                                               _%hd194552194741%_
                                               _%tl194553194743%_
                                               _%e194568194610%_
                                               _%hd194569194613%_
                                               _%tl194570194615%_
                                               _%e194571194618%_
                                               _%hd194572194621%_
                                               _%tl194573194623%_
                                               _%e194574194626%_
                                               _%hd194575194629%_
                                               _%tl194576194631%_
                                               _%__splice196141196142%_
                                               _%target194577194634%_
                                               _%tl194579194636%_)
                                              (_%__kont196143196144%_))))
                                      (_%__kont196143196144%_))
                                  (_%__kont196143196144%_))))
                          (_%__kont196143196144%_))
                      (_%__kont196143196144%_))
                  (_%__kont196143196144%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont196143196144%_))))
                                          (_%__kont196143196144%_))
                                      (_%__kont196143196144%_))))
                          (_%__kont196143196144%_))))
                  (_%__kont196143196144%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx194539%_ _%klass194540%_)
        (let ((_%expr-type194542%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx194539%_))))
          (if _%expr-type194542%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type194542%_ _%klass194540%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx194517%_ _%expr194518%_ _%type194519%_)
        (if (not _%type194519%_)
            '#f
            (let ((_%$e194522%_
                   (eq? (##structure-ref _%type194519%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e194522%_
                  _%$e194522%_
                  (let ((_%expr-type194526%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr194518%_))))
                    (if (not _%expr-type194526%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type194526%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e194530%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type194526%_
                                      'gxc#!abort::t))))
                              (if _%$e194530%_
                                  _%$e194530%_
                                  (let ((_%$e194533%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type194526%_
                                            _%type194519%_))))
                                    (if _%$e194533%_
                                        _%$e194533%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type194519%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type194519%_
                                                   _%expr-type194526%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx194517%_
                                                   _%expr194518%_
                                                   _%expr-type194526%_
                                                   _%type194519%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self191952194329%_ _%ctx194331%_ _%stx194332%_ _%args194333%_)
        (let* ((_%self194335%_ _%self191952194329%_)
               (_%self194337%_ _%self194335%_)
               (_%klass194347%_
                (let ((__tmp196742
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self194337%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx194332%_ __tmp196742)))
               (_%fields194349%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass194347%_
                           '5
                           '#f
                           '#f))))
               (_%args194355%_
                (map (lambda (_%g194350194352%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx194331%_ _%g194350194352%_)))
                     _%args194333%_))
               (_%inline-make-object194357%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self194337%_
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
                           _%self194337%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields194349%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass194360%_ _%klass194347%_)
               (_%$e194374%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass194360%_ '6 '#f '#f))))
          (if _%$e194374%_
              ((lambda (_%ctor194377%_)
                 (let ((_%$obj194379%_
                        (let ((__tmp196743
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp196743)))
                       (_%ctor-impl194380%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass194360%_
                           _%ctor194377%_))))
                   (let ((__tmp196744
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj194379%_ '())
                                                  (cons _%inline-make-object194357%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl194380%_
                                                            (let ((__tmp196745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl194380%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj194379%_ '()))
                                             _%args194355%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp196745
                       _%stx194332%_
                       _%ctx194331%_))
                    (let ((_%$ctor194382%_
                           (let ((__tmp196746
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp196746))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor194382%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194337%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj194379%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor194377%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor194382%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor194382%_ '()))
                              (cons (cons '%#ref (cons _%$obj194379%_ '()))
                                    _%args194355%_)))
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
                             _%self194337%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor194377%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj194379%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp196744 _%stx194332%_))))
               _%$e194374%_)
              (let ((_%$e194384%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass194360%_
                        '10
                        '#f
                        '#f))))
                (if _%$e194384%_
                    ((lambda (_%metaclass194387%_)
                       (let* ((_%$obj194389%_
                               (let ((__tmp196747
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp196747)))
                              (_%metakons194391%_
                               (let ((__tmp196748
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx194332%_
                                         _%metaclass194387%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp196748
                                  'instance-init!)))
                              (__tmp196749
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj194389%_
                                                             '())
                                                       (cons _%inline-make-object194357%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons194391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp196750
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons194391%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self194337%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj194389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args194355%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp196750
                            _%stx194332%_
                            _%ctx194331%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self194337%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj194389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args194355%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj194389%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp196749 _%stx194332%_)))
                     _%$e194384%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass194360%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp196751
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args194355%_))))
                              (declare (not safe))
                              (##fx= __tmp196751 _%fields194349%_))
                            (let ((__tmp196752
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self194337%_
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
                                              _%self194337%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args194355%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp196752
                               _%stx194332%_))
                            (let ((__tmp196754
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self194337%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp196753
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass194360%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx194332%_
                               __tmp196754
                               __tmp196753)))
                        (let ((_%$obj194396%_
                               (let ((__tmp196755
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp196755))))
                          (let _%lp194398%_ ((_%rest194400%_ _%args194355%_)
                                             (_%initializers194401%_ '()))
                            (let* ((_%__stx196225196226%_ _%rest194400%_)
                                   (_%g194405194426%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx196225196226%_)))))
                              (let ((_%__kont196227196228%_
                                     (lambda (_%L194480%_
                                              _%L194481%_
                                              _%L194482%_)
                                       (let* ((_%slot194509%_
                                               (let ((__tmp196756
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L194482%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp196756)))
                                              (_%off194511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass194360%_
                                                  _%slot194509%_))))
                                         (if _%off194511%_
                                             (_%lp194398%_
                                              _%L194480%_
                                              (cons (cons _%off194511%_
                                                          _%L194481%_)
                                                    _%initializers194401%_))
                                             (let ((__tmp196757
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self194337%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx194332%_
                                                __tmp196757
                                                _%slot194509%_))))))
                                    (_%__kont196229196230%_
                                     (lambda ()
                                       (let ((__tmp196758
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj194396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object194357%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp196761
                                     (cons (cons '%#ref
                                                 (cons _%$obj194396%_ '()))
                                           '()))
                                    (__tmp196759
                                     (let ((__tmp196760
                                            (lambda (_%i194440%_ _%r194441%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self194337%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i194440%_) '()))
                              (cons (cons '%#ref (cons _%$obj194396%_ '()))
                                    (cons (cdr _%i194440%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r194441%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp196760
                                        '()
                                        _%initializers194401%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp196761 __tmp196759)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp196758
                                          _%stx194332%_))))
                                    (_%__kont196231196232%_
                                     (lambda ()
                                       (let ((__tmp196762
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj194396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object194357%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj194396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args194355%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj194396%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp196762
                                          _%stx194332%_)))))
                                (let* ((_%g194403194443%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx196225196226%_))
                                              (_%__kont196229196230%_)
                                              (_%__kont196231196232%_))))
                                       (_%__match196262196263%_
                                        (lambda (_%e194410194448%_
                                                 _%hd194411194451%_
                                                 _%tl194412194453%_
                                                 _%e194413194456%_
                                                 _%hd194414194459%_
                                                 _%tl194415194461%_
                                                 _%e194416194464%_
                                                 _%hd194417194467%_
                                                 _%tl194418194469%_
                                                 _%e194419194472%_
                                                 _%hd194420194475%_
                                                 _%tl194421194477%_)
                                          (let ((_%L194480%_
                                                 _%tl194421194477%_)
                                                (_%L194481%_
                                                 _%hd194420194475%_)
                                                (_%L194482%_
                                                 _%hd194417194467%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L194482%_))
                                                (_%__kont196227196228%_
                                                 _%L194480%_
                                                 _%L194481%_
                                                 _%L194482%_)
                                                (_%__kont196231196232%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx196225196226%_))
                                      (let ((_%e194410194448%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx196225196226%_))))
                                        (let ((_%tl194412194453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194410194448%_)))
                                              (_%hd194411194451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194410194448%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd194411194451%_))
                                              (let ((_%e194413194456%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd194411194451%_))))
                                                (let ((_%tl194415194461%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194413194456%_)))
                                                      (_%hd194414194459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194413194456%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd194414194459%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd194414194459%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl194415194461%_))
                      (let ((_%e194416194464%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl194415194461%_))))
                        (let ((_%tl194418194469%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194416194464%_)))
                              (_%hd194417194467%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194416194464%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194418194469%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl194412194453%_))
                                  (let ((_%e194419194472%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl194412194453%_))))
                                    (let ((_%tl194421194477%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194419194472%_)))
                                          (_%hd194420194475%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194419194472%_))))
                                      (_%__match196262196263%_
                                       _%e194410194448%_
                                       _%hd194411194451%_
                                       _%tl194412194453%_
                                       _%e194413194456%_
                                       _%hd194414194459%_
                                       _%tl194415194461%_
                                       _%e194416194464%_
                                       _%hd194417194467%_
                                       _%tl194418194469%_
                                       _%e194419194472%_
                                       _%hd194420194475%_
                                       _%tl194421194477%_)))
                                  (_%__kont196231196232%_))
                              (_%__kont196231196232%_))))
                      (_%__kont196231196232%_))
                  (_%__kont196231196232%_))
              (_%__kont196231196232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont196231196232%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g194403194443%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self191953194110%_ _%ctx194112%_ _%stx194113%_ _%args194114%_)
        (let* ((_%self194116%_ _%self191953194110%_)
               (_%self194118%_ _%self194116%_)
               (_%arguments-ok?194128%_
                (let ((__method196706
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self194118%_ 'check-arguments))))
                  (if __method196706
                      (let ()
                        (declare (not safe))
                        (__method196706
                         _%self194118%_
                         _%ctx194112%_
                         _%stx194113%_
                         _%args194114%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self194118%_
                                 'check-arguments))
                        '#!void))))
               (_%g194130194140%_
                (lambda (_%g194131194137%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194131194137%_))))
               (_%g194129194204%_
                (lambda (_%g194131194143%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194131194143%_))
                      (let ((_%e194133194145%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194131194143%_))))
                        (let ((_%hd194134194148%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194133194145%_)))
                              (_%tl194135194150%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194133194145%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194135194150%_))
                              ((lambda (_%L194153%_)
                                 (let* ((_%klass194166%_
                                         (let ((__tmp196763
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194118%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx194113%_
                                            __tmp196763)))
                                        (_%field194168%_
                                         (let ((__tmp196764
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194118%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass194166%_
                                            __tmp196764)))
                                        (_%object194170%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx194112%_
                                            _%L194153%_)))
                                        (_%klass194173%_ _%klass194166%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass194173%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp196765
                                              (cons (if (or _%arguments-ok?194128%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self194118%_
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
                                 _%self194118%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field194168%_ '()))
                        (cons _%object194170%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp196765
                                          _%stx194113%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass194173%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp196766
                                                  (cons (if (or _%arguments-ok?194128%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self194118%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194118%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field194168%_ '()))
                            (cons _%object194170%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp196766
                                              _%stx194113%_))
                                           (let ((_%$e194192%_
                                                  (let ((__tmp196767
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self194118%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass194173%_
                                                     __tmp196767))))
                                             (if _%$e194192%_
                                                 ((lambda (_%klass194195%_)
                                                    (let ((__tmp196768
                                                           (cons (if (or _%arguments-ok?194128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194118%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self194118%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field194168%_ '()))
                                     (cons _%object194170%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp196768 _%stx194113%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e194192%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self194118%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp196769
                                                            (let ((_%$obj194201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp196770
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp196770))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj194201%_ '())
                                              (cons _%object194170%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass194173%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj194201%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194118%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field194168%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj194201%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?194128%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj194201%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self194118%_
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
                                                             _%self194118%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj194201%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self194118%_
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
               (gxc#xform-wrap-source __tmp196769 _%stx194113%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp196771
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object194170%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self194118%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp196771 _%stx194113%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd194134194148%_)
                              (_%g194130194140%_ _%g194131194143%_))))
                      (_%g194130194140%_ _%g194131194143%_)))))
          (_%g194129194204%_ _%args194114%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass195993 __method-table195994)
        (let ((__check-arguments195995
               (let ((__tmp196772
                      (lambda ()
                        (let ((__method195996
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table195994
                                  'check-arguments
                                  '#f))))
                          (if __method195996
                              __method195996
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp196772)))
              (__slot195997
               (let ((__slot195998
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass195993 'slot))))
                 (if __slot195998
                     __slot195998
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self191953194110%_
                   _%ctx194112%_
                   _%stx194113%_
                   _%args194114%_)
            (let* ((_%self194116%_ _%self191953194110%_)
                   (_%self194118%_ _%self194116%_)
                   (_%arguments-ok?194128%_
                    ((force __check-arguments195995)
                     _%self194118%_
                     _%ctx194112%_
                     _%stx194113%_
                     _%args194114%_))
                   (_%g194130194140%_
                    (lambda (_%g194131194137%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g194131194137%_))))
                   (_%g194129194204%_
                    (lambda (_%g194131194143%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g194131194143%_))
                          (let ((_%e194133194145%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g194131194143%_))))
                            (let ((_%hd194134194148%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194133194145%_)))
                                  (_%tl194135194150%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194133194145%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl194135194150%_))
                                  ((lambda (_%L194153%_)
                                     (let* ((_%klass194166%_
                                             (let ((__tmp196773
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self194118%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx194113%_
                                                __tmp196773)))
                                            (_%field194168%_
                                             (let ((__tmp196774
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self194118%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass194166%_
                                                __tmp196774)))
                                            (_%object194170%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx194112%_
                                                _%L194153%_)))
                                            (_%klass194173%_ _%klass194166%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass194173%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp196775
                                                  (cons (if (or _%arguments-ok?194128%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self194118%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194118%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field194168%_ '()))
                            (cons _%object194170%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp196775
                                              _%stx194113%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass194173%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp196776
                                                      (cons (if (or _%arguments-ok?194128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self194118%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self194118%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field194168%_ '()))
                                (cons _%object194170%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp196776
                                                  _%stx194113%_))
                                               (let ((_%$e194192%_
                                                      (let ((__tmp196777
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self194118%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass194173%_ __tmp196777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e194192%_
                                                     ((lambda (_%klass194195%_)
                                                        (let ((__tmp196778
                                                               (cons (if (or _%arguments-ok?194128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self194118%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self194118%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field194168%_ '()))
                                         (cons _%object194170%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp196778 _%stx194113%_)))
              _%$e194192%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self194118%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp196779
                                                                (let ((_%$obj194201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp196780
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp196780))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj194201%_ '())
                                                  (cons _%object194170%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass194173%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj194201%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self194118%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field194168%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj194201%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?194128%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj194201%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self194118%_
                               __slot195997
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
                        (##unchecked-structure-ref _%self194118%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj194201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self194118%_
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
                   (gxc#xform-wrap-source __tmp196779 _%stx194113%_))
                 (let ((__tmp196781
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object194170%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self194118%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp196781 _%stx194113%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd194134194148%_)
                                  (_%g194130194140%_ _%g194131194143%_))))
                          (_%g194130194140%_ _%g194131194143%_)))))
              (_%g194129194204%_ _%args194114%_))))))
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
      (lambda (_%self191954193872%_ _%ctx193874%_ _%stx193875%_ _%args193876%_)
        (let* ((_%self193878%_ _%self191954193872%_)
               (_%self193880%_ _%self193878%_)
               (_%arguments-ok?193890%_
                (let ((__method196707
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self193880%_ 'check-arguments))))
                  (if __method196707
                      (let ()
                        (declare (not safe))
                        (__method196707
                         _%self193880%_
                         _%ctx193874%_
                         _%stx193875%_
                         _%args193876%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self193880%_
                                 'check-arguments))
                        '#!void))))
               (_%g193892193906%_
                (lambda (_%g193893193903%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193893193903%_))))
               (_%g193891193985%_
                (lambda (_%g193893193909%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193893193909%_))
                      (let ((_%e193896193911%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193893193909%_))))
                        (let ((_%hd193897193914%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193896193911%_)))
                              (_%tl193898193916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193896193911%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193898193916%_))
                              (let ((_%e193899193919%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193898193916%_))))
                                (let ((_%hd193900193922%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193899193919%_)))
                                      (_%tl193901193924%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193899193919%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193901193924%_))
                                      ((lambda (_%L193927%_ _%L193928%_)
                                         (let* ((_%klass193944%_
                                                 (let ((__tmp196782
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self193880%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx193875%_
                                                    __tmp196782)))
                                                (_%field193946%_
                                                 (let ((__tmp196783
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self193880%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass193944%_
                                                    __tmp196783)))
                                                (_%object193948%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx193874%_
                                                    _%L193928%_)))
                                                (_%value193950%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx193874%_
                                                    _%L193927%_)))
                                                (_%klass193953%_
                                                 _%klass193944%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass193953%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp196784
                                                      (cons (if (or _%arguments-ok?193890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self193880%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self193880%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field193946%_ '()))
                                (cons _%object193948%_
                                      (cons _%value193950%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp196784
                                                  _%stx193875%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass193953%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp196785
                                                          (cons (if (or _%arguments-ok?193890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self193880%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193880%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field193946%_ '()))
                                    (cons _%object193948%_
                                          (cons _%value193950%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp196785
                                                      _%stx193875%_))
                                                   (let ((_%$e193973%_
                                                          (let ((__tmp196786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self193880%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass193953%_
                     __tmp196786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e193973%_
                                                         ((lambda (_%klass193976%_)
                                                            (let ((__tmp196787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?193890%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self193880%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self193880%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field193946%_ '()))
                                             (cons _%object193948%_
                                                   (cons _%value193950%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp196787 _%stx193875%_)))
                  _%$e193973%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self193880%_ '4 '#f '#f))
                     (let ((__tmp196788
                            (let ((_%$obj193982%_
                                   (let ((__tmp196789
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp196789))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj193982%_ '())
                                                      (cons _%object193948%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass193953%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj193982%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self193880%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field193946%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj193982%_
                                                              '()))
                                                  (cons _%value193950%_
                                                        '())))))
                          (cons (if _%arguments-ok?193890%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj193982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self193880%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value193950%_ '())))))
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
                             _%self193880%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj193982%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self193880%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value193950%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp196788 _%stx193875%_))
                     (let ((__tmp196790
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object193948%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self193880%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value193950%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp196790
                        _%stx193875%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd193900193922%_
                                       _%hd193897193914%_)
                                      (_%g193892193906%_ _%g193893193909%_))))
                              (_%g193892193906%_ _%g193893193909%_))))
                      (_%g193892193906%_ _%g193893193909%_)))))
          (_%g193891193985%_ _%args193876%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass195999 __method-table196000)
        (let ((__check-arguments196001
               (let ((__tmp196791
                      (lambda ()
                        (let ((__method196002
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table196000
                                  'check-arguments
                                  '#f))))
                          (if __method196002
                              __method196002
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp196791))))
          (lambda (_%self191954193872%_
                   _%ctx193874%_
                   _%stx193875%_
                   _%args193876%_)
            (let* ((_%self193878%_ _%self191954193872%_)
                   (_%self193880%_ _%self193878%_)
                   (_%arguments-ok?193890%_
                    ((force __check-arguments196001)
                     _%self193880%_
                     _%ctx193874%_
                     _%stx193875%_
                     _%args193876%_))
                   (_%g193892193906%_
                    (lambda (_%g193893193903%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g193893193903%_))))
                   (_%g193891193985%_
                    (lambda (_%g193893193909%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g193893193909%_))
                          (let ((_%e193896193911%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g193893193909%_))))
                            (let ((_%hd193897193914%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193896193911%_)))
                                  (_%tl193898193916%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193896193911%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193898193916%_))
                                  (let ((_%e193899193919%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193898193916%_))))
                                    (let ((_%hd193900193922%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193899193919%_)))
                                          (_%tl193901193924%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193899193919%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193901193924%_))
                                          ((lambda (_%L193927%_ _%L193928%_)
                                             (let* ((_%klass193944%_
                                                     (let ((__tmp196792
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self193880%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx193875%_
                                                        __tmp196792)))
                                                    (_%field193946%_
                                                     (let ((__tmp196793
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self193880%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass193944%_
                                                        __tmp196793)))
                                                    (_%object193948%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx193874%_
                                                        _%L193928%_)))
                                                    (_%value193950%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx193874%_
                                                        _%L193927%_)))
                                                    (_%klass193953%_
                                                     _%klass193944%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass193953%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp196794
                                                          (cons (if (or _%arguments-ok?193890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self193880%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193880%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field193946%_ '()))
                                    (cons _%object193948%_
                                          (cons _%value193950%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp196794
                                                      _%stx193875%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass193953%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp196795
                                                              (cons (if (or _%arguments-ok?193890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self193880%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self193880%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field193946%_ '()))
                                        (cons _%object193948%_
                                              (cons _%value193950%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp196795 _%stx193875%_))
               (let ((_%$e193973%_
                      (let ((__tmp196796
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self193880%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass193953%_
                         __tmp196796))))
                 (if _%$e193973%_
                     ((lambda (_%klass193976%_)
                        (let ((__tmp196797
                               (cons (if (or _%arguments-ok?193890%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self193880%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self193880%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field193946%_
                                                             '()))
                                                 (cons _%object193948%_
                                                       (cons _%value193950%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp196797 _%stx193875%_)))
                      _%$e193973%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self193880%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp196798
                                (let ((_%$obj193982%_
                                       (let ((__tmp196799
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp196799))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj193982%_
                                                                '())
                                                          (cons _%object193948%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass193953%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj193982%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self193880%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field193946%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj193982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value193950%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?193890%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj193982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self193880%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value193950%_ '())))))
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
                                 _%self193880%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj193982%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193880%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value193950%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp196798 _%stx193875%_))
                         (let ((__tmp196800
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object193948%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self193880%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value193950%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp196800
                            _%stx193875%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd193900193922%_
                                           _%hd193897193914%_)
                                          (_%g193892193906%_
                                           _%g193893193909%_))))
                                  (_%g193892193906%_ _%g193893193909%_))))
                          (_%g193892193906%_ _%g193893193909%_)))))
              (_%g193891193985%_ _%args193876%_))))))
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
      (lambda (_%self191955193685%_ _%ctx193687%_ _%stx193688%_ _%args193689%_)
        (let* ((_%self193691%_ _%self191955193685%_)
               (_%self193693%_ _%self193691%_)
               (_%self193702193712%_ _%self193693%_)
               (_%E193704193716%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self193702193712%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K193705193726%_
                (lambda (_%inline193719%_ _%dispatch193720%_ _%arity193721%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self193693%_
                         _%args193689%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx193688%_
                         _%arity193721%_)))
                  (if _%inline193719%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp196801 (_%inline193719%_ _%stx193688%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp196801
                           _%stx193688%_
                           _%ctx193687%_)))
                      (if (and _%dispatch193720%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch193720%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch193720%_))
                            (let ((__tmp196802
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch193720%_
                                                           '()))
                                               _%args193689%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp196802
                               _%stx193688%_
                               _%ctx193687%_)))
                          (gxc#!procedure::optimize-call
                           _%self193693%_
                           _%ctx193687%_
                           _%stx193688%_
                           _%args193689%_)))))
               (_%e193706193729%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193702193712%_ '1 '#f '#f)))
               (_%e193707193732%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193702193712%_ '2 '#f '#f)))
               (_%e193708193735%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193702193712%_ '3 '#f '#f)))
               (_%arity193738%_ _%e193708193735%_)
               (_%e193709193740%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193702193712%_ '4 '#f '#f)))
               (_%dispatch193743%_ _%e193709193740%_)
               (_%e193710193745%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193702193712%_ '5 '#f '#f)))
               (_%inline193748%_ _%e193710193745%_))
          (_%K193705193726%_
           _%inline193748%_
           _%dispatch193743%_
           _%arity193738%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self191956193535%_ _%ctx193537%_ _%stx193538%_ _%args193539%_)
        (let* ((_%self193541%_ _%self191956193535%_)
               (_%self193543%_ _%self193541%_)
               (_%$e193557%_
                (let ((__tmp196804
                       (lambda (_%g193552193554%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g193552193554%_
                            _%args193539%_))))
                      (__tmp196803
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self193543%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp196804 __tmp196803))))
          (if _%$e193557%_
              ((lambda (_%clause193560%_)
                 (let ((__method196708
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause193560%_ 'optimize-call))))
                   (if __method196708
                       (let ()
                         (declare (not safe))
                         (__method196708
                          _%clause193560%_
                          _%ctx193537%_
                          _%stx193538%_
                          _%args193539%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause193560%_
                                  'optimize-call))
                         '#!void))))
               _%$e193557%_)
              (let ((__tmp196805
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self193543%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx193538%_
                 __tmp196805))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self191957193273%_ _%ctx193275%_ _%stx193276%_ _%args193277%_)
        (let* ((_%self193279%_ _%self191957193273%_)
               (_%self193281%_ _%self193279%_)
               (_%self193290193299%_ _%self193281%_)
               (_%E193292193303%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self193290193299%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K193293193394%_
                (lambda (_%dispatch193306%_ _%table193307%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch193306%_))
                      (let* ((_%g193308193318%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch193306%_)))
                             (_%else193310193326%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch193306%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx193275%_
                                   _%stx193276%_))))
                             (_%K193312193375%_
                              (lambda (_%main193329%_ _%keys193330%_)
                                (let ((_g196806_
                                       (gxc#!kw-lambda-split-args
                                        _%stx193276%_
                                        _%args193277%_)))
                                  (begin
                                    (let ((_g196807_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g196806_)
                                                 (##vector-length _g196806_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g196807_ 2)))
                                          (error "Context expects 2 values"
                                                 _g196807_)))
                                    (let ((_%pargs193332%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g196806_ 0)))
                                          (_%kwargs193333%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g196806_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main193329%_))
                                        (if _%table193307%_
                                            (let ((_%xargs193341%_
                                                   (map (lambda (_%key193335%_)
                                                          (let ((_%$e193337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key193335%_ _%kwargs193333%_))))
                    (if _%$e193337%_ _%$e193337%_ '(%#ref absent-value))))
                _%keys193330%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw193343%_)
                                                 (if (memq (car _%kw193343%_)
                                                           _%keys193330%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx193276%_
                                                        _%keys193330%_
                                                        _%kw193343%_))))
                                               _%kwargs193333%_)
                                              (let ((__tmp196808
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main193329%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs193332%_
                                  _%xargs193341%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp196808
                                                 _%stx193276%_
                                                 _%ctx193275%_)))
                                            (let* ((_%kwt193345%_
                                                    (let ((__tmp196809
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp196809)))
                                                   (_%kwvars193349%_
                                                    (map (lambda (_%_193347%_)
                                                           (let ((__tmp196810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp196810)))
                 _%kwargs193333%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind193354%_
                                                    (map (lambda (_%kw193351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar193352%_)
                   (cons (cons _%kwvar193352%_ '())
                         (cons (cdr _%kw193351%_) '())))
                 _%kwargs193333%_
                 _%kwvars193349%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset193359%_
                                                    (map (lambda (_%kw193356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar193357%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt193345%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw193356%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar193357%_
                                                             '()))
                                                 '()))))))
                 _%kwargs193333%_
                 _%kwvars193349%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs193364%_
                                                    (map (lambda (_%kw193361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar193362%_)
                   (cons (car _%kw193361%_)
                         (cons '%#ref (cons _%kwvar193362%_ '()))))
                 _%kwargs193333%_
                 _%kwvars193349%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs193372%_
                                                    (map (lambda (_%key193366%_)
                                                           (let ((_%$e193368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key193366%_ _%xkwargs193364%_))))
                     (if _%$e193368%_ _%$e193368%_ '(%#ref absent-value))))
                 _%keys193330%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp196811
                                                    (cons '%#let-values
                                                          (cons _%kwbind193354%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt193345%_ '())
                                                      (cons (let ((__tmp196812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs193333%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp196812 _%stx193276%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp196813
                                                             (cons (let ((__tmp196814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main193329%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt193345%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs193332%_
                                                       _%xargs193372%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp196814 _%stx193276%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp196813 _%kwset193359%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp196811
                                               _%stx193276%_
                                               _%ctx193275%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g193308193318%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e193313193378%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g193308193318%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e193314193381%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g193308193318%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e193315193384%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g193308193318%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys193387%_ _%e193315193384%_)
                                   (_%e193316193389%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g193308193318%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main193392%_ _%e193316193389%_))
                              (_%K193312193375%_
                               _%main193392%_
                               _%keys193387%_))
                            (_%else193310193326%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx193275%_ _%stx193276%_)))))
               (_%e193294193397%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193290193299%_ '1 '#f '#f)))
               (_%e193295193400%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193290193299%_ '2 '#f '#f)))
               (_%e193296193403%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193290193299%_ '3 '#f '#f)))
               (_%table193406%_ _%e193296193403%_)
               (_%e193297193408%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193290193299%_ '4 '#f '#f)))
               (_%dispatch193411%_ _%e193297193408%_))
          (_%K193293193394%_ _%dispatch193411%_ _%table193406%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx192886%_ _%args192887%_)
        (let _%lp192889%_ ((_%rest192891%_ _%args192887%_)
                           (_%pargs192892%_ '())
                           (_%kwargs192893%_ '()))
          (let* ((_%__stx196267196268%_ _%rest192891%_)
                 (_%g192899192951%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx196267196268%_)))))
            (let ((_%__kont196269196270%_
                   (lambda (_%L193130%_ _%L193131%_)
                     (_%lp192889%_
                      _%L193130%_
                      (cons _%L193131%_ _%pargs192892%_)
                      _%kwargs192893%_)))
                  (_%__kont196271196272%_
                   (lambda (_%L193076%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L193076%_ _%pargs192892%_))
                             (reverse _%kwargs192893%_))))
                  (_%__kont196273196274%_
                   (lambda (_%L193023%_ _%L193024%_ _%L193025%_)
                     (let ((_%kw193042%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L193025%_))))
                       (if (assq _%kw193042%_ _%kwargs192893%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx192886%_
                              _%kw193042%_))
                           (_%lp192889%_
                            _%L193023%_
                            _%pargs192892%_
                            (cons (cons _%kw193042%_ _%L193024%_)
                                  _%kwargs192893%_))))))
                  (_%__kont196275196276%_
                   (lambda (_%L192971%_ _%L192972%_)
                     (_%lp192889%_
                      _%L192971%_
                      (cons _%L192972%_ _%pargs192892%_)
                      _%kwargs192893%_)))
                  (_%__kont196277196278%_
                   (lambda ()
                     (values (reverse _%pargs192892%_)
                             (reverse _%kwargs192893%_)))))
              (let ((_%__match196374196375%_
                     (lambda (_%e192930192991%_
                              _%hd192931192994%_
                              _%tl192932192996%_
                              _%e192933192999%_
                              _%hd192934193002%_
                              _%tl192935193004%_
                              _%e192936193007%_
                              _%hd192937193010%_
                              _%tl192938193012%_
                              _%e192939193015%_
                              _%hd192940193018%_
                              _%tl192941193020%_)
                       (let ((_%L193023%_ _%tl192941193020%_)
                             (_%L193024%_ _%hd192940193018%_)
                             (_%L193025%_ _%hd192937193010%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L193025%_))
                             (_%__kont196273196274%_
                              _%L193023%_
                              _%L193024%_
                              _%L193025%_)
                             (_%__kont196275196276%_
                              _%tl192932192996%_
                              _%hd192931192994%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx196267196268%_))
                    (let ((_%e192903193095%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx196267196268%_))))
                      (let ((_%tl192905193100%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192903193095%_)))
                            (_%hd192904193098%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192903193095%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd192904193098%_))
                            (let ((_%e192906193103%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd192904193098%_))))
                              (let ((_%tl192908193108%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192906193103%_)))
                                    (_%hd192907193106%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192906193103%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd192907193106%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd192907193106%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl192908193108%_))
                                            (let ((_%e192909193111%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl192908193108%_))))
                                              (let ((_%tl192911193116%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e192909193111%_)))
                                                    (_%hd192910193114%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e192909193111%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd192910193114%_))
                                                    (let ((_%e192912193119%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd192910193114%_))))
                                                      (if (equal? _%e192912193119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192911193116%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192905193100%_))
                          (let ((_%e192913193122%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192905193100%_))))
                            (let ((_%tl192915193127%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192913193122%_)))
                                  (_%hd192914193125%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192913193122%_))))
                              (_%__kont196269196270%_
                               _%tl192915193127%_
                               _%hd192914193125%_)))
                          (_%__kont196275196276%_
                           _%tl192905193100%_
                           _%hd192904193098%_))
                      (_%__kont196275196276%_
                       _%tl192905193100%_
                       _%hd192904193098%_))
                  (if (equal? _%e192912193119%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192911193116%_))
                          (_%__kont196271196272%_ _%tl192905193100%_)
                          (_%__kont196275196276%_
                           _%tl192905193100%_
                           _%hd192904193098%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192911193116%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192905193100%_))
                              (let ((_%e192939193015%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192905193100%_))))
                                (let ((_%tl192941193020%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192939193015%_)))
                                      (_%hd192940193018%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192939193015%_))))
                                  (_%__match196374196375%_
                                   _%e192903193095%_
                                   _%hd192904193098%_
                                   _%tl192905193100%_
                                   _%e192906193103%_
                                   _%hd192907193106%_
                                   _%tl192908193108%_
                                   _%e192909193111%_
                                   _%hd192910193114%_
                                   _%tl192911193116%_
                                   _%e192939193015%_
                                   _%hd192940193018%_
                                   _%tl192941193020%_)))
                              (_%__kont196275196276%_
                               _%tl192905193100%_
                               _%hd192904193098%_))
                          (_%__kont196275196276%_
                           _%tl192905193100%_
                           _%hd192904193098%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192911193116%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl192905193100%_))
                                                            (let ((_%e192939193015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl192905193100%_))))
                      (let ((_%tl192941193020%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192939193015%_)))
                            (_%hd192940193018%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192939193015%_))))
                        (_%__match196374196375%_
                         _%e192903193095%_
                         _%hd192904193098%_
                         _%tl192905193100%_
                         _%e192906193103%_
                         _%hd192907193106%_
                         _%tl192908193108%_
                         _%e192909193111%_
                         _%hd192910193114%_
                         _%tl192911193116%_
                         _%e192939193015%_
                         _%hd192940193018%_
                         _%tl192941193020%_)))
                    (_%__kont196275196276%_
                     _%tl192905193100%_
                     _%hd192904193098%_))
                (_%__kont196275196276%_
                 _%tl192905193100%_
                 _%hd192904193098%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont196275196276%_
                                             _%tl192905193100%_
                                             _%hd192904193098%_))
                                        (_%__kont196275196276%_
                                         _%tl192905193100%_
                                         _%hd192904193098%_))
                                    (_%__kont196275196276%_
                                     _%tl192905193100%_
                                     _%hd192904193098%_))))
                            (_%__kont196275196276%_
                             _%tl192905193100%_
                             _%hd192904193098%_))))
                    (_%__kont196277196278%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self191958192868%_ _%ctx192870%_ _%stx192871%_ _%args192872%_)
        (let* ((_%self192874%_ _%self191958192868%_)
               (_%self192876%_ _%self192874%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx192870%_ _%stx192871%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self192556%_ _%stx192557%_)
        (let* ((_%__stx196383196384%_ _%stx192557%_)
               (_%g192560192600%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx196383196384%_)))))
          (let ((_%__kont196385196386%_
                 (lambda (_%L192706%_ _%L192707%_)
                   (let ((_%$e192734%_
                          (member 'return:
                                  (let ((__tmp196815
                                         (lambda (_%g192726192729%_
                                                  _%g192727192731%_)
                                           (cons _%g192726192729%_
                                                 _%g192727192731%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp196815 '() _%L192707%_))
                                  gx#stx-eq?)))
                     (if _%$e192734%_
                         ((lambda (_%tail192737%_)
                            (let ((_%type192739%_
                                   (let ((__tmp196816
                                          (let ((__tmp196817
                                                 (cadr _%tail192737%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp196817))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx192557%_
                                      __tmp196816))))
                              (gxc#check-return-type!
                               _%stx192557%_
                               _%L192706%_
                               _%type192739%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self192556%_
                                 _%L192706%_))))
                          _%$e192734%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self192556%_ _%L192706%_))))))
                (_%__kont196389196390%_
                 (lambda (_%L192629%_ _%L192630%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self192556%_ _%L192629%_)))))
            (let ((_%__match196420196421%_
                   (lambda (_%e192564192650%_
                            _%hd192565192653%_
                            _%tl192566192655%_
                            _%e192567192658%_
                            _%hd192568192661%_
                            _%tl192569192663%_
                            _%e192570192666%_
                            _%hd192571192669%_
                            _%tl192572192671%_
                            _%__splice196387196388%_
                            _%target192573192674%_
                            _%tl192575192676%_)
                     (letrec ((_%loop192576192679%_
                               (lambda (_%hd192574192682%_
                                        _%signature192580192684%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd192574192682%_))
                                     (let ((_%e192577192687%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd192574192682%_))))
                                       (let ((_%lp-tl192579192692%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e192577192687%_)))
                                             (_%lp-hd192578192690%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e192577192687%_))))
                                         (_%loop192576192679%_
                                          _%lp-tl192579192692%_
                                          (cons _%lp-hd192578192690%_
                                                _%signature192580192684%_))))
                                     (let ((_%signature192581192695%_
                                            (reverse _%signature192580192684%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl192569192663%_))
                                           (let ((_%e192582192698%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl192569192663%_))))
                                             (let ((_%tl192584192703%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e192582192698%_)))
                                                   (_%hd192583192701%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e192582192698%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl192584192703%_))
                                                   (_%__kont196385196386%_
                                                    _%hd192583192701%_
                                                    _%signature192581192695%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g192560192600%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g192560192600%_))))))))
                       (_%loop192576192679%_ _%target192573192674%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx196383196384%_))
                  (let ((_%e192564192650%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx196383196384%_))))
                    (let ((_%tl192566192655%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192564192650%_)))
                          (_%hd192565192653%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192564192650%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192566192655%_))
                          (let ((_%e192567192658%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192566192655%_))))
                            (let ((_%tl192569192663%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192567192658%_)))
                                  (_%hd192568192661%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192567192658%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd192568192661%_))
                                  (let ((_%e192570192666%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd192568192661%_))))
                                    (let ((_%tl192572192671%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192570192666%_)))
                                          (_%hd192571192669%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192570192666%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd192571192669%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd192571192669%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl192572192671%_))
                                                  (let ((_%__splice196387196388%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl192572192671%_
                                                            '0))))
                                                    (let ((_%tl192575192676%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196387196388%_
                                                              '1)))
                                                          (_%target192573192674%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice196387196388%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192575192676%_))
                                                          (_%__match196420196421%_
                                                           _%e192564192650%_
                                                           _%hd192565192653%_
                                                           _%tl192566192655%_
                                                           _%e192567192658%_
                                                           _%hd192568192661%_
                                                           _%tl192569192663%_
                                                           _%e192570192666%_
                                                           _%hd192571192669%_
                                                           _%tl192572192671%_
                                                           _%__splice196387196388%_
                                                           _%target192573192674%_
                                                           _%tl192575192676%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl192569192663%_))
                      (let ((_%e192593192621%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192569192663%_))))
                        (let ((_%tl192595192626%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192593192621%_)))
                              (_%hd192594192624%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192593192621%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192595192626%_))
                              (_%__kont196389196390%_
                               _%hd192594192624%_
                               _%hd192568192661%_)
                              (let ()
                                (declare (not safe))
                                (_%g192560192600%_)))))
                      (let () (declare (not safe)) (_%g192560192600%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192569192663%_))
                                                      (let ((_%e192593192621%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192569192663%_))))
                (let ((_%tl192595192626%_
                       (let () (declare (not safe)) (##cdr _%e192593192621%_)))
                      (_%hd192594192624%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192593192621%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192595192626%_))
                      (_%__kont196389196390%_
                       _%hd192594192624%_
                       _%hd192568192661%_)
                      (let () (declare (not safe)) (_%g192560192600%_)))))
              (let () (declare (not safe)) (_%g192560192600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192569192663%_))
                                                  (let ((_%e192593192621%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192569192663%_))))
                                                    (let ((_%tl192595192626%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192593192621%_)))
                                                          (_%hd192594192624%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192593192621%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192595192626%_))
                                                          (_%__kont196389196390%_
                                                           _%hd192594192624%_
                                                           _%hd192568192661%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g192560192600%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g192560192600%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192569192663%_))
                                              (let ((_%e192593192621%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192569192663%_))))
                                                (let ((_%tl192595192626%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192593192621%_)))
                                                      (_%hd192594192624%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192593192621%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192595192626%_))
                                                      (_%__kont196389196390%_
                                                       _%hd192594192624%_
                                                       _%hd192568192661%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g192560192600%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g192560192600%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192569192663%_))
                                      (let ((_%e192593192621%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192569192663%_))))
                                        (let ((_%tl192595192626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192593192621%_)))
                                              (_%hd192594192624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192593192621%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192595192626%_))
                                              (_%__kont196389196390%_
                                               _%hd192594192624%_
                                               _%hd192568192661%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g192560192600%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g192560192600%_))))))
                          (let () (declare (not safe)) (_%g192560192600%_)))))
                  (let () (declare (not safe)) (_%g192560192600%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx192534%_ _%expr192535%_ _%type192536%_)
        (let ((_%$e192538%_ (not _%type192536%_)))
          (if _%$e192538%_
              _%$e192538%_
              (let ((_%$e192541%_
                     (eq? (##structure-ref _%type192536%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e192541%_
                    _%$e192541%_
                    (let ((_%expr-type192545%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr192535%_))))
                      (if (not _%expr-type192545%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx192534%_
                             _%type192536%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type192545%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx192534%_
                                 _%type192536%_
                                 _%expr-type192545%_))
                              (let ((_%$e192549%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type192545%_
                                        'gxc#!abort::t))))
                                (if _%$e192549%_
                                    _%$e192549%_
                                    (let ((_%$e192552%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type192545%_
                                              _%type192536%_))))
                                      (if _%$e192552%_
                                          _%$e192552%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx192534%_
                                             _%type192536%_
                                             _%expr-type192545%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self191960%_ _%stx191961%_)
        (let* ((_%__stx196465196466%_ _%stx191961%_)
               (_%g191966192076%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx196465196466%_)))))
          (let ((_%__kont196467196468%_
                 (lambda (_%L192508%_ _%L192509%_ _%L192510%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L192510%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self191960%_ _%L192509%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self191960%_ _%L192508%_)))))
                (_%__kont196469196470%_
                 (lambda (_%L192334%_ _%L192335%_ _%L192336%_ _%L192337%_)
                   (let ((_%$e192369%_
                          (let ((__tmp196818
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L192337%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp196818))))
                     (if _%$e192369%_
                         ((lambda (_%pred-type192372%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type192372%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type192372%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test192377%_
                                        (let ((__tmp196819
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L192337%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L192336%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp196819
                                           _%stx191961%_
                                           _%self191960%_)))
                                       (_%K192381%_
                                        (let ((__tmp196820
                                               (lambda ()
                                                 (let ((__tmp196823
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self191960%_
                                                             _%L192335%_))))
                                                       (__tmp196821
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L192336%_))
                            (let ((__tmp196822
                                   (##structure-ref
                                    _%pred-type192372%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx191961%_
                               __tmp196822)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp196823
                                                    gxc#current-compile-path-type
                                                    __tmp196821)))))
                                          (declare (not safe))
                                          (__make-promise __tmp196820)))
                                       (_%E192384%_
                                        (let ((__tmp196824
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self191960%_
                                                    _%L192334%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp196824)))
                                       (_%__stx196443196444%_ _%test192377%_)
                                       (_%g192388192402%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx196443196444%_)))))
                                  (let ((_%__kont196445196446%_
                                         (lambda (_%L192430%_ _%L192431%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L192430%_))
                                               (force _%K192381%_)
                                               (force _%E192384%_))))
                                        (_%__kont196447196448%_
                                         (lambda ()
                                           (let ((__tmp196825
                                                  (cons '%#if
                                                        (cons _%test192377%_
                                                              (cons (force _%K192381%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E192384%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp196825
                                              _%stx191961%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx196443196444%_))
                                        (let ((_%e192392192414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx196443196444%_))))
                                          (let ((_%tl192394192419%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e192392192414%_)))
                                                (_%hd192393192417%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e192392192414%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192394192419%_))
                                                (let ((_%e192395192422%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192394192419%_))))
                                                  (let ((_%tl192397192427%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192395192422%_)))
                                                        (_%hd192396192425%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192395192422%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192397192427%_))
                                                        (_%__kont196445196446%_
                                                         _%hd192396192425%_
                                                         _%hd192393192417%_)
                                                        (_%__kont196447196448%_))))
                                                (_%__kont196447196448%_))))
                                        (_%__kont196447196448%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self191960%_
                                   _%stx191961%_))))
                          _%$e192369%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self191960%_
                            _%stx191961%_))))))
                (_%__kont196471196472%_
                 (lambda (_%L192210%_ _%L192211%_ _%L192212%_ _%L192213%_)
                   (gxc#optimize-if%
                    _%self191960%_
                    (let ((__tmp196826
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L192212%_
                                       (cons _%L192210%_
                                             (cons _%L192211%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp196826 _%stx191961%_)))))
                (_%__kont196473196474%_
                 (lambda (_%L192113%_ _%L192114%_ _%L192115%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self191960%_ _%stx191961%_)))))
            (let ((_%__match196672196673%_
                   (lambda (_%e192030192138%_
                            _%hd192031192141%_
                            _%tl192032192143%_
                            _%e192033192146%_
                            _%hd192034192149%_
                            _%tl192035192151%_
                            _%e192036192154%_
                            _%hd192037192157%_
                            _%tl192038192159%_
                            _%e192039192162%_
                            _%hd192040192165%_
                            _%tl192041192167%_
                            _%e192042192170%_
                            _%hd192043192173%_
                            _%tl192044192175%_
                            _%e192045192178%_
                            _%hd192046192181%_
                            _%tl192047192183%_
                            _%e192048192186%_
                            _%hd192049192189%_
                            _%tl192050192191%_
                            _%e192051192194%_
                            _%hd192052192197%_
                            _%tl192053192199%_
                            _%e192054192202%_
                            _%hd192055192205%_
                            _%tl192056192207%_)
                     (let ((_%L192210%_ _%hd192055192205%_)
                           (_%L192211%_ _%hd192052192197%_)
                           (_%L192212%_ _%hd192049192189%_)
                           (_%L192213%_ _%hd192046192181%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L192213%_ 'not))
                           (_%__kont196471196472%_
                            _%L192210%_
                            _%L192211%_
                            _%L192212%_
                            _%L192213%_)
                           (_%__kont196473196474%_
                            _%hd192055192205%_
                            _%hd192052192197%_
                            _%hd192034192149%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx196465196466%_))
                  (let ((_%e191971192460%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx196465196466%_))))
                    (let ((_%tl191973192465%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191971192460%_)))
                          (_%hd191972192463%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191971192460%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191973192465%_))
                          (let ((_%e191974192468%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191973192465%_))))
                            (let ((_%tl191976192473%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191974192468%_)))
                                  (_%hd191975192471%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191974192468%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191975192471%_))
                                  (let ((_%e191977192476%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191975192471%_))))
                                    (let ((_%tl191979192481%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191977192476%_)))
                                          (_%hd191978192479%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191977192476%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191978192479%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd191978192479%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191979192481%_))
                                                  (let ((_%e191980192484%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191979192481%_))))
                                                    (let ((_%tl191982192489%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191980192484%_)))
                                                          (_%hd191981192487%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191980192484%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191982192489%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191976192473%_))
                      (let ((_%e191983192492%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191976192473%_))))
                        (let ((_%tl191985192497%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191983192492%_)))
                              (_%hd191984192495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191983192492%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191985192497%_))
                              (let ((_%e191986192500%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191985192497%_))))
                                (let ((_%tl191988192505%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191986192500%_)))
                                      (_%hd191987192503%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191986192500%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191988192505%_))
                                      (_%__kont196467196468%_
                                       _%hd191987192503%_
                                       _%hd191984192495%_
                                       _%hd191981192487%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g191966192076%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g191966192076%_)))))
                      (let () (declare (not safe)) (_%g191966192076%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl191976192473%_))
                      (let ((_%e192066192097%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191976192473%_))))
                        (let ((_%tl192068192102%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192066192097%_)))
                              (_%hd192067192100%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192066192097%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192068192102%_))
                              (let ((_%e192069192105%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192068192102%_))))
                                (let ((_%tl192071192110%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192069192105%_)))
                                      (_%hd192070192108%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192069192105%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192071192110%_))
                                      (_%__kont196473196474%_
                                       _%hd192070192108%_
                                       _%hd192067192100%_
                                       _%hd191975192471%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g191966192076%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g191966192076%_)))))
                      (let () (declare (not safe)) (_%g191966192076%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191976192473%_))
                                                      (let ((_%e192066192097%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191976192473%_))))
                (let ((_%tl192068192102%_
                       (let () (declare (not safe)) (##cdr _%e192066192097%_)))
                      (_%hd192067192100%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192066192097%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192068192102%_))
                      (let ((_%e192069192105%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192068192102%_))))
                        (let ((_%tl192071192110%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192069192105%_)))
                              (_%hd192070192108%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192069192105%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192071192110%_))
                              (_%__kont196473196474%_
                               _%hd192070192108%_
                               _%hd192067192100%_
                               _%hd191975192471%_)
                              (let ()
                                (declare (not safe))
                                (_%g191966192076%_)))))
                      (let () (declare (not safe)) (_%g191966192076%_)))))
              (let () (declare (not safe)) (_%g191966192076%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd191978192479%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191979192481%_))
                                                      (let ((_%e192002192270%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191979192481%_))))
                (let ((_%tl192004192275%_
                       (let () (declare (not safe)) (##cdr _%e192002192270%_)))
                      (_%hd192003192273%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192002192270%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd192003192273%_))
                      (let ((_%e192005192278%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd192003192273%_))))
                        (let ((_%tl192007192283%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192005192278%_)))
                              (_%hd192006192281%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192005192278%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd192006192281%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd192006192281%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192007192283%_))
                                      (let ((_%e192008192286%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192007192283%_))))
                                        (let ((_%tl192010192291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192008192286%_)))
                                              (_%hd192009192289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192008192286%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192010192291%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192004192275%_))
                                                  (let ((_%e192011192294%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192004192275%_))))
                                                    (let ((_%tl192013192299%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192011192294%_)))
                                                          (_%hd192012192297%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192011192294%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd192012192297%_))
                                                          (let ((_%e192014192302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd192012192297%_))))
                    (let ((_%tl192016192307%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192014192302%_)))
                          (_%hd192015192305%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192014192302%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd192015192305%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd192015192305%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192016192307%_))
                                  (let ((_%e192017192310%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192016192307%_))))
                                    (let ((_%tl192019192315%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192017192310%_)))
                                          (_%hd192018192313%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192017192310%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192019192315%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192013192299%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191976192473%_))
                                                  (let ((_%e192020192318%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191976192473%_))))
                                                    (let ((_%tl192022192323%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192020192318%_)))
                                                          (_%hd192021192321%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192020192318%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192022192323%_))
                                                          (let ((_%e192023192326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192022192323%_))))
                    (let ((_%tl192025192331%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192023192326%_)))
                          (_%hd192024192329%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192023192326%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192025192331%_))
                          (_%__kont196469196470%_
                           _%hd192024192329%_
                           _%hd192021192321%_
                           _%hd192018192313%_
                           _%hd192009192289%_)
                          (let () (declare (not safe)) (_%g191966192076%_)))))
                  (let () (declare (not safe)) (_%g191966192076%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191966192076%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191976192473%_))
                                                  (let ((_%e192066192097%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191976192473%_))))
                                                    (let ((_%tl192068192102%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192066192097%_)))
                                                          (_%hd192067192100%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192066192097%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192068192102%_))
                                                          (let ((_%e192069192105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192068192102%_))))
                    (let ((_%tl192071192110%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192069192105%_)))
                          (_%hd192070192108%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192069192105%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192071192110%_))
                          (_%__kont196473196474%_
                           _%hd192070192108%_
                           _%hd192067192100%_
                           _%hd191975192471%_)
                          (let () (declare (not safe)) (_%g191966192076%_)))))
                  (let () (declare (not safe)) (_%g191966192076%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191966192076%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192013192299%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191976192473%_))
                                                  (let ((_%e192051192194%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191976192473%_))))
                                                    (let ((_%tl192053192199%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192051192194%_)))
                                                          (_%hd192052192197%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192051192194%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192053192199%_))
                                                          (let ((_%e192054192202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192053192199%_))))
                    (let ((_%tl192056192207%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192054192202%_)))
                          (_%hd192055192205%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192054192202%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192056192207%_))
                          (_%__match196672196673%_
                           _%e191971192460%_
                           _%hd191972192463%_
                           _%tl191973192465%_
                           _%e191974192468%_
                           _%hd191975192471%_
                           _%tl191976192473%_
                           _%e191977192476%_
                           _%hd191978192479%_
                           _%tl191979192481%_
                           _%e192002192270%_
                           _%hd192003192273%_
                           _%tl192004192275%_
                           _%e192005192278%_
                           _%hd192006192281%_
                           _%tl192007192283%_
                           _%e192008192286%_
                           _%hd192009192289%_
                           _%tl192010192291%_
                           _%e192011192294%_
                           _%hd192012192297%_
                           _%tl192013192299%_
                           _%e192051192194%_
                           _%hd192052192197%_
                           _%tl192053192199%_
                           _%e192054192202%_
                           _%hd192055192205%_
                           _%tl192056192207%_)
                          (let () (declare (not safe)) (_%g191966192076%_)))))
                  (let () (declare (not safe)) (_%g191966192076%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191966192076%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191976192473%_))
                                                  (let ((_%e192066192097%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191976192473%_))))
                                                    (let ((_%tl192068192102%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192066192097%_)))
                                                          (_%hd192067192100%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192066192097%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192068192102%_))
                                                          (let ((_%e192069192105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192068192102%_))))
                    (let ((_%tl192071192110%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192069192105%_)))
                          (_%hd192070192108%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192069192105%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192071192110%_))
                          (_%__kont196473196474%_
                           _%hd192070192108%_
                           _%hd192067192100%_
                           _%hd191975192471%_)
                          (let () (declare (not safe)) (_%g191966192076%_)))))
                  (let () (declare (not safe)) (_%g191966192076%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191966192076%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192013192299%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191976192473%_))
                                          (let ((_%e192051192194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191976192473%_))))
                                            (let ((_%tl192053192199%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192051192194%_)))
                                                  (_%hd192052192197%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192051192194%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192053192199%_))
                                                  (let ((_%e192054192202%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192053192199%_))))
                                                    (let ((_%tl192056192207%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192054192202%_)))
                                                          (_%hd192055192205%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192054192202%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192056192207%_))
                                                          (_%__match196672196673%_
                                                           _%e191971192460%_
                                                           _%hd191972192463%_
                                                           _%tl191973192465%_
                                                           _%e191974192468%_
                                                           _%hd191975192471%_
                                                           _%tl191976192473%_
                                                           _%e191977192476%_
                                                           _%hd191978192479%_
                                                           _%tl191979192481%_
                                                           _%e192002192270%_
                                                           _%hd192003192273%_
                                                           _%tl192004192275%_
                                                           _%e192005192278%_
                                                           _%hd192006192281%_
                                                           _%tl192007192283%_
                                                           _%e192008192286%_
                                                           _%hd192009192289%_
                                                           _%tl192010192291%_
                                                           _%e192011192294%_
                                                           _%hd192012192297%_
                                                           _%tl192013192299%_
                                                           _%e192051192194%_
                                                           _%hd192052192197%_
                                                           _%tl192053192199%_
                                                           _%e192054192202%_
                                                           _%hd192055192205%_
                                                           _%tl192056192207%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g191966192076%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191966192076%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191966192076%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191976192473%_))
                                          (let ((_%e192066192097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191976192473%_))))
                                            (let ((_%tl192068192102%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192066192097%_)))
                                                  (_%hd192067192100%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192066192097%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192068192102%_))
                                                  (let ((_%e192069192105%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192068192102%_))))
                                                    (let ((_%tl192071192110%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192069192105%_)))
                                                          (_%hd192070192108%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192069192105%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192071192110%_))
                                                          (_%__kont196473196474%_
                                                           _%hd192070192108%_
                                                           _%hd192067192100%_
                                                           _%hd191975192471%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g191966192076%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191966192076%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191966192076%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192013192299%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191976192473%_))
                                      (let ((_%e192051192194%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191976192473%_))))
                                        (let ((_%tl192053192199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192051192194%_)))
                                              (_%hd192052192197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192051192194%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192053192199%_))
                                              (let ((_%e192054192202%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192053192199%_))))
                                                (let ((_%tl192056192207%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192054192202%_)))
                                                      (_%hd192055192205%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192054192202%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192056192207%_))
                                                      (_%__match196672196673%_
                                                       _%e191971192460%_
                                                       _%hd191972192463%_
                                                       _%tl191973192465%_
                                                       _%e191974192468%_
                                                       _%hd191975192471%_
                                                       _%tl191976192473%_
                                                       _%e191977192476%_
                                                       _%hd191978192479%_
                                                       _%tl191979192481%_
                                                       _%e192002192270%_
                                                       _%hd192003192273%_
                                                       _%tl192004192275%_
                                                       _%e192005192278%_
                                                       _%hd192006192281%_
                                                       _%tl192007192283%_
                                                       _%e192008192286%_
                                                       _%hd192009192289%_
                                                       _%tl192010192291%_
                                                       _%e192011192294%_
                                                       _%hd192012192297%_
                                                       _%tl192013192299%_
                                                       _%e192051192194%_
                                                       _%hd192052192197%_
                                                       _%tl192053192199%_
                                                       _%e192054192202%_
                                                       _%hd192055192205%_
                                                       _%tl192056192207%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191966192076%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191966192076%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191966192076%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191976192473%_))
                                      (let ((_%e192066192097%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191976192473%_))))
                                        (let ((_%tl192068192102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192066192097%_)))
                                              (_%hd192067192100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192066192097%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192068192102%_))
                                              (let ((_%e192069192105%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192068192102%_))))
                                                (let ((_%tl192071192110%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192069192105%_)))
                                                      (_%hd192070192108%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192069192105%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192071192110%_))
                                                      (_%__kont196473196474%_
                                                       _%hd192070192108%_
                                                       _%hd192067192100%_
                                                       _%hd191975192471%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191966192076%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191966192076%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191966192076%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192013192299%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191976192473%_))
                                  (let ((_%e192051192194%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191976192473%_))))
                                    (let ((_%tl192053192199%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192051192194%_)))
                                          (_%hd192052192197%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192051192194%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192053192199%_))
                                          (let ((_%e192054192202%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192053192199%_))))
                                            (let ((_%tl192056192207%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192054192202%_)))
                                                  (_%hd192055192205%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192054192202%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192056192207%_))
                                                  (_%__match196672196673%_
                                                   _%e191971192460%_
                                                   _%hd191972192463%_
                                                   _%tl191973192465%_
                                                   _%e191974192468%_
                                                   _%hd191975192471%_
                                                   _%tl191976192473%_
                                                   _%e191977192476%_
                                                   _%hd191978192479%_
                                                   _%tl191979192481%_
                                                   _%e192002192270%_
                                                   _%hd192003192273%_
                                                   _%tl192004192275%_
                                                   _%e192005192278%_
                                                   _%hd192006192281%_
                                                   _%tl192007192283%_
                                                   _%e192008192286%_
                                                   _%hd192009192289%_
                                                   _%tl192010192291%_
                                                   _%e192011192294%_
                                                   _%hd192012192297%_
                                                   _%tl192013192299%_
                                                   _%e192051192194%_
                                                   _%hd192052192197%_
                                                   _%tl192053192199%_
                                                   _%e192054192202%_
                                                   _%hd192055192205%_
                                                   _%tl192056192207%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191966192076%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191966192076%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191966192076%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191976192473%_))
                                  (let ((_%e192066192097%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191976192473%_))))
                                    (let ((_%tl192068192102%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192066192097%_)))
                                          (_%hd192067192100%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192066192097%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192068192102%_))
                                          (let ((_%e192069192105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192068192102%_))))
                                            (let ((_%tl192071192110%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192069192105%_)))
                                                  (_%hd192070192108%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192069192105%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192071192110%_))
                                                  (_%__kont196473196474%_
                                                   _%hd192070192108%_
                                                   _%hd192067192100%_
                                                   _%hd191975192471%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191966192076%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191966192076%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191966192076%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192013192299%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191976192473%_))
                          (let ((_%e192051192194%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191976192473%_))))
                            (let ((_%tl192053192199%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192051192194%_)))
                                  (_%hd192052192197%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192051192194%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192053192199%_))
                                  (let ((_%e192054192202%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192053192199%_))))
                                    (let ((_%tl192056192207%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192054192202%_)))
                                          (_%hd192055192205%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192054192202%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192056192207%_))
                                          (_%__match196672196673%_
                                           _%e191971192460%_
                                           _%hd191972192463%_
                                           _%tl191973192465%_
                                           _%e191974192468%_
                                           _%hd191975192471%_
                                           _%tl191976192473%_
                                           _%e191977192476%_
                                           _%hd191978192479%_
                                           _%tl191979192481%_
                                           _%e192002192270%_
                                           _%hd192003192273%_
                                           _%tl192004192275%_
                                           _%e192005192278%_
                                           _%hd192006192281%_
                                           _%tl192007192283%_
                                           _%e192008192286%_
                                           _%hd192009192289%_
                                           _%tl192010192291%_
                                           _%e192011192294%_
                                           _%hd192012192297%_
                                           _%tl192013192299%_
                                           _%e192051192194%_
                                           _%hd192052192197%_
                                           _%tl192053192199%_
                                           _%e192054192202%_
                                           _%hd192055192205%_
                                           _%tl192056192207%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g191966192076%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191966192076%_)))))
                          (let () (declare (not safe)) (_%g191966192076%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191976192473%_))
                          (let ((_%e192066192097%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191976192473%_))))
                            (let ((_%tl192068192102%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192066192097%_)))
                                  (_%hd192067192100%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192066192097%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192068192102%_))
                                  (let ((_%e192069192105%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192068192102%_))))
                                    (let ((_%tl192071192110%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192069192105%_)))
                                          (_%hd192070192108%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192069192105%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192071192110%_))
                                          (_%__kont196473196474%_
                                           _%hd192070192108%_
                                           _%hd192067192100%_
                                           _%hd191975192471%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g191966192076%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191966192076%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g191966192076%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191976192473%_))
                                                      (let ((_%e192066192097%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191976192473%_))))
                (let ((_%tl192068192102%_
                       (let () (declare (not safe)) (##cdr _%e192066192097%_)))
                      (_%hd192067192100%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192066192097%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192068192102%_))
                      (let ((_%e192069192105%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192068192102%_))))
                        (let ((_%tl192071192110%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192069192105%_)))
                              (_%hd192070192108%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192069192105%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192071192110%_))
                              (_%__kont196473196474%_
                               _%hd192070192108%_
                               _%hd192067192100%_
                               _%hd191975192471%_)
                              (let ()
                                (declare (not safe))
                                (_%g191966192076%_)))))
                      (let () (declare (not safe)) (_%g191966192076%_)))))
              (let () (declare (not safe)) (_%g191966192076%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191976192473%_))
                                                  (let ((_%e192066192097%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191976192473%_))))
                                                    (let ((_%tl192068192102%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192066192097%_)))
                                                          (_%hd192067192100%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192066192097%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192068192102%_))
                                                          (let ((_%e192069192105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192068192102%_))))
                    (let ((_%tl192071192110%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192069192105%_)))
                          (_%hd192070192108%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192069192105%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl192071192110%_))
                          (_%__kont196473196474%_
                           _%hd192070192108%_
                           _%hd192067192100%_
                           _%hd191975192471%_)
                          (let () (declare (not safe)) (_%g191966192076%_)))))
                  (let () (declare (not safe)) (_%g191966192076%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191966192076%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191976192473%_))
                                          (let ((_%e192066192097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191976192473%_))))
                                            (let ((_%tl192068192102%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192066192097%_)))
                                                  (_%hd192067192100%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192066192097%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192068192102%_))
                                                  (let ((_%e192069192105%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192068192102%_))))
                                                    (let ((_%tl192071192110%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192069192105%_)))
                                                          (_%hd192070192108%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192069192105%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192071192110%_))
                                                          (_%__kont196473196474%_
                                                           _%hd192070192108%_
                                                           _%hd192067192100%_
                                                           _%hd191975192471%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g191966192076%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191966192076%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191966192076%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191976192473%_))
                                      (let ((_%e192066192097%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191976192473%_))))
                                        (let ((_%tl192068192102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192066192097%_)))
                                              (_%hd192067192100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192066192097%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192068192102%_))
                                              (let ((_%e192069192105%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192068192102%_))))
                                                (let ((_%tl192071192110%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192069192105%_)))
                                                      (_%hd192070192108%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192069192105%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192071192110%_))
                                                      (_%__kont196473196474%_
                                                       _%hd192070192108%_
                                                       _%hd192067192100%_
                                                       _%hd191975192471%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191966192076%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191966192076%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191966192076%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191976192473%_))
                                  (let ((_%e192066192097%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191976192473%_))))
                                    (let ((_%tl192068192102%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192066192097%_)))
                                          (_%hd192067192100%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192066192097%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192068192102%_))
                                          (let ((_%e192069192105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192068192102%_))))
                                            (let ((_%tl192071192110%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192069192105%_)))
                                                  (_%hd192070192108%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192069192105%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192071192110%_))
                                                  (_%__kont196473196474%_
                                                   _%hd192070192108%_
                                                   _%hd192067192100%_
                                                   _%hd191975192471%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191966192076%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191966192076%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191966192076%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191976192473%_))
                          (let ((_%e192066192097%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191976192473%_))))
                            (let ((_%tl192068192102%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192066192097%_)))
                                  (_%hd192067192100%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192066192097%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192068192102%_))
                                  (let ((_%e192069192105%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192068192102%_))))
                                    (let ((_%tl192071192110%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192069192105%_)))
                                          (_%hd192070192108%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192069192105%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192071192110%_))
                                          (_%__kont196473196474%_
                                           _%hd192070192108%_
                                           _%hd192067192100%_
                                           _%hd191975192471%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g191966192076%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191966192076%_)))))
                          (let () (declare (not safe)) (_%g191966192076%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl191976192473%_))
                  (let ((_%e192066192097%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191976192473%_))))
                    (let ((_%tl192068192102%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192066192097%_)))
                          (_%hd192067192100%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192066192097%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192068192102%_))
                          (let ((_%e192069192105%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192068192102%_))))
                            (let ((_%tl192071192110%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192069192105%_)))
                                  (_%hd192070192108%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192069192105%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192071192110%_))
                                  (_%__kont196473196474%_
                                   _%hd192070192108%_
                                   _%hd192067192100%_
                                   _%hd191975192471%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g191966192076%_)))))
                          (let () (declare (not safe)) (_%g191966192076%_)))))
                  (let () (declare (not safe)) (_%g191966192076%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191976192473%_))
                                                      (let ((_%e192066192097%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191976192473%_))))
                (let ((_%tl192068192102%_
                       (let () (declare (not safe)) (##cdr _%e192066192097%_)))
                      (_%hd192067192100%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192066192097%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl192068192102%_))
                      (let ((_%e192069192105%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192068192102%_))))
                        (let ((_%tl192071192110%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192069192105%_)))
                              (_%hd192070192108%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192069192105%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192071192110%_))
                              (_%__kont196473196474%_
                               _%hd192070192108%_
                               _%hd192067192100%_
                               _%hd191975192471%_)
                              (let ()
                                (declare (not safe))
                                (_%g191966192076%_)))))
                      (let () (declare (not safe)) (_%g191966192076%_)))))
              (let () (declare (not safe)) (_%g191966192076%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191976192473%_))
                                              (let ((_%e192066192097%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191976192473%_))))
                                                (let ((_%tl192068192102%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192066192097%_)))
                                                      (_%hd192067192100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192066192097%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192068192102%_))
                                                      (let ((_%e192069192105%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192068192102%_))))
                (let ((_%tl192071192110%_
                       (let () (declare (not safe)) (##cdr _%e192069192105%_)))
                      (_%hd192070192108%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192069192105%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192071192110%_))
                      (_%__kont196473196474%_
                       _%hd192070192108%_
                       _%hd192067192100%_
                       _%hd191975192471%_)
                      (let () (declare (not safe)) (_%g191966192076%_)))))
              (let () (declare (not safe)) (_%g191966192076%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g191966192076%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191976192473%_))
                                      (let ((_%e192066192097%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191976192473%_))))
                                        (let ((_%tl192068192102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192066192097%_)))
                                              (_%hd192067192100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192066192097%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192068192102%_))
                                              (let ((_%e192069192105%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192068192102%_))))
                                                (let ((_%tl192071192110%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192069192105%_)))
                                                      (_%hd192070192108%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192069192105%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192071192110%_))
                                                      (_%__kont196473196474%_
                                                       _%hd192070192108%_
                                                       _%hd192067192100%_
                                                       _%hd191975192471%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191966192076%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191966192076%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191966192076%_))))))
                          (let () (declare (not safe)) (_%g191966192076%_)))))
                  (let () (declare (not safe)) (_%g191966192076%_))))))))))
