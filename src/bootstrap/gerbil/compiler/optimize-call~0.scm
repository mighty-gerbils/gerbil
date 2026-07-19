(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1784279022)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp264979 (list gxc#::basic-xform::t))
            (__tmp264978 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp264979
         '()
         __tmp264978
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args264076%_
        (apply make-instance gxc#::optimize-call::t _%$args264076%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp264980
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
        (__make-atomic-promise __tmp264980)))
    (define gxc#apply-optimize-call
      (lambda (_%stx264068%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self264071%_
                (let ((__obj264970
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj264970))
               (__tmp264981
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self264071%_ _%stx264068%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp264981
           gxc#current-compile-method
           _%self264071%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp264983 (list gxc#::void::t))
            (__tmp264982 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp264983
         '()
         __tmp264982
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args264065%_
        (apply make-instance gxc#::check-return-type::t _%$args264065%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp264984
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
        (__make-atomic-promise __tmp264984)))
    (define gxc#apply-check-return-type
      (lambda (_%stx264057%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self264060%_
                (let ((__obj264972
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj264972))
               (__tmp264985
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self264060%_ _%stx264057%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp264985
           gxc#current-compile-method
           _%self264060%_))))
    (define gxc#optimize-call%
      (lambda (_%self263205%_ _%stx263206%_)
        (let* ((_%__stx264217264218%_ _%stx263206%_)
               (_%$%g263210263292%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx264217264218%_)))))
          (let ((_%__kont264219264220%_
                 (lambda (_%$%g263212263853%_ _%$%g263213263854%_)
                   (let* ((_%rator-id263874%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g263213263854%_)))
                          (_%rator-type263876%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id263874%_))))
                     (if (or (not _%rator-type263876%_)
                             (eq? (##structure-ref
                                   _%rator-type263876%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self263205%_ _%stx263206%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type263876%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp264986
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type263876%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id263874%_
                                  '" => "
                                  _%rator-type263876%_
                                  '" "
                                  __tmp264986))
                               (let* ((_%optimized263891%_
                                       (let ((__method264973
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type263876%_
                                                 'optimize-call))))
                                         (if __method264973
                                             (let ((__tmp264987
                                                    (let ((__tmp264988
                                                           (lambda (_%$%g263883263886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g263884263888%_)
                     (cons _%$%g263883263886%_ _%$%g263884263888%_))))
              (declare (not safe))
              (foldr__0 __tmp264988 '() _%$%g263212263853%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method264973
                                                _%rator-type263876%_
                                                _%self263205%_
                                                _%stx263206%_
                                                __tmp264987))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type263876%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx264165264166%_
                                       _%optimized263891%_)
                                      (_%$%g263894263923%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx264165264166%_)))))
                                 (let ((_%__kont264167264168%_
                                        (lambda (_%$%g263896263989%_
                                                 _%$%g263897263990%_)
                                          (let* ((_%optimized-rator-id264017%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%$%g263897263990%_)))
                                                 (_%rator-type264022%_
                                                  (let ((_%$e264019%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id264017%_))))
                                                    (if _%$e264019%_
                                                        _%$e264019%_
                                                        _%rator-type263876%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type264022%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id264017%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type264022%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type264022%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized263891%_
                                                (let ((__tmp264989
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%$%g263897263990%_ '()))
                           (let ((__tmp264990
                                  (lambda (_%$%g264030264033%_
                                           _%$%g264031264035%_)
                                    (cons _%$%g264030264033%_
                                          _%$%g264031264035%_))))
                             (declare (not safe))
                             (foldr__0
                              __tmp264990
                              '()
                              _%$%g263896263989%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp264989
                                                   _%stx263206%_))))))
                                       (_%__kont264171264172%_
                                        (lambda () _%optimized263891%_)))
                                   (let ((_%__match264214264215%_
                                          (lambda (_%$%e263898263935%_
                                                   _%$%hd263899263938%_
                                                   _%$%tl263900263940%_
                                                   _%$%e263901263943%_
                                                   _%$%hd263902263946%_
                                                   _%$%tl263903263948%_
                                                   _%$%e263904263951%_
                                                   _%$%hd263905263954%_
                                                   _%$%tl263906263956%_
                                                   _%$%e263907263959%_
                                                   _%$%hd263908263962%_
                                                   _%$%tl263909263964%_
                                                   _%__splice264169264170%_
                                                   _%$%target263910263967%_
                                                   _%$%tl263912263969%_)
                                            (letrec ((_%$%loop263913263972%_
                                                      (lambda (_%$%hd263911263975%_
                                                               _%$%arg263917263977%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd263911263975%_))
                                                            (let ((_%$%e263914263979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd263911263975%_))))
                      (let ((_%$%lp-tl263916263984%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e263914263979%_)))
                            (_%$%lp-hd263915263982%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e263914263979%_))))
                        (_%$%loop263913263972%_
                         _%$%lp-tl263916263984%_
                         (cons _%$%lp-hd263915263982%_
                               _%$%arg263917263977%_))))
                    (let ((_%$%arg263918263987%_
                           (reverse _%$%arg263917263977%_)))
                      (_%__kont264167264168%_
                       _%$%arg263918263987%_
                       _%$%hd263908263962%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop263913263972%_
                                               _%$%target263910263967%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx264165264166%_))
                                         (let ((_%$%e263898263935%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx264165264166%_))))
                                           (let ((_%$%tl263900263940%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e263898263935%_)))
                                                 (_%$%hd263899263938%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e263898263935%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%$%hd263899263938%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%$%hd263899263938%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl263900263940%_))
                                                         (let ((_%$%e263901263943%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl263900263940%_))))
                   (let ((_%$%tl263903263948%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e263901263943%_)))
                         (_%$%hd263902263946%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e263901263943%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%hd263902263946%_))
                         (let ((_%$%e263904263951%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%hd263902263946%_))))
                           (let ((_%$%tl263906263956%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e263904263951%_)))
                                 (_%$%hd263905263954%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e263904263951%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%hd263905263954%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#ref
                                        _%$%hd263905263954%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%tl263906263956%_))
                                         (let ((_%$%e263907263959%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%tl263906263956%_))))
                                           (let ((_%$%tl263909263964%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e263907263959%_)))
                                                 (_%$%hd263908263962%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e263907263959%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%$%tl263909263964%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%$%tl263903263948%_))
                                                     (let ((_%__splice264169264170%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%$%tl263903263948%_
                                                               '0))))
                                                       (let ((_%$%tl263912263969%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice264169264170%_ '1)))
                     (_%$%target263910263967%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice264169264170%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl263912263969%_))
                     (_%__match264214264215%_
                      _%$%e263898263935%_
                      _%$%hd263899263938%_
                      _%$%tl263900263940%_
                      _%$%e263901263943%_
                      _%$%hd263902263946%_
                      _%$%tl263903263948%_
                      _%$%e263904263951%_
                      _%$%hd263905263954%_
                      _%$%tl263906263956%_
                      _%$%e263907263959%_
                      _%$%hd263908263962%_
                      _%$%tl263909263964%_
                      _%__splice264169264170%_
                      _%$%target263910263967%_
                      _%$%tl263912263969%_)
                     (_%__kont264171264172%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont264171264172%_))
                                                 (_%__kont264171264172%_))))
                                         (_%__kont264171264172%_))
                                     (_%__kont264171264172%_))
                                 (_%__kont264171264172%_))))
                         (_%__kont264171264172%_))))
                 (_%__kont264171264172%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont264171264172%_))
                                                 (_%__kont264171264172%_))))
                                         (_%__kont264171264172%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type263876%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type263876%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp264991
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%$%g263213263854%_
                                                                '()))
                                                    (map (lambda (_%$%g264041264043%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self263205%_
                                                              _%$%g264041264043%_)))
                                                         (let ((__tmp264992
                                                                (lambda (_%$%g264045264048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g264046264050%_)
                          (cons _%$%g264045264048%_ _%$%g264046264050%_))))
                   (declare (not safe))
                   (foldr__0 __tmp264992 '() _%$%g263212263853%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp264991
                                    _%stx263206%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx263206%_
                                    _%rator-type263876%_))))))))
                (_%__kont264223264224%_
                 (lambda (_%$%g263235263461%_
                          _%$%g263236263462%_
                          _%$%g263237263463%_)
                   (let _%loop263581%_ ((_%rest-arg263583%_
                                         (let ((__tmp264999
                                                (lambda (_%$%g263779263782%_
                                                         _%$%g263780263784%_)
                                                  (cons _%$%g263779263782%_
                                                        _%$%g263780263784%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp264999
                                            '()
                                            _%$%g263237263463%_)))
                                        (_%rest-rand263584%_
                                         (let ((__tmp265000
                                                (lambda (_%$%g263786263789%_
                                                         _%$%g263787263791%_)
                                                  (cons _%$%g263786263789%_
                                                        _%$%g263787263791%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp265000
                                            '()
                                            _%$%g263235263461%_)))
                                        (_%bind263585%_ '())
                                        (_%subst263586%_ '()))
                     (let* ((_%$%rest-arg263587263595%_ _%rest-arg263583%_)
                            (_%$%else263589263608%_
                             (lambda ()
                               (let* ((_%body263603%_
                                       (if (null? _%subst263586%_)
                                           _%$%g263236263462%_
                                           (let ((__tmp264993
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-inline-subst__%
                                                     '#f
                                                     _%subst263586%_
                                                     _%$%g263236263462%_))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp264993
                                              _%stx263206%_))))
                                      (_%expr263605%_
                                       (let ((__tmp264994
                                              (cons '%#let-values
                                                    (cons _%bind263585%_
                                                          (cons _%body263603%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp264994
                                          _%stx263206%_))))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-refine-type-info _%expr263605%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self263205%_
                                    _%expr263605%_)))))
                            (_%$%K263591263768%_
                             (lambda (_%rest-arg263611%_ _%arg-id263612%_)
                               (let* ((_%$%rest-rand263613263621%_
                                       _%rest-rand263584%_)
                                      (_%$%else263615263643%_
                                       (lambda ()
                                         (let ((__tmp264997
                                                (let ((__tmp264998
                                                       (lambda (_%$%g263628263631%_
                                                                _%$%g263629263633%_)
                                                         (cons _%$%g263628263631%_
                                                               _%$%g263629263633%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp264998
                                                   '()
                                                   _%$%g263237263463%_)))
                                               (__tmp264995
                                                (let ((__tmp264996
                                                       (lambda (_%$%g263635263638%_
                                                                _%$%g263636263640%_)
                                                         (cons _%$%g263635263638%_
                                                               _%$%g263636263640%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp264996
                                                   '()
                                                   _%$%g263235263461%_))))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"inline lambda arity mismatch"
                                            _%stx263206%_
                                            __tmp264997
                                            __tmp264995))))
                                      (_%$%K263617263756%_
                                       (lambda (_%rest-rand263646%_
                                                _%rand263647%_)
                                         (let* ((_%__stx264119264120%_
                                                 _%rand263647%_)
                                                (_%$%g263651263671%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx264119264120%_)))))
                                           (let ((_%__kont264121264122%_
                                                  (lambda (_%$%g263653263742%_)
                                                    (_%loop263581%_
                                                     _%rest-arg263611%_
                                                     _%rest-rand263646%_
                                                     _%bind263585%_
                                                     (cons (cons _%arg-id263612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand263647%_)
                   _%subst263586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont264123264124%_
                                                  (lambda (_%$%g263660263699%_)
                                                    (_%loop263581%_
                                                     _%rest-arg263611%_
                                                     _%rest-rand263646%_
                                                     _%bind263585%_
                                                     (cons (cons _%arg-id263612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand263647%_)
                   _%subst263586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont264125264126%_
                                                  (lambda ()
                                                    (_%loop263581%_
                                                     _%rest-arg263611%_
                                                     _%rest-rand263646%_
                                                     (cons (cons (cons _%arg-id263612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%rand263647%_ '()))
                   _%bind263585%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%subst263586%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx264119264120%_))
                                                 (let ((_%$%e263654263726%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx264119264120%_))))
                                                   (let ((_%$%tl263656263731%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e263654263726%_)))
                                                         (_%$%hd263655263729%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e263654263726%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%$%hd263655263729%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#quote _%$%hd263655263729%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl263656263731%_))
                         (let ((_%$%e263657263734%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl263656263731%_))))
                           (let ((_%$%tl263659263739%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e263657263734%_)))
                                 (_%$%hd263658263737%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e263657263734%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl263659263739%_))
                                 (_%__kont264121264122%_ _%$%hd263658263737%_)
                                 (_%__kont264125264126%_))))
                         (_%__kont264125264126%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#ref _%$%hd263655263729%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl263656263731%_))
                             (let ((_%$%e263664263691%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl263656263731%_))))
                               (let ((_%$%tl263666263696%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e263664263691%_)))
                                     (_%$%hd263665263694%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e263664263691%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl263666263696%_))
                                     (_%__kont264123264124%_
                                      _%$%hd263665263694%_)
                                     (_%__kont264125264126%_))))
                             (_%__kont264125264126%_))
                         (_%__kont264125264126%_)))
                 (_%__kont264125264126%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont264125264126%_)))))))
                                 (if (pair? _%$%rest-rand263613263621%_)
                                     (let ((_%$%hd263618263759%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%rest-rand263613263621%_)))
                                           (_%$%tl263619263761%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%rest-rand263613263621%_))))
                                       (let* ((_%rand263764%_
                                               _%$%hd263618263759%_)
                                              (_%rest-rand263766%_
                                               _%$%tl263619263761%_))
                                         (_%$%K263617263756%_
                                          _%rest-rand263766%_
                                          _%rand263764%_)))
                                     (_%$%else263615263643%_))))))
                       (if (pair? _%$%rest-arg263587263595%_)
                           (let ((_%$%hd263592263771%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest-arg263587263595%_)))
                                 (_%$%tl263593263773%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest-arg263587263595%_))))
                             (let* ((_%arg-id263776%_ _%$%hd263592263771%_)
                                    (_%rest-arg263778%_ _%$%tl263593263773%_))
                               (_%$%K263591263768%_
                                _%rest-arg263778%_
                                _%arg-id263776%_)))
                           (_%$%else263589263608%_))))))
                (_%__kont264229264230%_
                 (lambda (_%$%g263271263335%_ _%$%g263272263336%_)
                   (let ((_%rator-type263353%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%$%g263272263336%_))))
                     (if (and _%rator-type263353%_
                              (eq? (##structure-ref
                                    _%rator-type263353%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type263353%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type263353%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type263353%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp265001
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self263205%_
                                               _%$%g263272263336%_))
                                            (map (lambda (_%$%g263355263357%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self263205%_
                                                      _%$%g263355263357%_)))
                                                 (let ((__tmp265002
                                                        (lambda (_%$%g263359263362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g263360263364%_)
                  (cons _%$%g263359263362%_ _%$%g263360263364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp265002
                                                    '()
                                                    _%$%g263271263335%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp265001 _%stx263206%_))
                         (if (or (not _%rator-type263353%_)
                                 (let ((__tmp265003
                                        (##structure-ref
                                         _%rator-type263353%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp265003 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self263205%_ _%stx263206%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx263206%_
                                _%rator-type263353%_))))))))
            (let* ((_%__match264326264327%_
                    (lambda (_%$%e263273263297%_
                             _%$%hd263274263300%_
                             _%$%tl263275263302%_
                             _%$%e263276263305%_
                             _%$%hd263277263308%_
                             _%$%tl263278263310%_
                             _%__splice264231264232%_
                             _%$%target263279263313%_
                             _%$%tl263281263315%_)
                      (letrec ((_%$%loop263282263318%_
                                (lambda (_%$%hd263280263321%_
                                         _%$%rand263286263323%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd263280263321%_))
                                      (let ((_%$%e263283263325%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd263280263321%_))))
                                        (let ((_%$%lp-tl263285263330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e263283263325%_)))
                                              (_%$%lp-hd263284263328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e263283263325%_))))
                                          (_%$%loop263282263318%_
                                           _%$%lp-tl263285263330%_
                                           (cons _%$%lp-hd263284263328%_
                                                 _%$%rand263286263323%_))))
                                      (let ((_%$%rand263287263333%_
                                             (reverse _%$%rand263286263323%_)))
                                        (_%__kont264229264230%_
                                         _%$%rand263287263333%_
                                         _%$%hd263277263308%_))))))
                        (_%$%loop263282263318%_
                         _%$%target263279263313%_
                         '()))))
                   (_%__match264318264319%_
                    (lambda (_%$%e263273263297%_
                             _%$%hd263274263300%_
                             _%$%tl263275263302%_
                             _%$%e263276263305%_
                             _%$%hd263277263308%_
                             _%$%tl263278263310%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl263278263310%_))
                          (let ((_%__splice264231264232%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl263278263310%_
                                    '0))))
                            (let ((_%$%tl263281263315%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice264231264232%_
                                      '1)))
                                  (_%$%target263279263313%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice264231264232%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl263281263315%_))
                                  (_%__match264326264327%_
                                   _%$%e263273263297%_
                                   _%$%hd263274263300%_
                                   _%$%tl263275263302%_
                                   _%$%e263276263305%_
                                   _%$%hd263277263308%_
                                   _%$%tl263278263310%_
                                   _%__splice264231264232%_
                                   _%$%target263279263313%_
                                   _%$%tl263281263315%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g263210263292%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g263210263292%_)))))
                   (_%__match264306264307%_
                    (lambda (_%$%e263238263377%_
                             _%$%hd263239263380%_
                             _%$%tl263240263382%_
                             _%$%e263241263385%_
                             _%$%hd263242263388%_
                             _%$%tl263243263390%_
                             _%$%e263244263393%_
                             _%$%hd263245263396%_
                             _%$%tl263246263398%_
                             _%$%e263247263401%_
                             _%$%hd263248263404%_
                             _%$%tl263249263406%_
                             _%__splice264225264226%_
                             _%$%target263250263409%_
                             _%$%tl263252263411%_)
                      (letrec ((_%$%loop263253263414%_
                                (lambda (_%$%hd263251263417%_
                                         _%$%arg263257263419%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd263251263417%_))
                                      (let ((_%$%e263254263421%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd263251263417%_))))
                                        (let ((_%$%lp-tl263256263426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e263254263421%_)))
                                              (_%$%lp-hd263255263424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e263254263421%_))))
                                          (_%$%loop263253263414%_
                                           _%$%lp-tl263256263426%_
                                           (cons _%$%lp-hd263255263424%_
                                                 _%$%arg263257263419%_))))
                                      (let ((_%$%arg263258263429%_
                                             (reverse _%$%arg263257263419%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl263249263406%_))
                                            (let ((_%$%e263259263431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl263249263406%_))))
                                              (let ((_%$%tl263261263436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e263259263431%_)))
                                                    (_%$%hd263260263434%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e263259263431%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl263261263436%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl263243263390%_))
                                                        (let ((_%__splice264227264228%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl263243263390%_
                          '0))))
                  (let ((_%$%tl263264263441%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice264227264228%_ '1)))
                        (_%$%target263262263439%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice264227264228%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl263264263441%_))
                        (letrec ((_%$%loop263265263444%_
                                  (lambda (_%$%hd263263263447%_
                                           _%$%rand263269263449%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd263263263447%_))
                                        (let ((_%$%e263266263451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd263263263447%_))))
                                          (let ((_%$%lp-tl263268263456%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e263266263451%_)))
                                                (_%$%lp-hd263267263454%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e263266263451%_))))
                                            (_%$%loop263265263444%_
                                             _%$%lp-tl263268263456%_
                                             (cons _%$%lp-hd263267263454%_
                                                   _%$%rand263269263449%_))))
                                        (let ((_%$%rand263270263459%_
                                               (reverse _%$%rand263269263449%_)))
                                          (let ((_%$%g263235263461%_
                                                 _%$%rand263270263459%_)
                                                (_%$%g263236263462%_
                                                 _%$%hd263260263434%_)
                                                (_%$%g263237263463%_
                                                 _%$%arg263258263429%_))
                                            (if (and (= (length (let ((__tmp265004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%$%g263489263492%_
                                        _%$%g263490263494%_)
                                 (cons _%$%g263489263492%_
                                       _%$%g263490263494%_))))
                          (declare (not safe))
                          (foldr__0 __tmp265004 '() _%$%g263237263463%_)))
                (length (let ((__tmp265005
                               (lambda (_%$%g263496263499%_
                                        _%$%g263497263501%_)
                                 (cons _%$%g263496263499%_
                                       _%$%g263497263501%_))))
                          (declare (not safe))
                          (foldr__0 __tmp265005 '() _%$%g263235263461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp265008
                                                            (lambda (_%id263504%_)
                                                              (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gxc#mutable-binding? _%id263504%_)))))
                   (__tmp265006
                    (let ((__tmp265007
                           (lambda (_%$%g263505263508%_ _%$%g263506263510%_)
                             (cons _%$%g263505263508%_ _%$%g263506263510%_))))
                      (declare (not safe))
                      (foldr__0 __tmp265007 '() _%$%g263237263463%_))))
               (declare (not safe))
               (andmap__0 __tmp265008 __tmp265006))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp265011
                                                            (lambda (_%rand263513%_)
                                                              (let* ((_%__stx264093264094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rand263513%_)
                             (_%$%g263516263529%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx264093264094%_)))))
                        (let ((_%__kont264095264096%_
                               (lambda (_%$%g263518263557%_)
                                 (not (let ()
                                        (declare (not safe))
                                        (gxc#mutable-binding?
                                         _%$%g263518263557%_)))))
                              (_%__kont264097264098%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx264093264094%_))
                              (let ((_%$%e263519263541%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx264093264094%_))))
                                (let ((_%$%tl263521263546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e263519263541%_)))
                                      (_%$%hd263520263544%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e263519263541%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd263520263544%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd263520263544%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl263521263546%_))
                                              (let ((_%$%e263522263549%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl263521263546%_))))
                                                (let ((_%$%tl263524263554%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e263522263549%_)))
                                                      (_%$%hd263523263552%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e263522263549%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl263524263554%_))
                                                      (_%__kont264095264096%_
                                                       _%$%hd263523263552%_)
                                                      (_%__kont264097264098%_))))
                                              (_%__kont264097264098%_))
                                          (_%__kont264097264098%_))
                                      (_%__kont264097264098%_))))
                              (_%__kont264097264098%_))))))
                   (__tmp265009
                    (let ((__tmp265010
                           (lambda (_%$%g263573263576%_ _%$%g263574263578%_)
                             (cons _%$%g263573263576%_ _%$%g263574263578%_))))
                      (declare (not safe))
                      (foldr__0 __tmp265010 '() _%$%g263235263461%_))))
               (declare (not safe))
               (andmap__0 __tmp265011 __tmp265009)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont264223264224%_
                                                 _%$%g263235263461%_
                                                 _%$%g263236263462%_
                                                 _%$%g263237263463%_)
                                                (_%__match264326264327%_
                                                 _%$%e263238263377%_
                                                 _%$%hd263239263380%_
                                                 _%$%tl263240263382%_
                                                 _%$%e263241263385%_
                                                 _%$%hd263242263388%_
                                                 _%$%tl263243263390%_
                                                 _%__splice264227264228%_
                                                 _%$%target263262263439%_
                                                 _%$%tl263264263441%_))))))))
                          (_%$%loop263265263444%_
                           _%$%target263262263439%_
                           '()))
                        (let () (declare (not safe)) (_%$%g263210263292%_)))))
                (let () (declare (not safe)) (_%$%g263210263292%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match264318264319%_
                                                     _%$%e263238263377%_
                                                     _%$%hd263239263380%_
                                                     _%$%tl263240263382%_
                                                     _%$%e263241263385%_
                                                     _%$%hd263242263388%_
                                                     _%$%tl263243263390%_))))
                                            (_%__match264318264319%_
                                             _%$%e263238263377%_
                                             _%$%hd263239263380%_
                                             _%$%tl263240263382%_
                                             _%$%e263241263385%_
                                             _%$%hd263242263388%_
                                             _%$%tl263243263390%_)))))))
                        (_%$%loop263253263414%_
                         _%$%target263250263409%_
                         '()))))
                   (_%__match264270264271%_
                    (lambda (_%$%e263214263799%_
                             _%$%hd263215263802%_
                             _%$%tl263216263804%_
                             _%$%e263217263807%_
                             _%$%hd263218263810%_
                             _%$%tl263219263812%_
                             _%$%e263220263815%_
                             _%$%hd263221263818%_
                             _%$%tl263222263820%_
                             _%$%e263223263823%_
                             _%$%hd263224263826%_
                             _%$%tl263225263828%_
                             _%__splice264221264222%_
                             _%$%target263226263831%_
                             _%$%tl263228263833%_)
                      (letrec ((_%$%loop263229263836%_
                                (lambda (_%$%hd263227263839%_
                                         _%$%rand263233263841%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd263227263839%_))
                                      (let ((_%$%e263230263843%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd263227263839%_))))
                                        (let ((_%$%lp-tl263232263848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e263230263843%_)))
                                              (_%$%lp-hd263231263846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e263230263843%_))))
                                          (_%$%loop263229263836%_
                                           _%$%lp-tl263232263848%_
                                           (cons _%$%lp-hd263231263846%_
                                                 _%$%rand263233263841%_))))
                                      (let ((_%$%rand263234263851%_
                                             (reverse _%$%rand263233263841%_)))
                                        (_%__kont264219264220%_
                                         _%$%rand263234263851%_
                                         _%$%hd263224263826%_))))))
                        (_%$%loop263229263836%_
                         _%$%target263226263831%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx264217264218%_))
                  (let ((_%$%e263214263799%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx264217264218%_))))
                    (let ((_%$%tl263216263804%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e263214263799%_)))
                          (_%$%hd263215263802%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e263214263799%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl263216263804%_))
                          (let ((_%$%e263217263807%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl263216263804%_))))
                            (let ((_%$%tl263219263812%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e263217263807%_)))
                                  (_%$%hd263218263810%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e263217263807%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd263218263810%_))
                                  (let ((_%$%e263220263815%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd263218263810%_))))
                                    (let ((_%$%tl263222263820%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e263220263815%_)))
                                          (_%$%hd263221263818%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e263220263815%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd263221263818%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd263221263818%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl263222263820%_))
                                                  (let ((_%$%e263223263823%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl263222263820%_))))
                                                    (let ((_%$%tl263225263828%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e263223263823%_)))
                                                          (_%$%hd263224263826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e263223263823%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl263225263828%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl263219263812%_))
                      (let ((_%__splice264221264222%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl263219263812%_
                                '0))))
                        (let ((_%$%tl263228263833%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice264221264222%_ '1)))
                              (_%$%target263226263831%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice264221264222%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl263228263833%_))
                              (_%__match264270264271%_
                               _%$%e263214263799%_
                               _%$%hd263215263802%_
                               _%$%tl263216263804%_
                               _%$%e263217263807%_
                               _%$%hd263218263810%_
                               _%$%tl263219263812%_
                               _%$%e263220263815%_
                               _%$%hd263221263818%_
                               _%$%tl263222263820%_
                               _%$%e263223263823%_
                               _%$%hd263224263826%_
                               _%$%tl263225263828%_
                               _%__splice264221264222%_
                               _%$%target263226263831%_
                               _%$%tl263228263833%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g263210263292%_)))))
                      (let () (declare (not safe)) (_%$%g263210263292%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl263219263812%_))
                      (let ((_%__splice264231264232%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl263219263812%_
                                '0))))
                        (let ((_%$%tl263281263315%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice264231264232%_ '1)))
                              (_%$%target263279263313%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice264231264232%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl263281263315%_))
                              (_%__match264326264327%_
                               _%$%e263214263799%_
                               _%$%hd263215263802%_
                               _%$%tl263216263804%_
                               _%$%e263217263807%_
                               _%$%hd263218263810%_
                               _%$%tl263219263812%_
                               _%__splice264231264232%_
                               _%$%target263279263313%_
                               _%$%tl263281263315%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g263210263292%_)))))
                      (let () (declare (not safe)) (_%$%g263210263292%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl263219263812%_))
                                                      (let ((_%__splice264231264232%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl263219263812%_
                        '0))))
                (let ((_%$%tl263281263315%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice264231264232%_ '1)))
                      (_%$%target263279263313%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice264231264232%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl263281263315%_))
                      (_%__match264326264327%_
                       _%$%e263214263799%_
                       _%$%hd263215263802%_
                       _%$%tl263216263804%_
                       _%$%e263217263807%_
                       _%$%hd263218263810%_
                       _%$%tl263219263812%_
                       _%__splice264231264232%_
                       _%$%target263279263313%_
                       _%$%tl263281263315%_)
                      (let () (declare (not safe)) (_%$%g263210263292%_)))))
              (let () (declare (not safe)) (_%$%g263210263292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#lambda
                                                     _%$%hd263221263818%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl263222263820%_))
                                                      (let ((_%$%e263247263401%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl263222263820%_))))
                (let ((_%$%tl263249263406%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e263247263401%_)))
                      (_%$%hd263248263404%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e263247263401%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%hd263248263404%_))
                      (let ((_%__splice264225264226%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%hd263248263404%_
                                '0))))
                        (let ((_%$%tl263252263411%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice264225264226%_ '1)))
                              (_%$%target263250263409%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice264225264226%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl263252263411%_))
                              (_%__match264306264307%_
                               _%$%e263214263799%_
                               _%$%hd263215263802%_
                               _%$%tl263216263804%_
                               _%$%e263217263807%_
                               _%$%hd263218263810%_
                               _%$%tl263219263812%_
                               _%$%e263220263815%_
                               _%$%hd263221263818%_
                               _%$%tl263222263820%_
                               _%$%e263247263401%_
                               _%$%hd263248263404%_
                               _%$%tl263249263406%_
                               _%__splice264225264226%_
                               _%$%target263250263409%_
                               _%$%tl263252263411%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _%$%tl263219263812%_))
                                  (let ((_%__splice264231264232%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice->vector
                                            _%$%tl263219263812%_
                                            '0))))
                                    (let ((_%$%tl263281263315%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice264231264232%_
                                              '1)))
                                          (_%$%target263279263313%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice264231264232%_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl263281263315%_))
                                          (_%__match264326264327%_
                                           _%$%e263214263799%_
                                           _%$%hd263215263802%_
                                           _%$%tl263216263804%_
                                           _%$%e263217263807%_
                                           _%$%hd263218263810%_
                                           _%$%tl263219263812%_
                                           _%__splice264231264232%_
                                           _%$%target263279263313%_
                                           _%$%tl263281263315%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g263210263292%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g263210263292%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl263219263812%_))
                          (let ((_%__splice264231264232%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl263219263812%_
                                    '0))))
                            (let ((_%$%tl263281263315%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice264231264232%_
                                      '1)))
                                  (_%$%target263279263313%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice264231264232%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl263281263315%_))
                                  (_%__match264326264327%_
                                   _%$%e263214263799%_
                                   _%$%hd263215263802%_
                                   _%$%tl263216263804%_
                                   _%$%e263217263807%_
                                   _%$%hd263218263810%_
                                   _%$%tl263219263812%_
                                   _%__splice264231264232%_
                                   _%$%target263279263313%_
                                   _%$%tl263281263315%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g263210263292%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g263210263292%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl263219263812%_))
                  (let ((_%__splice264231264232%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl263219263812%_
                            '0))))
                    (let ((_%$%tl263281263315%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice264231264232%_ '1)))
                          (_%$%target263279263313%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice264231264232%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl263281263315%_))
                          (_%__match264326264327%_
                           _%$%e263214263799%_
                           _%$%hd263215263802%_
                           _%$%tl263216263804%_
                           _%$%e263217263807%_
                           _%$%hd263218263810%_
                           _%$%tl263219263812%_
                           _%__splice264231264232%_
                           _%$%target263279263313%_
                           _%$%tl263281263315%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g263210263292%_)))))
                  (let () (declare (not safe)) (_%$%g263210263292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl263219263812%_))
                                                      (let ((_%__splice264231264232%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl263219263812%_
                        '0))))
                (let ((_%$%tl263281263315%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice264231264232%_ '1)))
                      (_%$%target263279263313%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice264231264232%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl263281263315%_))
                      (_%__match264326264327%_
                       _%$%e263214263799%_
                       _%$%hd263215263802%_
                       _%$%tl263216263804%_
                       _%$%e263217263807%_
                       _%$%hd263218263810%_
                       _%$%tl263219263812%_
                       _%__splice264231264232%_
                       _%$%target263279263313%_
                       _%$%tl263281263315%_)
                      (let () (declare (not safe)) (_%$%g263210263292%_)))))
              (let () (declare (not safe)) (_%$%g263210263292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl263219263812%_))
                                              (let ((_%__splice264231264232%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl263219263812%_
                                                        '0))))
                                                (let ((_%$%tl263281263315%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice264231264232%_
                                                          '1)))
                                                      (_%$%target263279263313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice264231264232%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl263281263315%_))
                                                      (_%__match264326264327%_
                                                       _%$%e263214263799%_
                                                       _%$%hd263215263802%_
                                                       _%$%tl263216263804%_
                                                       _%$%e263217263807%_
                                                       _%$%hd263218263810%_
                                                       _%$%tl263219263812%_
                                                       _%__splice264231264232%_
                                                       _%$%target263279263313%_
                                                       _%$%tl263281263315%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g263210263292%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g263210263292%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl263219263812%_))
                                      (let ((_%__splice264231264232%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl263219263812%_
                                                '0))))
                                        (let ((_%$%tl263281263315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice264231264232%_
                                                  '1)))
                                              (_%$%target263279263313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice264231264232%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl263281263315%_))
                                              (_%__match264326264327%_
                                               _%$%e263214263799%_
                                               _%$%hd263215263802%_
                                               _%$%tl263216263804%_
                                               _%$%e263217263807%_
                                               _%$%hd263218263810%_
                                               _%$%tl263219263812%_
                                               _%__splice264231264232%_
                                               _%$%target263279263313%_
                                               _%$%tl263281263315%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g263210263292%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g263210263292%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g263210263292%_)))))
                  (let () (declare (not safe)) (_%$%g263210263292%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self263167%_ _%ctx263168%_ _%stx263169%_ _%args263170%_)
        (let ((_%self263173%_ _%self263167%_))
          (if (let ((__method264974
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self263173%_ 'check-arguments))))
                (if __method264974
                    (let ()
                      (declare (not safe))
                      (__method264974
                       _%self263173%_
                       _%ctx263168%_
                       _%stx263169%_
                       _%args263170%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self263173%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature263183%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self263173%_ '2 '#f '#f)))
                     (_%signature263185%_ _%signature263183%_)
                     (_%$e263195%_
                      (if _%signature263185%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature263185%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e263195%_
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%$e263195%_))
                        (let ((__tmp265012
                               (cons '%#call
                                     (cons (cons '%#ref
                                                 (cons _%$e263195%_ '()))
                                           (map (lambda (_%$%g263199263201%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx263168%_
                                                     _%$%g263199263201%_)))
                                                _%args263170%_)))))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp265012
                           _%stx263169%_
                           _%ctx263168%_))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx263168%_ _%stx263169%_)))
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx263168%_ _%stx263169%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx263168%_ _%stx263169%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass264078 __method-table264079)
        (let ((__check-arguments264080
               (let ((__tmp265013
                      (lambda ()
                        (let ((__method264081
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table264079
                                  'check-arguments
                                  '#f))))
                          (if __method264081
                              __method264081
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp265013))))
          (lambda (_%self263167%_ _%ctx263168%_ _%stx263169%_ _%args263170%_)
            (let ((_%self263173%_ _%self263167%_))
              (if ((force __check-arguments264080)
                   _%self263173%_
                   _%ctx263168%_
                   _%stx263169%_
                   _%args263170%_)
                  (let* ((_%signature263183%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self263173%_
                             '2
                             '#f
                             '#f)))
                         (_%signature263185%_ _%signature263183%_)
                         (_%$e263195%_
                          (if _%signature263185%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature263185%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e263195%_
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%$e263195%_))
                            (let ((__tmp265014
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%$e263195%_ '()))
                                               (map (lambda (_%$%g263199263201%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%ctx263168%_
                                                         _%$%g263199263201%_)))
                                                    _%args263170%_)))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp265014
                               _%stx263169%_
                               _%ctx263168%_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _%ctx263168%_ _%stx263169%_)))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx263168%_ _%stx263169%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx263168%_ _%stx263169%_))))))))
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
      (lambda (_%self262920%_ _%ctx262921%_ _%stx262922%_ _%args262923%_)
        (let* ((_%self262926%_ _%self262920%_)
               (_%$%signature262935262937%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self262926%_ '2 '#f '#f))))
          (if _%$%signature262935262937%_
              (let* ((_%signature262939%_ _%$%signature262935262937%_)
                     (_%$%argument-types262940262942%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature262939%_
                         '3
                         '#f
                         '#f))))
                (if _%$%argument-types262940262942%_
                    (let* ((_%argument-types262944%_
                            _%$%argument-types262940262942%_)
                           (_%argument-types262949%_
                            (let ((__tmp265015
                                   (lambda (_%t262947%_)
                                     (if _%t262947%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx262922%_
                                            _%t262947%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp265015
                               _%argument-types262944%_))))
                      (let _%loop262951%_ ((_%rest-args262953%_ _%args262923%_)
                                           (_%rest-types262954%_
                                            _%argument-types262949%_)
                                           (_%result262955%_ '#t))
                        (let* ((_%$%rest-args262956262964%_
                                _%rest-args262953%_)
                               (_%$%else262958262972%_
                                (lambda () _%result262955%_))
                               (_%$%K262960263033%_
                                (lambda (_%rest-args262975%_ _%arg262976%_)
                                  (let* ((_%$%rest-types262977262988%_
                                          _%rest-types262954%_)
                                         (_%$%E262981262992%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-types262977262988%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%$%K262984263021%_
                                           (lambda (_%rest-types263018%_
                                                    _%type263019%_)
                                             (_%loop262951%_
                                              _%rest-args262975%_
                                              _%rest-types263018%_
                                              (if (gxc#check-expression-type!
                                                   _%stx262922%_
                                                   _%arg262976%_
                                                   _%type263019%_)
                                                  _%result262955%_
                                                  '#f))))
                                          (_%$%K262983263012%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx262922%_
                                                _%argument-types262949%_))))
                                          (_%$%K262982263002%_
                                           (lambda (_%tail-type262996%_)
                                             (if (let ((__tmp265016
                                                        (lambda (_%$%g262997262999%_)
                                                          (gxc#check-expression-type!
                                                           _%stx262922%_
                                                           _%$%g262997262999%_
                                                           _%tail-type262996%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp265016
                                                    _%rest-args262975%_))
                                                 _%result262955%_
                                                 '#f))))
                                      (let ((_%$%try-match262979263015%_
                                             (lambda ()
                                               (if (null? _%$%rest-types262977262988%_)
                                                   (_%$%K262983263012%_)
                                                   (let ((_%tail-type263005%_
                                                          _%$%rest-types262977262988%_))
                                                     (_%$%K262982263002%_
                                                      _%tail-type263005%_))))))
                                        (if (pair? _%$%rest-types262977262988%_)
                                            (let ((_%$%tl262986263026%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%rest-types262977262988%_)))
                                                  (_%$%hd262985263024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%rest-types262977262988%_))))
                                              (let ((_%type263029%_
                                                     _%$%hd262985263024%_)
                                                    (_%rest-types263031%_
                                                     _%$%tl262986263026%_))
                                                (_%$%K262984263021%_
                                                 _%rest-types263031%_
                                                 _%type263029%_)))
                                            (_%$%try-match262979263015%_))))))))
                          (if (pair? _%$%rest-args262956262964%_)
                              (let ((_%$%hd262961263036%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest-args262956262964%_)))
                                    (_%$%tl262962263038%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest-args262956262964%_))))
                                (let* ((_%arg263041%_ _%$%hd262961263036%_)
                                       (_%rest-args263043%_
                                        _%$%tl262962263038%_))
                                  (_%$%K262960263033%_
                                   _%rest-args263043%_
                                   _%arg263041%_)))
                              (_%$%else262958262972%_)))))
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
      (lambda (_%self262723%_ _%ctx262724%_ _%stx262725%_ _%args262726%_)
        (let* ((_%self262729%_ _%self262723%_)
               (_%$%g262739262749%_
                (lambda (_%$%g262740262746%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g262740262746%_))))
               (_%$%g262738262795%_
                (lambda (_%$%g262740262752%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g262740262752%_))
                      (let ((_%$%e262742262754%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g262740262752%_))))
                        (let ((_%$%hd262743262757%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e262742262754%_)))
                              (_%$%tl262744262759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e262742262754%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl262744262759%_))
                              (let* ((_%klass262774%_
                                      (let ((__tmp265017
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self262729%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx262725%_
                                         __tmp265017)))
                                     (_%object262776%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx262724%_
                                         _%$%hd262743262757%_)))
                                     (_%instance?262781%_
                                      (let ((_%$e262778%_
                                             (gxc#expression-type?
                                              _%object262776%_
                                              _%klass262774%_)))
                                        (if _%$e262778%_
                                            _%$e262778%_
                                            (gxc#expression-type?
                                             _%$%hd262743262757%_
                                             _%klass262774%_))))
                                     (_%incompatible?262786%_
                                      (let ((_%$e262783%_
                                             (gxc#incompatible-type?
                                              _%object262776%_
                                              _%klass262774%_)))
                                        (if _%$e262783%_
                                            _%$e262783%_
                                            (gxc#incompatible-type?
                                             _%$%hd262743262757%_
                                             _%klass262774%_)))))
                                (if _%instance?262781%_
                                    (let ((__tmp265018
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object262776%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd262743262757%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object262776%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp265018
                                       _%stx262725%_))
                                    (if _%incompatible?262786%_
                                        (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#xform-call%
                                           _%ctx262724%_
                                           _%stx262725%_)))))
                              (_%$%g262739262749%_ _%$%g262740262752%_))))
                      (_%$%g262739262749%_ _%$%g262740262752%_)))))
          (_%$%g262738262795%_ _%args262726%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self262512%_ _%ctx262513%_ _%stx262514%_ _%args262515%_)
        (let* ((_%self262518%_ _%self262512%_)
               (_%$%g262528262538%_
                (lambda (_%$%g262529262535%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g262529262535%_))))
               (_%$%g262527262598%_
                (lambda (_%$%g262529262541%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g262529262541%_))
                      (let ((_%$%e262531262543%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g262529262541%_))))
                        (let ((_%$%hd262532262546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e262531262543%_)))
                              (_%$%tl262533262548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e262531262543%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl262533262548%_))
                              (let* ((_%klass262563%_
                                      (let ((__tmp265019
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self262518%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx262514%_
                                         __tmp265019)))
                                     (_%object262565%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx262513%_
                                         _%$%hd262532262546%_)))
                                     (_%instance?262570%_
                                      (let ((_%$e262567%_
                                             (gxc#expression-type?
                                              _%object262565%_
                                              _%klass262563%_)))
                                        (if _%$e262567%_
                                            _%$e262567%_
                                            (gxc#expression-type?
                                             _%$%hd262532262546%_
                                             _%klass262563%_))))
                                     (_%incompatible?262575%_
                                      (let ((_%$e262572%_
                                             (gxc#incompatible-type?
                                              _%object262565%_
                                              _%klass262563%_)))
                                        (if _%$e262572%_
                                            _%$e262572%_
                                            (gxc#incompatible-type?
                                             _%$%hd262532262546%_
                                             _%klass262563%_))))
                                     (_%klass262578%_ _%klass262563%_))
                                (if _%instance?262570%_
                                    (let ((__tmp265020
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object262565%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd262532262546%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object262565%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp265020
                                       _%stx262514%_))
                                    (if _%incompatible?262575%_
                                        (cons '%#quote (cons '#f '()))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass262578%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp265021
                                                   (cons '%#struct-direct-instance?
                                                         (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass262578%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%object262565%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp265021
                                               _%stx262514%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass262578%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp265022
                                                       (cons '%#struct-instance?
                                                             (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass262578%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%object262565%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp265022
                                                   _%stx262514%_))
                                                (let ((__tmp265023
                                                       (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons 'class-instance? '()))
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self262518%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons _%object262565%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp265023
                                                   _%stx262514%_)))))))
                              (_%$%g262528262538%_ _%$%g262529262541%_))))
                      (_%$%g262528262538%_ _%$%g262529262541%_)))))
          (_%$%g262527262598%_ _%args262515%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx262180%_)
        (let* ((_%__stx264336264337%_ _%stx262180%_)
               (_%$%g262185262226%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx264336264337%_)))))
          (let ((_%__kont264338264339%_ (lambda () '#t))
                (_%__kont264340264341%_ (lambda () '#t))
                (_%__kont264342264343%_
                 (lambda (_%$%g262199262292%_ _%$%g262200262293%_)
                   (let ((_%$%rator-type262314262316%_
                          (let ((__tmp265024
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol
                                    _%$%g262200262293%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp265024))))
                     (if _%$%rator-type262314262316%_
                         (let* ((_%rator-type262318%_
                                 _%$%rator-type262314262316%_)
                                (_%$%rator-signature262319262321%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type262318%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type262318%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%$%rator-signature262319262321%_
                               (let* ((_%rator-signature262323%_
                                       _%$%rator-signature262319262321%_)
                                      (_%$%rator-effect262324262326%_
                                       (if _%rator-signature262323%_
                                           (##direct-structure-ref
                                            _%rator-signature262323%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%$%rator-effect262324262326%_
                                     (let ((_%rator-effect262328%_
                                            _%$%rator-effect262324262326%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect262328%_)
                                               (equal? '(alloc)
                                                       _%rator-effect262328%_))
                                           (let ((__tmp265025
                                                  (let ((__tmp265026
                                                         (lambda (_%$%g262333262336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g262334262338%_)
                   (cons _%$%g262333262336%_ _%$%g262334262338%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp265026
                                                     '()
                                                     _%$%g262199262292%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp265025))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont264346264347%_ (lambda () '#f)))
            (let ((_%__match264425264426%_
                   (lambda (_%$%e262201262238%_
                            _%$%hd262202262241%_
                            _%$%tl262203262243%_
                            _%$%e262204262246%_
                            _%$%hd262205262249%_
                            _%$%tl262206262251%_
                            _%$%e262207262254%_
                            _%$%hd262208262257%_
                            _%$%tl262209262259%_
                            _%$%e262210262262%_
                            _%$%hd262211262265%_
                            _%$%tl262212262267%_
                            _%__splice264344264345%_
                            _%$%target262213262270%_
                            _%$%tl262215262272%_)
                     (letrec ((_%$%loop262216262275%_
                               (lambda (_%$%hd262214262278%_
                                        _%$%rand262220262280%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd262214262278%_))
                                     (let ((_%$%e262217262282%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd262214262278%_))))
                                       (let ((_%$%lp-tl262219262287%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e262217262282%_)))
                                             (_%$%lp-hd262218262285%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e262217262282%_))))
                                         (_%$%loop262216262275%_
                                          _%$%lp-tl262219262287%_
                                          (cons _%$%lp-hd262218262285%_
                                                _%$%rand262220262280%_))))
                                     (let ((_%$%rand262221262290%_
                                            (reverse _%$%rand262220262280%_)))
                                       (_%__kont264342264343%_
                                        _%$%rand262221262290%_
                                        _%$%hd262211262265%_))))))
                       (_%$%loop262216262275%_
                        _%$%target262213262270%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx264336264337%_))
                  (let ((_%$%e262187262369%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx264336264337%_))))
                    (let ((_%$%tl262189262374%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e262187262369%_)))
                          (_%$%hd262188262372%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e262187262369%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd262188262372%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd262188262372%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl262189262374%_))
                                  (let ((_%$%e262190262377%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl262189262374%_))))
                                    (let ((_%$%tl262192262382%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e262190262377%_)))
                                          (_%$%hd262191262380%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e262190262377%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl262192262382%_))
                                          (_%__kont264338264339%_)
                                          (_%__kont264346264347%_))))
                                  (_%__kont264346264347%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd262188262372%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl262189262374%_))
                                      (let ((_%$%e262196262354%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl262189262374%_))))
                                        (let ((_%$%tl262198262359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e262196262354%_)))
                                              (_%$%hd262197262357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e262196262354%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl262198262359%_))
                                              (_%__kont264340264341%_)
                                              (_%__kont264346264347%_))))
                                      (_%__kont264346264347%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%$%hd262188262372%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl262189262374%_))
                                          (let ((_%$%e262204262246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl262189262374%_))))
                                            (let ((_%$%tl262206262251%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e262204262246%_)))
                                                  (_%$%hd262205262249%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e262204262246%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd262205262249%_))
                                                  (let ((_%$%e262207262254%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd262205262249%_))))
                                                    (let ((_%$%tl262209262259%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e262207262254%_)))
                                                          (_%$%hd262208262257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e262207262254%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd262208262257%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%$%hd262208262257%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl262209262259%_))
                          (let ((_%$%e262210262262%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl262209262259%_))))
                            (let ((_%$%tl262212262267%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e262210262262%_)))
                                  (_%$%hd262211262265%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e262210262262%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl262212262267%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl262206262251%_))
                                      (let ((_%__splice264344264345%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl262206262251%_
                                                '0))))
                                        (let ((_%$%tl262215262272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice264344264345%_
                                                  '1)))
                                              (_%$%target262213262270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice264344264345%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl262215262272%_))
                                              (_%__match264425264426%_
                                               _%$%e262187262369%_
                                               _%$%hd262188262372%_
                                               _%$%tl262189262374%_
                                               _%$%e262204262246%_
                                               _%$%hd262205262249%_
                                               _%$%tl262206262251%_
                                               _%$%e262207262254%_
                                               _%$%hd262208262257%_
                                               _%$%tl262209262259%_
                                               _%$%e262210262262%_
                                               _%$%hd262211262265%_
                                               _%$%tl262212262267%_
                                               _%__splice264344264345%_
                                               _%$%target262213262270%_
                                               _%$%tl262215262272%_)
                                              (_%__kont264346264347%_))))
                                      (_%__kont264346264347%_))
                                  (_%__kont264346264347%_))))
                          (_%__kont264346264347%_))
                      (_%__kont264346264347%_))
                  (_%__kont264346264347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont264346264347%_))))
                                          (_%__kont264346264347%_))
                                      (_%__kont264346264347%_))))
                          (_%__kont264346264347%_))))
                  (_%__kont264346264347%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx262175%_ _%klass262176%_)
        (let ((_%expr-type262178%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx262175%_))))
          (if _%expr-type262178%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type262178%_ _%klass262176%_))
              '#f))))
    (define gxc#incompatible-type?
      (lambda (_%expr262159%_ _%type262160%_)
        (if (not _%type262160%_)
            '#f
            (if (eq? (##structure-ref _%type262160%_ '1 gxc#!type::t '#f) 't)
                '#f
                (if (eq? (##structure-ref _%type262160%_ '1 gxc#!type::t '#f)
                         'false)
                    '#f
                    (let ((_%expr-type262166%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr262159%_))))
                      (if (not _%expr-type262166%_)
                          '#f
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type262166%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              '#f
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%expr-type262166%_
                                     'gxc#!abort::t))
                                  '#f
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#!type-subtype?
                                         _%expr-type262166%_
                                         _%type262160%_))
                                      '#f
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#!interface-instance?
                                             _%type262160%_))
                                          '#f
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!type-subtype?
                                                 _%type262160%_
                                                 _%expr-type262166%_))
                                              '#f
                                              '#t))))))))))))
    (define gxc#check-expression-type!
      (lambda (_%stx262137%_ _%expr262138%_ _%type262139%_)
        (if (not _%type262139%_)
            '#f
            (let ((_%$e262142%_
                   (eq? (##structure-ref _%type262139%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e262142%_
                  _%$e262142%_
                  (let ((_%expr-type262146%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr262138%_))))
                    (if (not _%expr-type262146%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type262146%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e262150%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type262146%_
                                      'gxc#!abort::t))))
                              (if _%$e262150%_
                                  _%$e262150%_
                                  (let ((_%$e262153%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type262146%_
                                            _%type262139%_))))
                                    (if _%$e262153%_
                                        _%$e262153%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type262139%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type262139%_
                                                   _%expr-type262146%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx262137%_
                                                   _%expr262138%_
                                                   _%expr-type262146%_
                                                   _%type262139%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self261951%_ _%ctx261952%_ _%stx261953%_ _%args261954%_)
        (let* ((_%self261957%_ _%self261951%_)
               (_%klass261967%_
                (let ((__tmp265027
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self261957%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx261953%_ __tmp265027)))
               (_%fields261969%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass261967%_
                           '5
                           '#f
                           '#f))))
               (_%args261975%_
                (map (lambda (_%$%g261970261972%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx261952%_ _%$%g261970261972%_)))
                     _%args261954%_))
               (_%inline-make-object261977%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self261957%_
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
                           _%self261957%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields261969%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass261980%_ _%klass261967%_)
               (_%$e261994%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass261980%_ '6 '#f '#f))))
          (if _%$e261994%_
              (let ((_%$obj261999%_
                     (let ((__tmp265028
                            (let () (declare (not safe)) (##gensym '__obj))))
                       (declare (not safe))
                       (make-symbol__0 __tmp265028)))
                    (_%ctor-impl262000%_
                     (let ()
                       (declare (not safe))
                       (gxc#!class-lookup-method
                        _%klass261980%_
                        _%$e261994%_))))
                (let ((__tmp265029
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj261999%_ '())
                                               (cons _%inline-make-object261977%_
                                                     '()))
                                         '())
                                   (cons (cons '%#begin
                                               (cons (if _%ctor-impl262000%_
                                                         (let ((__tmp265030
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl262000%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj261999%_ '()))
                                          _%args261975%_)))))
                   (declare (not safe))
                   (gxc#xform-wrap-apply
                    __tmp265030
                    _%stx261953%_
                    _%ctx261952%_))
                 (let ((_%$ctor262002%_
                        (let ((__tmp265031
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__constructor))))
                          (declare (not safe))
                          (make-symbol__0 __tmp265031))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$ctor262002%_ '())
                                           (cons (cons '%#call
                                                       (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'direct-method-ref '()))
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self261957%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#ref (cons _%$obj261999%_ '()))
                                 (cons (cons '%#quote (cons _%$e261994%_ '()))
                                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#ref
                                                       (cons _%$ctor262002%_
                                                             '()))
                                                 (cons (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$ctor262002%_ '()))
                           (cons (cons '%#ref (cons _%$obj261999%_ '()))
                                 _%args261975%_)))
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
                         (##unchecked-structure-ref _%self261957%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#quote
                                                               (cons 'method:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _%$e261994%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj261999%_ '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp265029 _%stx261953%_)))
              (let ((_%$e262004%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass261980%_
                        '10
                        '#f
                        '#f))))
                (if _%$e262004%_
                    (let* ((_%$obj262009%_
                            (let ((__tmp265032
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp265032)))
                           (_%metakons262011%_
                            (let ((__tmp265033
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx261953%_
                                      _%$e262004%_))))
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               __tmp265033
                               'instance-init!)))
                           (__tmp265034
                            (cons '%#let-values
                                  (cons (cons (cons (cons _%$obj262009%_ '())
                                                    (cons _%inline-make-object261977%_
                                                          '()))
                                              '())
                                        (cons (cons '%#begin
                                                    (cons (if _%metakons262011%_
                                                              (let ((__tmp265035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons262011%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self261957%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj262009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args261975%_))))))
                        (declare (not safe))
                        (gxc#xform-wrap-apply
                         __tmp265035
                         _%stx261953%_
                         _%ctx261952%_))
                      (cons '%#call
                            (cons (cons '%#ref (cons 'call-method '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self261957%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons 'instance-init! '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj262009%_
                                                                '()))
                                                    _%args261975%_))))))
                  (cons (cons '%#ref (cons _%$obj262009%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp265034 _%stx261953%_))
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass261980%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp265036
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args261975%_))))
                              (declare (not safe))
                              (##fx= __tmp265036 _%fields261969%_))
                            (let ((__tmp265037
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self261957%_
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
                                              _%self261957%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args261975%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp265037
                               _%stx261953%_))
                            (let ((__tmp265039
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self261957%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp265038
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass261980%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx261953%_
                               __tmp265039
                               __tmp265038)))
                        (let ((_%$obj262016%_
                               (let ((__tmp265040
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp265040))))
                          (let _%lp262018%_ ((_%rest262020%_ _%args261975%_)
                                             (_%initializers262021%_ '()))
                            (let* ((_%__stx264428264429%_ _%rest262020%_)
                                   (_%$%g262025262046%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx264428264429%_)))))
                              (let ((_%__kont264430264431%_
                                     (lambda (_%$%g262027262100%_
                                              _%$%g262028262101%_
                                              _%$%g262029262102%_)
                                       (let* ((_%slot262129%_
                                               (let ((__tmp265041
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g262029262102%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp265041)))
                                              (_%off262131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass261980%_
                                                  _%slot262129%_))))
                                         (if _%off262131%_
                                             (_%lp262018%_
                                              _%$%g262027262100%_
                                              (cons (cons _%off262131%_
                                                          _%$%g262028262101%_)
                                                    _%initializers262021%_))
                                             (let ((__tmp265042
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self261957%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx261953%_
                                                __tmp265042
                                                _%slot262129%_))))))
                                    (_%__kont264432264433%_
                                     (lambda ()
                                       (let ((__tmp265043
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj262016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object261977%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp265045
                                     (let ((__tmp265046
                                            (lambda (_%i262060%_ _%r262061%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self261957%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i262060%_) '()))
                              (cons (cons '%#ref (cons _%$obj262016%_ '()))
                                    (cons (cdr _%i262060%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r262061%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp265046
                                        '()
                                        _%initializers262021%_)))
                                    (__tmp265044
                                     (cons (cons '%#ref
                                                 (cons _%$obj262016%_ '()))
                                           '())))
                                (declare (not safe))
                                (##append __tmp265045 __tmp265044)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp265043
                                          _%stx261953%_))))
                                    (_%__kont264434264435%_
                                     (lambda ()
                                       (let ((__tmp265047
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj262016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object261977%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj262016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args261975%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj262016%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp265047
                                          _%stx261953%_)))))
                                (let* ((_%$%g262023262063%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx264428264429%_))
                                              (_%__kont264432264433%_)
                                              (_%__kont264434264435%_))))
                                       (_%__match264465264466%_
                                        (lambda (_%$%e262030262068%_
                                                 _%$%hd262031262071%_
                                                 _%$%tl262032262073%_
                                                 _%$%e262033262076%_
                                                 _%$%hd262034262079%_
                                                 _%$%tl262035262081%_
                                                 _%$%e262036262084%_
                                                 _%$%hd262037262087%_
                                                 _%$%tl262038262089%_
                                                 _%$%e262039262092%_
                                                 _%$%hd262040262095%_
                                                 _%$%tl262041262097%_)
                                          (let ((_%$%g262027262100%_
                                                 _%$%tl262041262097%_)
                                                (_%$%g262028262101%_
                                                 _%$%hd262040262095%_)
                                                (_%$%g262029262102%_
                                                 _%$%hd262037262087%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%$%g262029262102%_))
                                                (_%__kont264430264431%_
                                                 _%$%g262027262100%_
                                                 _%$%g262028262101%_
                                                 _%$%g262029262102%_)
                                                (_%__kont264434264435%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx264428264429%_))
                                      (let ((_%$%e262030262068%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx264428264429%_))))
                                        (let ((_%$%tl262032262073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e262030262068%_)))
                                              (_%$%hd262031262071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e262030262068%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd262031262071%_))
                                              (let ((_%$%e262033262076%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd262031262071%_))))
                                                (let ((_%$%tl262035262081%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e262033262076%_)))
                                                      (_%$%hd262034262079%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e262033262076%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd262034262079%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%$%hd262034262079%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl262035262081%_))
                      (let ((_%$%e262036262084%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl262035262081%_))))
                        (let ((_%$%tl262038262089%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e262036262084%_)))
                              (_%$%hd262037262087%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e262036262084%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl262038262089%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl262032262073%_))
                                  (let ((_%$%e262039262092%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl262032262073%_))))
                                    (let ((_%$%tl262041262097%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e262039262092%_)))
                                          (_%$%hd262040262095%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e262039262092%_))))
                                      (_%__match264465264466%_
                                       _%$%e262030262068%_
                                       _%$%hd262031262071%_
                                       _%$%tl262032262073%_
                                       _%$%e262033262076%_
                                       _%$%hd262034262079%_
                                       _%$%tl262035262081%_
                                       _%$%e262036262084%_
                                       _%$%hd262037262087%_
                                       _%$%tl262038262089%_
                                       _%$%e262039262092%_
                                       _%$%hd262040262095%_
                                       _%$%tl262041262097%_)))
                                  (_%__kont264434264435%_))
                              (_%__kont264434264435%_))))
                      (_%__kont264434264435%_))
                  (_%__kont264434264435%_))
              (_%__kont264434264435%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont264434264435%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g262023262063%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::check-arguments
      (lambda (_%self261813%_ _%ctx261814%_ _%stx261815%_ _%args261816%_)
        (let ((_%self261819%_ _%self261813%_))
          (if (let ()
                (declare (not safe))
                (##unchecked-structure-ref _%self261819%_ '4 '#f '#f))
              (gxc#!procedure::check-arguments
               _%self261819%_
               _%ctx261814%_
               _%stx261815%_
               _%args261816%_)
              '#t))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'check-arguments
       gxc#!accessor::check-arguments
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self261596%_ _%ctx261597%_ _%stx261598%_ _%args261599%_)
        (let* ((_%self261602%_ _%self261596%_)
               (_%arguments-ok?261612%_
                (let ((__method264975
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self261602%_ 'check-arguments))))
                  (if __method264975
                      (let ()
                        (declare (not safe))
                        (__method264975
                         _%self261602%_
                         _%ctx261597%_
                         _%stx261598%_
                         _%args261599%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self261602%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g261614261624%_
                (lambda (_%$%g261615261621%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g261615261621%_))))
               (_%$%g261613261688%_
                (lambda (_%$%g261615261627%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g261615261627%_))
                      (let ((_%$%e261617261629%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g261615261627%_))))
                        (let ((_%$%hd261618261632%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e261617261629%_)))
                              (_%$%tl261619261634%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e261617261629%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl261619261634%_))
                              (let* ((_%klass261650%_
                                      (let ((__tmp265048
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self261602%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx261598%_
                                         __tmp265048)))
                                     (_%field261652%_
                                      (let ((__tmp265049
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self261602%_
                                                '3
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#!class-slot->field-offset
                                         _%klass261650%_
                                         __tmp265049)))
                                     (_%object261654%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx261597%_
                                         _%$%hd261618261632%_)))
                                     (_%klass261657%_ _%klass261650%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass261657%_
                                       '8
                                       '#f
                                       '#f))
                                    (let ((__tmp265050
                                           (cons (if (or _%arguments-ok?261612%_
                                                         (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self261602%_
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
                              _%self261602%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#quote (cons _%field261652%_ '()))
                     (cons _%object261654%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp265050
                                       _%stx261598%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass261657%_
                                           '7
                                           '#f
                                           '#f))
                                        (let ((__tmp265051
                                               (cons (if (or _%arguments-ok?261612%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self261602%_
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
                                  _%self261602%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field261652%_ '()))
                         (cons _%object261654%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp265051
                                           _%stx261598%_))
                                        (let ((_%$e261676%_
                                               (let ((__tmp265052
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self261602%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot-find-struct
                                                  _%klass261657%_
                                                  __tmp265052))))
                                          (if _%$e261676%_
                                              (let ((__tmp265053
                                                     (cons (if (or _%arguments-ok?261612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self261602%_
                                   '4
                                   '#f
                                   '#f))))
                       '%#struct-unchecked-ref
                       '%#struct-ref)
                   (cons (cons '%#ref
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self261602%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#quote (cons _%field261652%_ '()))
                               (cons _%object261654%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp265053
                                                 _%stx261598%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self261602%_
                                                     '4
                                                     '#f
                                                     '#f))
                                                  (let ((__tmp265054
                                                         (let ((_%$obj261685%_
                                                                (let ((__tmp265055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp265055))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$obj261685%_ '())
                                           (cons _%object261654%_ '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#struct-direct-instance?
                                                       (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass261657%_
                                    '1
                                    '#f
                                    '#f))
                                 '()))
                     (cons (cons '%#ref (cons _%$obj261685%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#struct-unchecked-ref
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self261602%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field261652%_ '()))
                                 (cons (cons '%#ref (cons _%$obj261685%_ '()))
                                       '()))))
               (cons (if _%arguments-ok?261612%_
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj261685%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self261602%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'class-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self261602%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj261685%_
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self261602%_
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
                                                     __tmp265054
                                                     _%stx261598%_))
                                                  (let ((__tmp265056
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'unchecked-slot-ref '()))
                             (cons _%object261654%_
                                   (cons (cons '%#quote
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self261602%_
                                                        '3
                                                        '#f
                                                        '#f))
                                                     '()))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp265056
                                                     _%stx261598%_))))))))
                              (_%$%g261614261624%_ _%$%g261615261627%_))))
                      (_%$%g261614261624%_ _%$%g261615261627%_)))))
          (_%$%g261613261688%_ _%args261599%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass264082 __method-table264083)
        (let ((__check-arguments264084
               (let ((__tmp265057
                      (lambda ()
                        (let ((__method264085
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table264083
                                  'check-arguments
                                  '#f))))
                          (if __method264085
                              __method264085
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp265057)))
              (__slot264086
               (let ((__slot264087
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass264082 'slot))))
                 (if __slot264087
                     __slot264087
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self261596%_ _%ctx261597%_ _%stx261598%_ _%args261599%_)
            (let* ((_%self261602%_ _%self261596%_)
                   (_%arguments-ok?261612%_
                    ((force __check-arguments264084)
                     _%self261602%_
                     _%ctx261597%_
                     _%stx261598%_
                     _%args261599%_))
                   (_%$%g261614261624%_
                    (lambda (_%$%g261615261621%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g261615261621%_))))
                   (_%$%g261613261688%_
                    (lambda (_%$%g261615261627%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g261615261627%_))
                          (let ((_%$%e261617261629%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g261615261627%_))))
                            (let ((_%$%hd261618261632%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e261617261629%_)))
                                  (_%$%tl261619261634%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e261617261629%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl261619261634%_))
                                  (let* ((_%klass261650%_
                                          (let ((__tmp265058
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self261602%_
                                                    '1
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx261598%_
                                             __tmp265058)))
                                         (_%field261652%_
                                          (let ((__tmp265059
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self261602%_
                                                    '3
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#!class-slot->field-offset
                                             _%klass261650%_
                                             __tmp265059)))
                                         (_%object261654%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%ctx261597%_
                                             _%$%hd261618261632%_)))
                                         (_%klass261657%_ _%klass261650%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass261657%_
                                           '8
                                           '#f
                                           '#f))
                                        (let ((__tmp265060
                                               (cons (if (or _%arguments-ok?261612%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self261602%_
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
                                  _%self261602%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field261652%_ '()))
                         (cons _%object261654%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp265060
                                           _%stx261598%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass261657%_
                                               '7
                                               '#f
                                               '#f))
                                            (let ((__tmp265061
                                                   (cons (if (or _%arguments-ok?261612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self261602%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-ref
                     '%#struct-ref)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self261602%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field261652%_ '()))
                             (cons _%object261654%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp265061
                                               _%stx261598%_))
                                            (let ((_%$e261676%_
                                                   (let ((__tmp265062
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self261602%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot-find-struct
                                                      _%klass261657%_
                                                      __tmp265062))))
                                              (if _%$e261676%_
                                                  (let ((__tmp265063
                                                         (cons (if (or _%arguments-ok?261612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (not (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self261602%_
                                       '4
                                       '#f
                                       '#f))))
                           '%#struct-unchecked-ref
                           '%#struct-ref)
                       (cons (cons '%#ref
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self261602%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#quote (cons _%field261652%_ '()))
                                   (cons _%object261654%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp265063
                                                     _%stx261598%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self261602%_
                                                         '4
                                                         '#f
                                                         '#f))
                                                      (let ((__tmp265064
                                                             (let ((_%$obj261685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp265065
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp265065))))
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj261685%_ '())
                                               (cons _%object261654%_ '()))
                                         '())
                                   (cons (cons '%#if
                                               (cons (cons '%#struct-direct-instance?
                                                           (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass261657%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#ref (cons _%$obj261685%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#struct-unchecked-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self261602%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field261652%_ '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj261685%_ '()))
                                           '()))))
                   (cons (if _%arguments-ok?261612%_
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj261685%_ '()))
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self261602%_
                            __slot264086
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
                                                              _%self261602%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj261685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self261602%_
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
                (gxc#xform-wrap-source __tmp265064 _%stx261598%_))
              (let ((__tmp265066
                     (cons '%#call
                           (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                 (cons _%object261654%_
                                       (cons (cons '%#quote
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self261602%_
                                                            '3
                                                            '#f
                                                            '#f))
                                                         '()))
                                             '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp265066 _%stx261598%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g261614261624%_ _%$%g261615261627%_))))
                          (_%$%g261614261624%_ _%$%g261615261627%_)))))
              (_%$%g261613261688%_ _%args261599%_))))))
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
      (lambda (_%self261360%_ _%ctx261361%_ _%stx261362%_ _%args261363%_)
        (let* ((_%self261366%_ _%self261360%_)
               (_%arguments-ok?261376%_
                (let ((__method264976
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self261366%_ 'check-arguments))))
                  (if __method264976
                      (let ()
                        (declare (not safe))
                        (__method264976
                         _%self261366%_
                         _%ctx261361%_
                         _%stx261362%_
                         _%args261363%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self261366%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g261378261392%_
                (lambda (_%$%g261379261389%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g261379261389%_))))
               (_%$%g261377261471%_
                (lambda (_%$%g261379261395%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g261379261395%_))
                      (let ((_%$%e261382261397%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g261379261395%_))))
                        (let ((_%$%hd261383261400%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e261382261397%_)))
                              (_%$%tl261384261402%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e261382261397%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl261384261402%_))
                              (let ((_%$%e261385261405%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl261384261402%_))))
                                (let ((_%$%hd261386261408%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e261385261405%_)))
                                      (_%$%tl261387261410%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e261385261405%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl261387261410%_))
                                      (let* ((_%klass261430%_
                                              (let ((__tmp265067
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self261366%_
                                                        '1
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#optimizer-resolve-class
                                                 _%stx261362%_
                                                 __tmp265067)))
                                             (_%field261432%_
                                              (let ((__tmp265068
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self261366%_
                                                        '3
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#!class-slot->field-offset
                                                 _%klass261430%_
                                                 __tmp265068)))
                                             (_%object261434%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx261361%_
                                                 _%$%hd261383261400%_)))
                                             (_%value261436%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx261361%_
                                                 _%$%hd261386261408%_)))
                                             (_%klass261439%_ _%klass261430%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass261439%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp265069
                                                   (cons (if (or _%arguments-ok?261376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self261366%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-set!
                     '%#struct-direct-set!)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self261366%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field261432%_ '()))
                             (cons _%object261434%_
                                   (cons _%value261436%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp265069
                                               _%stx261362%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass261439%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp265070
                                                       (cons (if (or _%arguments-ok?261376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self261366%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self261366%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field261432%_ '()))
                                 (cons _%object261434%_
                                       (cons _%value261436%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp265070
                                                   _%stx261362%_))
                                                (let ((_%$e261459%_
                                                       (let ((__tmp265071
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self261366%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot-find-struct _%klass261439%_ __tmp265071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e261459%_
                                                      (let ((__tmp265072
                                                             (cons (if (or _%arguments-ok?261376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (not (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self261366%_
                                           '3
                                           '#f
                                           '#f))))
                               '%#struct-unchecked-set!
                               '%#struct-set!)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self261366%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field261432%_ '()))
                                       (cons _%object261434%_
                                             (cons _%value261436%_ '())))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp265072 _%stx261362%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self261366%_ '4 '#f '#f))
                  (let ((__tmp265073
                         (let ((_%$obj261468%_
                                (let ((__tmp265074
                                       (let ()
                                         (declare (not safe))
                                         (##gensym '__obj))))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp265074))))
                           (cons '%#let-values
                                 (cons (cons (cons (cons _%$obj261468%_ '())
                                                   (cons _%object261434%_ '()))
                                             '())
                                       (cons (cons '%#if
                                                   (cons (cons '%#struct-direct-instance?
                                                               (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass261439%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#ref (cons _%$obj261468%_ '()))
                                   '())))
                 (cons (cons '%#struct-unchecked-set!
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self261366%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field261432%_ '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj261468%_ '()))
                                               (cons _%value261436%_ '())))))
                       (cons (if _%arguments-ok?261376%_
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'unchecked-slot-set!
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj261468%_
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self261366%_
                                '3
                                '#f
                                '#f))
                             '()))
                 (cons _%value261436%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'class-slot-set! '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self261366%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#ref
                                                               (cons _%$obj261468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self261366%_
                                      '3
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%value261436%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp265073 _%stx261362%_))
                  (let ((__tmp265075
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-set! '()))
                                     (cons _%object261434%_
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self261366%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%value261436%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp265075 _%stx261362%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g261378261392%_
                                       _%$%g261379261395%_))))
                              (_%$%g261378261392%_ _%$%g261379261395%_))))
                      (_%$%g261378261392%_ _%$%g261379261395%_)))))
          (_%$%g261377261471%_ _%args261363%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass264088 __method-table264089)
        (let ((__check-arguments264090
               (let ((__tmp265076
                      (lambda ()
                        (let ((__method264091
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table264089
                                  'check-arguments
                                  '#f))))
                          (if __method264091
                              __method264091
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp265076))))
          (lambda (_%self261360%_ _%ctx261361%_ _%stx261362%_ _%args261363%_)
            (let* ((_%self261366%_ _%self261360%_)
                   (_%arguments-ok?261376%_
                    ((force __check-arguments264090)
                     _%self261366%_
                     _%ctx261361%_
                     _%stx261362%_
                     _%args261363%_))
                   (_%$%g261378261392%_
                    (lambda (_%$%g261379261389%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g261379261389%_))))
                   (_%$%g261377261471%_
                    (lambda (_%$%g261379261395%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g261379261395%_))
                          (let ((_%$%e261382261397%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g261379261395%_))))
                            (let ((_%$%hd261383261400%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e261382261397%_)))
                                  (_%$%tl261384261402%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e261382261397%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl261384261402%_))
                                  (let ((_%$%e261385261405%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl261384261402%_))))
                                    (let ((_%$%hd261386261408%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e261385261405%_)))
                                          (_%$%tl261387261410%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e261385261405%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl261387261410%_))
                                          (let* ((_%klass261430%_
                                                  (let ((__tmp265077
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self261366%_
                                                            '1
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#optimizer-resolve-class
                                                     _%stx261362%_
                                                     __tmp265077)))
                                                 (_%field261432%_
                                                  (let ((__tmp265078
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self261366%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot->field-offset
                                                     _%klass261430%_
                                                     __tmp265078)))
                                                 (_%object261434%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx261361%_
                                                     _%$%hd261383261400%_)))
                                                 (_%value261436%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx261361%_
                                                     _%$%hd261386261408%_)))
                                                 (_%klass261439%_
                                                  _%klass261430%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass261439%_
                                                   '8
                                                   '#f
                                                   '#f))
                                                (let ((__tmp265079
                                                       (cons (if (or _%arguments-ok?261376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self261366%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-direct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self261366%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field261432%_ '()))
                                 (cons _%object261434%_
                                       (cons _%value261436%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp265079
                                                   _%stx261362%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%klass261439%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp265080
                                                           (cons (if (or _%arguments-ok?261376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self261366%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-set!
                             '%#struct-set!)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self261366%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field261432%_ '()))
                                     (cons _%object261434%_
                                           (cons _%value261436%_ '())))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp265080 _%stx261362%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$e261459%_
                                                           (let ((__tmp265081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self261366%_
                             '3
                             '#f
                             '#f))))
                     (declare (not safe))
                     (gxc#!class-slot-find-struct
                      _%klass261439%_
                      __tmp265081))))
              (if _%$e261459%_
                  (let ((__tmp265082
                         (cons (if (or _%arguments-ok?261376%_
                                       (not (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self261366%_
                                               '3
                                               '#f
                                               '#f))))
                                   '%#struct-unchecked-set!
                                   '%#struct-set!)
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self261366%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     (cons (cons '%#quote
                                                 (cons _%field261432%_ '()))
                                           (cons _%object261434%_
                                                 (cons _%value261436%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp265082 _%stx261362%_))
                  (if (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self261366%_ '4 '#f '#f))
                      (let ((__tmp265083
                             (let ((_%$obj261468%_
                                    (let ((__tmp265084
                                           (let ()
                                             (declare (not safe))
                                             (##gensym '__obj))))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp265084))))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj261468%_
                                                             '())
                                                       (cons _%object261434%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#if
                                                       (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass261439%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#ref (cons _%$obj261468%_ '()))
                                       '())))
                     (cons (cons '%#struct-unchecked-set!
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self261366%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field261432%_ '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj261468%_
                                                               '()))
                                                   (cons _%value261436%_
                                                         '())))))
                           (cons (if _%arguments-ok?261376%_
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'unchecked-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj261468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#quote
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self261366%_
                                    '3
                                    '#f
                                    '#f))
                                 '()))
                     (cons _%value261436%_ '())))))
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
                              _%self261366%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#ref (cons _%$obj261468%_ '()))
                     (cons (cons '%#quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self261366%_
                                          '3
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%value261436%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp265083 _%stx261362%_))
                      (let ((__tmp265085
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-set! '()))
                                         (cons _%object261434%_
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self261366%_
                            '3
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%value261436%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source
                         __tmp265085
                         _%stx261362%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g261378261392%_
                                           _%$%g261379261395%_))))
                                  (_%$%g261378261392%_ _%$%g261379261395%_))))
                          (_%$%g261378261392%_ _%$%g261379261395%_)))))
              (_%$%g261377261471%_ _%args261363%_))))))
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
      (lambda (_%self261176%_ _%ctx261177%_ _%stx261178%_ _%args261179%_)
        (let* ((_%self261182%_ _%self261176%_)
               (_%$%self261191261201%_ _%self261182%_)
               (_%$%E261193261204%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self261191261201%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%$%K261194261214%_
                (lambda (_%inline261207%_ _%dispatch261208%_ _%arity261209%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self261182%_
                         _%args261179%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx261178%_
                         _%arity261209%_)))
                  (if _%inline261207%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp265086 (_%inline261207%_ _%stx261178%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp265086
                           _%stx261178%_
                           _%ctx261177%_)))
                      (if (and _%dispatch261208%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch261208%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch261208%_))
                            (let ((__tmp265087
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch261208%_
                                                           '()))
                                               _%args261179%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp265087
                               _%stx261178%_
                               _%ctx261177%_)))
                          (gxc#!procedure::optimize-call
                           _%self261182%_
                           _%ctx261177%_
                           _%stx261178%_
                           _%args261179%_)))))
               (_%$%e261195261217%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self261191261201%_
                   '1
                   '#f
                   '#f)))
               (_%$%e261196261220%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self261191261201%_
                   '2
                   '#f
                   '#f)))
               (_%$%e261197261223%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self261191261201%_
                   '3
                   '#f
                   '#f)))
               (_%arity261226%_ _%$%e261197261223%_)
               (_%$%e261198261228%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self261191261201%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch261231%_ _%$%e261198261228%_)
               (_%$%e261199261233%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self261191261201%_
                   '5
                   '#f
                   '#f)))
               (_%inline261236%_ _%$%e261199261233%_))
          (_%$%K261194261214%_
           _%inline261236%_
           _%dispatch261231%_
           _%arity261226%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self261028%_ _%ctx261029%_ _%stx261030%_ _%args261031%_)
        (let* ((_%self261034%_ _%self261028%_)
               (_%$e261048%_
                (let ((__tmp265089
                       (lambda (_%$%g261043261045%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%$%g261043261045%_
                            _%args261031%_))))
                      (__tmp265088
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self261034%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp265089 __tmp265088))))
          (if _%$e261048%_
              (let ((__method264977
                     (let ()
                       (declare (not safe))
                       (__method-ref _%$e261048%_ 'optimize-call))))
                (if __method264977
                    (let ()
                      (declare (not safe))
                      (__method264977
                       _%$e261048%_
                       _%ctx261029%_
                       _%stx261030%_
                       _%args261031%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method" _%$e261048%_ 'optimize-call))
                      '#!void)))
              (let ((__tmp265090
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self261034%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx261030%_
                 __tmp265090))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self260769%_ _%ctx260770%_ _%stx260771%_ _%args260772%_)
        (let* ((_%self260775%_ _%self260769%_)
               (_%$%self260784260793%_ _%self260775%_)
               (_%$%E260786260796%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self260784260793%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%$%K260787260887%_
                (lambda (_%dispatch260799%_ _%table260800%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch260799%_))
                      (let* ((_%$%g260801260811%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch260799%_)))
                             (_%$%else260803260819%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch260799%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx260770%_
                                   _%stx260771%_))))
                             (_%$%K260805260868%_
                              (lambda (_%main260822%_ _%keys260823%_)
                                (let ((_g265091_
                                       (gxc#!kw-lambda-split-args
                                        _%stx260771%_
                                        _%args260772%_)))
                                  (begin
                                    (let ((_g265092_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g265091_)
                                                 (##values-length _g265091_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g265092_ 2)))
                                          (error "Context expects 2 values"
                                                 _g265092_)))
                                    (let ((_%pargs260825%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g265091_ 0)))
                                          (_%kwargs260826%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g265091_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main260822%_))
                                        (if _%table260800%_
                                            (let ((_%xargs260834%_
                                                   (map (lambda (_%key260828%_)
                                                          (let ((_%$e260830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key260828%_ _%kwargs260826%_))))
                    (if _%$e260830%_ _%$e260830%_ '(%#ref absent-value))))
                _%keys260823%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw260836%_)
                                                 (if (memq (car _%kw260836%_)
                                                           _%keys260823%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx260771%_
                                                        _%keys260823%_
                                                        _%kw260836%_))))
                                               _%kwargs260826%_)
                                              (let ((__tmp265093
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main260822%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (append _%xargs260834%_ _%pargs260825%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp265093
                                                 _%stx260771%_
                                                 _%ctx260770%_)))
                                            (let* ((_%kwt260838%_
                                                    (let ((__tmp265094
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp265094)))
                                                   (_%kwvars260842%_
                                                    (map (lambda (_%_260840%_)
                                                           (let ((__tmp265095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp265095)))
                 _%kwargs260826%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind260847%_
                                                    (map (lambda (_%kw260844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar260845%_)
                   (cons (cons _%kwvar260845%_ '())
                         (cons (cdr _%kw260844%_) '())))
                 _%kwargs260826%_
                 _%kwvars260842%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset260852%_
                                                    (map (lambda (_%kw260849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar260850%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt260838%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw260849%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar260850%_
                                                             '()))
                                                 '()))))))
                 _%kwargs260826%_
                 _%kwvars260842%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs260857%_
                                                    (map (lambda (_%kw260854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar260855%_)
                   (cons (car _%kw260854%_)
                         (cons '%#ref (cons _%kwvar260855%_ '()))))
                 _%kwargs260826%_
                 _%kwvars260842%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs260865%_
                                                    (map (lambda (_%key260859%_)
                                                           (let ((_%$e260861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key260859%_ _%xkwargs260857%_))))
                     (if _%$e260861%_ _%$e260861%_ '(%#ref absent-value))))
                 _%keys260823%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp265096
                                                    (cons '%#let-values
                                                          (cons _%kwbind260847%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt260838%_ '())
                                                      (cons (let ((__tmp265097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs260826%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp265097 _%stx260771%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp265098
                                                             (cons (let ((__tmp265099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main260822%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt260838%_
                                                                '()))
                                                    (append _%xargs260865%_
                                                            _%pargs260825%_))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp265099 _%stx260771%_))
                           '())))
                (declare (not safe))
                (##append _%kwset260852%_ __tmp265098)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp265096
                                               _%stx260771%_
                                               _%ctx260770%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%g260801260811%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%$%e260806260871%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g260801260811%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%$%e260807260874%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g260801260811%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%$%e260808260877%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g260801260811%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys260880%_ _%$%e260808260877%_)
                                   (_%$%e260809260882%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g260801260811%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main260885%_ _%$%e260809260882%_))
                              (_%$%K260805260868%_
                               _%main260885%_
                               _%keys260880%_))
                            (_%$%else260803260819%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx260770%_ _%stx260771%_)))))
               (_%$%e260788260890%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self260784260793%_
                   '1
                   '#f
                   '#f)))
               (_%$%e260789260893%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self260784260793%_
                   '2
                   '#f
                   '#f)))
               (_%$%e260790260896%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self260784260793%_
                   '3
                   '#f
                   '#f)))
               (_%table260899%_ _%$%e260790260896%_)
               (_%$%e260791260901%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self260784260793%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch260904%_ _%$%e260791260901%_))
          (_%$%K260787260887%_ _%dispatch260904%_ _%table260899%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx260382%_ _%args260383%_)
        (let _%lp260385%_ ((_%rest260387%_ _%args260383%_)
                           (_%pargs260388%_ '())
                           (_%kwargs260389%_ '()))
          (let* ((_%__stx264470264471%_ _%rest260387%_)
                 (_%$%g260395260447%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx264470264471%_)))))
            (let ((_%__kont264472264473%_
                   (lambda (_%$%g260397260626%_ _%$%g260398260627%_)
                     (_%lp260385%_
                      _%$%g260397260626%_
                      (cons _%$%g260398260627%_ _%pargs260388%_)
                      _%kwargs260389%_)))
                  (_%__kont264474264475%_
                   (lambda (_%$%g260412260572%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%$%g260412260572%_
                                _%pargs260388%_))
                             (reverse _%kwargs260389%_))))
                  (_%__kont264476264477%_
                   (lambda (_%$%g260423260519%_
                            _%$%g260424260520%_
                            _%$%g260425260521%_)
                     (let ((_%kw260538%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g260425260521%_))))
                       (if (assq _%kw260538%_ _%kwargs260389%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx260382%_
                              _%kw260538%_))
                           (_%lp260385%_
                            _%$%g260423260519%_
                            _%pargs260388%_
                            (cons (cons _%kw260538%_ _%$%g260424260520%_)
                                  _%kwargs260389%_))))))
                  (_%__kont264478264479%_
                   (lambda (_%$%g260438260467%_ _%$%g260439260468%_)
                     (_%lp260385%_
                      _%$%g260438260467%_
                      (cons _%$%g260439260468%_ _%pargs260388%_)
                      _%kwargs260389%_)))
                  (_%__kont264480264481%_
                   (lambda ()
                     (values (reverse _%pargs260388%_)
                             (reverse _%kwargs260389%_)))))
              (let ((_%__match264577264578%_
                     (lambda (_%$%e260426260487%_
                              _%$%hd260427260490%_
                              _%$%tl260428260492%_
                              _%$%e260429260495%_
                              _%$%hd260430260498%_
                              _%$%tl260431260500%_
                              _%$%e260432260503%_
                              _%$%hd260433260506%_
                              _%$%tl260434260508%_
                              _%$%e260435260511%_
                              _%$%hd260436260514%_
                              _%$%tl260437260516%_)
                       (let ((_%$%g260423260519%_ _%$%tl260437260516%_)
                             (_%$%g260424260520%_ _%$%hd260436260514%_)
                             (_%$%g260425260521%_ _%$%hd260433260506%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%$%g260425260521%_))
                             (_%__kont264476264477%_
                              _%$%g260423260519%_
                              _%$%g260424260520%_
                              _%$%g260425260521%_)
                             (_%__kont264478264479%_
                              _%$%tl260428260492%_
                              _%$%hd260427260490%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx264470264471%_))
                    (let ((_%$%e260399260591%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx264470264471%_))))
                      (let ((_%$%tl260401260596%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e260399260591%_)))
                            (_%$%hd260400260594%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e260399260591%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd260400260594%_))
                            (let ((_%$%e260402260599%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd260400260594%_))))
                              (let ((_%$%tl260404260604%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e260402260599%_)))
                                    (_%$%hd260403260602%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e260402260599%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd260403260602%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd260403260602%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl260404260604%_))
                                            (let ((_%$%e260405260607%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl260404260604%_))))
                                              (let ((_%$%tl260407260612%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e260405260607%_)))
                                                    (_%$%hd260406260610%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e260405260607%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd260406260610%_))
                                                    (let ((_%$%e260408260615%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd260406260610%_))))
                                                      (if (equal? _%$%e260408260615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl260407260612%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl260401260596%_))
                          (let ((_%$%e260409260618%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl260401260596%_))))
                            (let ((_%$%tl260411260623%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e260409260618%_)))
                                  (_%$%hd260410260621%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e260409260618%_))))
                              (_%__kont264472264473%_
                               _%$%tl260411260623%_
                               _%$%hd260410260621%_)))
                          (_%__kont264478264479%_
                           _%$%tl260401260596%_
                           _%$%hd260400260594%_))
                      (_%__kont264478264479%_
                       _%$%tl260401260596%_
                       _%$%hd260400260594%_))
                  (if (equal? _%$%e260408260615%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl260407260612%_))
                          (_%__kont264474264475%_ _%$%tl260401260596%_)
                          (_%__kont264478264479%_
                           _%$%tl260401260596%_
                           _%$%hd260400260594%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl260407260612%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl260401260596%_))
                              (let ((_%$%e260435260511%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl260401260596%_))))
                                (let ((_%$%tl260437260516%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e260435260511%_)))
                                      (_%$%hd260436260514%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e260435260511%_))))
                                  (_%__match264577264578%_
                                   _%$%e260399260591%_
                                   _%$%hd260400260594%_
                                   _%$%tl260401260596%_
                                   _%$%e260402260599%_
                                   _%$%hd260403260602%_
                                   _%$%tl260404260604%_
                                   _%$%e260405260607%_
                                   _%$%hd260406260610%_
                                   _%$%tl260407260612%_
                                   _%$%e260435260511%_
                                   _%$%hd260436260514%_
                                   _%$%tl260437260516%_)))
                              (_%__kont264478264479%_
                               _%$%tl260401260596%_
                               _%$%hd260400260594%_))
                          (_%__kont264478264479%_
                           _%$%tl260401260596%_
                           _%$%hd260400260594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl260407260612%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl260401260596%_))
                                                            (let ((_%$%e260435260511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl260401260596%_))))
                      (let ((_%$%tl260437260516%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e260435260511%_)))
                            (_%$%hd260436260514%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e260435260511%_))))
                        (_%__match264577264578%_
                         _%$%e260399260591%_
                         _%$%hd260400260594%_
                         _%$%tl260401260596%_
                         _%$%e260402260599%_
                         _%$%hd260403260602%_
                         _%$%tl260404260604%_
                         _%$%e260405260607%_
                         _%$%hd260406260610%_
                         _%$%tl260407260612%_
                         _%$%e260435260511%_
                         _%$%hd260436260514%_
                         _%$%tl260437260516%_)))
                    (_%__kont264478264479%_
                     _%$%tl260401260596%_
                     _%$%hd260400260594%_))
                (_%__kont264478264479%_
                 _%$%tl260401260596%_
                 _%$%hd260400260594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont264478264479%_
                                             _%$%tl260401260596%_
                                             _%$%hd260400260594%_))
                                        (_%__kont264478264479%_
                                         _%$%tl260401260596%_
                                         _%$%hd260400260594%_))
                                    (_%__kont264478264479%_
                                     _%$%tl260401260596%_
                                     _%$%hd260400260594%_))))
                            (_%__kont264478264479%_
                             _%$%tl260401260596%_
                             _%$%hd260400260594%_))))
                    (_%__kont264480264481%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self260366%_ _%ctx260367%_ _%stx260368%_ _%args260369%_)
        (let ((_%self260372%_ _%self260366%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx260367%_ _%stx260368%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self260056%_ _%stx260057%_)
        (let* ((_%__stx264586264587%_ _%stx260057%_)
               (_%$%g260060260100%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx264586264587%_)))))
          (let ((_%__kont264588264589%_
                 (lambda (_%$%g260062260204%_ _%$%g260063260205%_)
                   (let ((_%$e260232%_
                          (member 'return:
                                  (let ((__tmp265100
                                         (lambda (_%$%g260224260227%_
                                                  _%$%g260225260229%_)
                                           (cons _%$%g260224260227%_
                                                 _%$%g260225260229%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp265100
                                     '()
                                     _%$%g260063260205%_))
                                  gx#stx-eq?)))
                     (if _%$e260232%_
                         (let ((_%type260237%_
                                (let ((__tmp265101
                                       (let ((__tmp265102 (cadr _%$e260232%_)))
                                         (declare (not safe))
                                         (gxc#identifier-symbol __tmp265102))))
                                  (declare (not safe))
                                  (gxc#optimizer-resolve-class
                                   _%stx260057%_
                                   __tmp265101))))
                           (gxc#check-return-type!
                            _%stx260057%_
                            _%$%g260062260204%_
                            _%type260237%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self260056%_
                              _%$%g260062260204%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self260056%_
                            _%$%g260062260204%_))))))
                (_%__kont264592264593%_
                 (lambda (_%$%g260085260129%_ _%$%g260086260130%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self260056%_ _%$%g260085260129%_)))))
            (let ((_%__match264623264624%_
                   (lambda (_%$%e260064260150%_
                            _%$%hd260065260153%_
                            _%$%tl260066260155%_
                            _%$%e260067260158%_
                            _%$%hd260068260161%_
                            _%$%tl260069260163%_
                            _%$%e260070260166%_
                            _%$%hd260071260169%_
                            _%$%tl260072260171%_
                            _%__splice264590264591%_
                            _%$%target260073260174%_
                            _%$%tl260075260176%_)
                     (letrec ((_%$%loop260076260179%_
                               (lambda (_%$%hd260074260182%_
                                        _%$%signature260080260184%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd260074260182%_))
                                     (let ((_%$%e260077260186%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd260074260182%_))))
                                       (let ((_%$%lp-tl260079260191%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e260077260186%_)))
                                             (_%$%lp-hd260078260189%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e260077260186%_))))
                                         (_%$%loop260076260179%_
                                          _%$%lp-tl260079260191%_
                                          (cons _%$%lp-hd260078260189%_
                                                _%$%signature260080260184%_))))
                                     (let ((_%$%signature260081260194%_
                                            (reverse _%$%signature260080260184%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl260069260163%_))
                                           (let ((_%$%e260082260196%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl260069260163%_))))
                                             (let ((_%$%tl260084260201%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e260082260196%_)))
                                                   (_%$%hd260083260199%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e260082260196%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl260084260201%_))
                                                   (_%__kont264588264589%_
                                                    _%$%hd260083260199%_
                                                    _%$%signature260081260194%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g260060260100%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g260060260100%_))))))))
                       (_%$%loop260076260179%_
                        _%$%target260073260174%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx264586264587%_))
                  (let ((_%$%e260064260150%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx264586264587%_))))
                    (let ((_%$%tl260066260155%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e260064260150%_)))
                          (_%$%hd260065260153%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e260064260150%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl260066260155%_))
                          (let ((_%$%e260067260158%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl260066260155%_))))
                            (let ((_%$%tl260069260163%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e260067260158%_)))
                                  (_%$%hd260068260161%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e260067260158%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd260068260161%_))
                                  (let ((_%$%e260070260166%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd260068260161%_))))
                                    (let ((_%$%tl260072260171%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e260070260166%_)))
                                          (_%$%hd260071260169%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e260070260166%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd260071260169%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%$%hd260071260169%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%$%tl260072260171%_))
                                                  (let ((_%__splice264590264591%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl260072260171%_
                                                            '0))))
                                                    (let ((_%$%tl260075260176%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice264590264591%_
                                                              '1)))
                                                          (_%$%target260073260174%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice264590264591%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl260075260176%_))
                                                          (_%__match264623264624%_
                                                           _%$%e260064260150%_
                                                           _%$%hd260065260153%_
                                                           _%$%tl260066260155%_
                                                           _%$%e260067260158%_
                                                           _%$%hd260068260161%_
                                                           _%$%tl260069260163%_
                                                           _%$%e260070260166%_
                                                           _%$%hd260071260169%_
                                                           _%$%tl260072260171%_
                                                           _%__splice264590264591%_
                                                           _%$%target260073260174%_
                                                           _%$%tl260075260176%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl260069260163%_))
                      (let ((_%$%e260093260121%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl260069260163%_))))
                        (let ((_%$%tl260095260126%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e260093260121%_)))
                              (_%$%hd260094260124%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e260093260121%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl260095260126%_))
                              (_%__kont264592264593%_
                               _%$%hd260094260124%_
                               _%$%hd260068260161%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g260060260100%_)))))
                      (let () (declare (not safe)) (_%$%g260060260100%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl260069260163%_))
                                                      (let ((_%$%e260093260121%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl260069260163%_))))
                (let ((_%$%tl260095260126%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e260093260121%_)))
                      (_%$%hd260094260124%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e260093260121%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl260095260126%_))
                      (_%__kont264592264593%_
                       _%$%hd260094260124%_
                       _%$%hd260068260161%_)
                      (let () (declare (not safe)) (_%$%g260060260100%_)))))
              (let () (declare (not safe)) (_%$%g260060260100%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl260069260163%_))
                                                  (let ((_%$%e260093260121%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl260069260163%_))))
                                                    (let ((_%$%tl260095260126%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e260093260121%_)))
                                                          (_%$%hd260094260124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e260093260121%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl260095260126%_))
                                                          (_%__kont264592264593%_
                                                           _%$%hd260094260124%_
                                                           _%$%hd260068260161%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g260060260100%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g260060260100%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl260069260163%_))
                                              (let ((_%$%e260093260121%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl260069260163%_))))
                                                (let ((_%$%tl260095260126%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e260093260121%_)))
                                                      (_%$%hd260094260124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e260093260121%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl260095260126%_))
                                                      (_%__kont264592264593%_
                                                       _%$%hd260094260124%_
                                                       _%$%hd260068260161%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g260060260100%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g260060260100%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl260069260163%_))
                                      (let ((_%$%e260093260121%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl260069260163%_))))
                                        (let ((_%$%tl260095260126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e260093260121%_)))
                                              (_%$%hd260094260124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e260093260121%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl260095260126%_))
                                              (_%__kont264592264593%_
                                               _%$%hd260094260124%_
                                               _%$%hd260068260161%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g260060260100%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g260060260100%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g260060260100%_)))))
                  (let () (declare (not safe)) (_%$%g260060260100%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx260031%_ _%expr260032%_ _%type260033%_)
        (let ((_%$e260035%_ (not _%type260033%_)))
          (if _%$e260035%_
              _%$e260035%_
              (let ((_%$e260038%_
                     (eq? (##structure-ref _%type260033%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e260038%_
                    _%$e260038%_
                    (let ((_%$e260041%_
                           (eq? (##structure-ref
                                 _%type260033%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e260041%_
                          _%$e260041%_
                          (let ((_%expr-type260045%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr260032%_))))
                            (if (not _%expr-type260045%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx260031%_
                                   _%type260033%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type260045%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx260031%_
                                       _%type260033%_
                                       _%expr-type260045%_))
                                    (let ((_%$e260049%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type260045%_
                                              'gxc#!abort::t))))
                                      (if _%$e260049%_
                                          _%$e260049%_
                                          (let ((_%$e260052%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type260045%_
                                                    _%type260033%_))))
                                            (if _%$e260052%_
                                                _%$e260052%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx260031%_
                                                   _%type260033%_
                                                   _%expr-type260045%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self259460%_ _%stx259461%_)
        (gxc#check-contract-violation!
         _%stx259461%_
         (let* ((_%__stx264672264673%_ _%stx259461%_)
                (_%$%g259466259576%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; invalid match target"
                      _%__stx264672264673%_)))))
           (let ((_%__kont264674264675%_
                  (lambda (_%$%g259468260005%_
                           _%$%g259469260006%_
                           _%$%g259470260007%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-e _%$%g259470260007%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self259460%_
                           _%$%g259469260006%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self259460%_
                           _%$%g259468260005%_)))))
                 (_%__kont264676264677%_
                  (lambda (_%$%g259489259834%_
                           _%$%g259490259835%_
                           _%$%g259491259836%_
                           _%$%g259492259837%_)
                    (let ((_%$e259869%_
                           (let ((__tmp265103
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g259492259837%_))))
                             (declare (not safe))
                             (gxc#optimizer-lookup-type __tmp265103))))
                      (if _%$e259869%_
                          (if (or (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e259869%_
                                     'gxc#!predicate::t))
                                  (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e259869%_
                                     'gxc#!primitive-predicate::t)))
                              (let* ((_%test259877%_
                                      (let ((__tmp265104
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '%#call))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '%#ref))
                       (cons _%$%g259492259837%_ '()))
                 (cons (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#ref))
                             (cons _%$%g259491259836%_ '()))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-apply
                                         __tmp265104
                                         _%stx259461%_
                                         _%self259460%_)))
                                     (_%K259881%_
                                      (let ((__tmp265105
                                             (lambda ()
                                               (let ((__tmp265108
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self259460%_
                                                           _%$%g259490259835%_))))
                                                     (__tmp265106
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#identifier-symbol _%$%g259491259836%_))
                          (let ((__tmp265107
                                 (##structure-ref
                                  _%$e259869%_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             _%stx259461%_
                             __tmp265107)))
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp265108
                                                  gxc#current-compile-path-type
                                                  __tmp265106)))))
                                        (declare (not safe))
                                        (__make-promise __tmp265105)))
                                     (_%E259884%_
                                      (let ((__tmp265109
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self259460%_
                                                  _%$%g259489259834%_)))))
                                        (declare (not safe))
                                        (__make-promise __tmp265109)))
                                     (_%__stx264646264647%_ _%test259877%_)
                                     (_%$%g259888259901%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx264646264647%_)))))
                                (let ((_%__kont264648264649%_
                                       (lambda (_%$%g259890259929%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%$%g259890259929%_))
                                             (force _%K259881%_)
                                             (force _%E259884%_))))
                                      (_%__kont264650264651%_
                                       (lambda ()
                                         (let ((__tmp265110
                                                (cons '%#if
                                                      (cons _%test259877%_
                                                            (cons (force _%K259881%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (force _%E259884%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp265110
                                            _%stx259461%_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx264646264647%_))
                                      (let ((_%$%e259891259913%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx264646264647%_))))
                                        (let ((_%$%tl259893259918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e259891259913%_)))
                                              (_%$%hd259892259916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e259891259913%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd259892259916%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#quote
                                                     _%$%hd259892259916%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl259893259918%_))
                                                      (let ((_%$%e259894259921%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl259893259918%_))))
                (let ((_%$%tl259896259926%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e259894259921%_)))
                      (_%$%hd259895259924%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e259894259921%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl259896259926%_))
                      (_%__kont264648264649%_ _%$%hd259895259924%_)
                      (_%__kont264650264651%_))))
              (_%__kont264650264651%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont264650264651%_))
                                              (_%__kont264650264651%_))))
                                      (_%__kont264650264651%_))))
                              (let ()
                                (declare (not safe))
                                (gxc#xform-operands
                                 _%self259460%_
                                 _%stx259461%_)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-operands
                             _%self259460%_
                             _%stx259461%_))))))
                 (_%__kont264678264679%_
                  (lambda (_%$%g259526259710%_
                           _%$%g259527259711%_
                           _%$%g259528259712%_
                           _%$%g259529259713%_)
                    (gxc#optimize-if%
                     _%self259460%_
                     (let ((__tmp265111
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#if))
                                  (cons _%$%g259528259712%_
                                        (cons _%$%g259526259710%_
                                              (cons _%$%g259527259711%_
                                                    '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp265111 _%stx259461%_)))))
                 (_%__kont264680264681%_
                  (lambda (_%$%g259557259613%_
                           _%$%g259558259614%_
                           _%$%g259559259615%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-operands _%self259460%_ _%stx259461%_)))))
             (let ((_%__match264879264880%_
                    (lambda (_%$%e259530259638%_
                             _%$%hd259531259641%_
                             _%$%tl259532259643%_
                             _%$%e259533259646%_
                             _%$%hd259534259649%_
                             _%$%tl259535259651%_
                             _%$%e259536259654%_
                             _%$%hd259537259657%_
                             _%$%tl259538259659%_
                             _%$%e259539259662%_
                             _%$%hd259540259665%_
                             _%$%tl259541259667%_
                             _%$%e259542259670%_
                             _%$%hd259543259673%_
                             _%$%tl259544259675%_
                             _%$%e259545259678%_
                             _%$%hd259546259681%_
                             _%$%tl259547259683%_
                             _%$%e259548259686%_
                             _%$%hd259549259689%_
                             _%$%tl259550259691%_
                             _%$%e259551259694%_
                             _%$%hd259552259697%_
                             _%$%tl259553259699%_
                             _%$%e259554259702%_
                             _%$%hd259555259705%_
                             _%$%tl259556259707%_)
                      (let ((_%$%g259526259710%_ _%$%hd259555259705%_)
                            (_%$%g259527259711%_ _%$%hd259552259697%_)
                            (_%$%g259528259712%_ _%$%hd259549259689%_)
                            (_%$%g259529259713%_ _%$%hd259546259681%_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _%$%g259529259713%_
                               'not))
                            (_%__kont264678264679%_
                             _%$%g259526259710%_
                             _%$%g259527259711%_
                             _%$%g259528259712%_
                             _%$%g259529259713%_)
                            (_%__kont264680264681%_
                             _%$%hd259555259705%_
                             _%$%hd259552259697%_
                             _%$%hd259534259649%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx264672264673%_))
                   (let ((_%$%e259471259957%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx264672264673%_))))
                     (let ((_%$%tl259473259962%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e259471259957%_)))
                           (_%$%hd259472259960%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e259471259957%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl259473259962%_))
                           (let ((_%$%e259474259965%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl259473259962%_))))
                             (let ((_%$%tl259476259970%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e259474259965%_)))
                                   (_%$%hd259475259968%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e259474259965%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd259475259968%_))
                                   (let ((_%$%e259477259973%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd259475259968%_))))
                                     (let ((_%$%tl259479259978%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e259477259973%_)))
                                           (_%$%hd259478259976%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e259477259973%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd259478259976%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#quote
                                                  _%$%hd259478259976%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259479259978%_))
                                                   (let ((_%$%e259480259981%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259479259978%_))))
                                                     (let ((_%$%tl259482259986%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259480259981%_)))
                                                           (_%$%hd259481259984%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259480259981%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl259482259986%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl259476259970%_))
                       (let ((_%$%e259483259989%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl259476259970%_))))
                         (let ((_%$%tl259485259994%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e259483259989%_)))
                               (_%$%hd259484259992%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e259483259989%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl259485259994%_))
                               (let ((_%$%e259486259997%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl259485259994%_))))
                                 (let ((_%$%tl259488260002%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e259486259997%_)))
                                       (_%$%hd259487260000%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e259486259997%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl259488260002%_))
                                       (_%__kont264674264675%_
                                        _%$%hd259487260000%_
                                        _%$%hd259484259992%_
                                        _%$%hd259481259984%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g259466259576%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g259466259576%_)))))
                       (let () (declare (not safe)) (_%$%g259466259576%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl259476259970%_))
                       (let ((_%$%e259566259597%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl259476259970%_))))
                         (let ((_%$%tl259568259602%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e259566259597%_)))
                               (_%$%hd259567259600%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e259566259597%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl259568259602%_))
                               (let ((_%$%e259569259605%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl259568259602%_))))
                                 (let ((_%$%tl259571259610%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e259569259605%_)))
                                       (_%$%hd259570259608%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e259569259605%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl259571259610%_))
                                       (_%__kont264680264681%_
                                        _%$%hd259570259608%_
                                        _%$%hd259567259600%_
                                        _%$%hd259475259968%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g259466259576%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g259466259576%_)))))
                       (let () (declare (not safe)) (_%$%g259466259576%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl259476259970%_))
                                                       (let ((_%$%e259566259597%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl259476259970%_))))
                 (let ((_%$%tl259568259602%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e259566259597%_)))
                       (_%$%hd259567259600%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e259566259597%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl259568259602%_))
                       (let ((_%$%e259569259605%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl259568259602%_))))
                         (let ((_%$%tl259571259610%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e259569259605%_)))
                               (_%$%hd259570259608%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e259569259605%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl259571259610%_))
                               (_%__kont264680264681%_
                                _%$%hd259570259608%_
                                _%$%hd259567259600%_
                                _%$%hd259475259968%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g259466259576%_)))))
                       (let () (declare (not safe)) (_%$%g259466259576%_)))))
               (let () (declare (not safe)) (_%$%g259466259576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-eq?
                                                      '%#call
                                                      _%$%hd259478259976%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl259479259978%_))
                                                       (let ((_%$%e259502259770%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl259479259978%_))))
                 (let ((_%$%tl259504259775%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e259502259770%_)))
                       (_%$%hd259503259773%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e259502259770%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%hd259503259773%_))
                       (let ((_%$%e259505259778%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%hd259503259773%_))))
                         (let ((_%$%tl259507259783%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e259505259778%_)))
                               (_%$%hd259506259781%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e259505259778%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%$%hd259506259781%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-eq? '%#ref _%$%hd259506259781%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl259507259783%_))
                                       (let ((_%$%e259508259786%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl259507259783%_))))
                                         (let ((_%$%tl259510259791%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e259508259786%_)))
                                               (_%$%hd259509259789%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e259508259786%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl259510259791%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259504259775%_))
                                                   (let ((_%$%e259511259794%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259504259775%_))))
                                                     (let ((_%$%tl259513259799%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259511259794%_)))
                                                           (_%$%hd259512259797%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259511259794%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd259512259797%_))
                                                           (let ((_%$%e259514259802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd259512259797%_))))
                     (let ((_%$%tl259516259807%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e259514259802%_)))
                           (_%$%hd259515259805%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e259514259802%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%$%hd259515259805%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-eq? '%#ref _%$%hd259515259805%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl259516259807%_))
                                   (let ((_%$%e259517259810%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl259516259807%_))))
                                     (let ((_%$%tl259519259815%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e259517259810%_)))
                                           (_%$%hd259518259813%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e259517259810%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl259519259815%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl259513259799%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259476259970%_))
                                                   (let ((_%$%e259520259818%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259476259970%_))))
                                                     (let ((_%$%tl259522259823%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259520259818%_)))
                                                           (_%$%hd259521259821%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259520259818%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl259522259823%_))
                                                           (let ((_%$%e259523259826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl259522259823%_))))
                     (let ((_%$%tl259525259831%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e259523259826%_)))
                           (_%$%hd259524259829%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e259523259826%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl259525259831%_))
                           (_%__kont264676264677%_
                            _%$%hd259524259829%_
                            _%$%hd259521259821%_
                            _%$%hd259518259813%_
                            _%$%hd259509259789%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g259466259576%_)))))
                   (let () (declare (not safe)) (_%$%g259466259576%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259466259576%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259476259970%_))
                                                   (let ((_%$%e259566259597%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259476259970%_))))
                                                     (let ((_%$%tl259568259602%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259566259597%_)))
                                                           (_%$%hd259567259600%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259566259597%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl259568259602%_))
                                                           (let ((_%$%e259569259605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl259568259602%_))))
                     (let ((_%$%tl259571259610%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e259569259605%_)))
                           (_%$%hd259570259608%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e259569259605%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl259571259610%_))
                           (_%__kont264680264681%_
                            _%$%hd259570259608%_
                            _%$%hd259567259600%_
                            _%$%hd259475259968%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g259466259576%_)))))
                   (let () (declare (not safe)) (_%$%g259466259576%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259466259576%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl259513259799%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259476259970%_))
                                                   (let ((_%$%e259551259694%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259476259970%_))))
                                                     (let ((_%$%tl259553259699%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259551259694%_)))
                                                           (_%$%hd259552259697%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259551259694%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl259553259699%_))
                                                           (let ((_%$%e259554259702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl259553259699%_))))
                     (let ((_%$%tl259556259707%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e259554259702%_)))
                           (_%$%hd259555259705%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e259554259702%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl259556259707%_))
                           (_%__match264879264880%_
                            _%$%e259471259957%_
                            _%$%hd259472259960%_
                            _%$%tl259473259962%_
                            _%$%e259474259965%_
                            _%$%hd259475259968%_
                            _%$%tl259476259970%_
                            _%$%e259477259973%_
                            _%$%hd259478259976%_
                            _%$%tl259479259978%_
                            _%$%e259502259770%_
                            _%$%hd259503259773%_
                            _%$%tl259504259775%_
                            _%$%e259505259778%_
                            _%$%hd259506259781%_
                            _%$%tl259507259783%_
                            _%$%e259508259786%_
                            _%$%hd259509259789%_
                            _%$%tl259510259791%_
                            _%$%e259511259794%_
                            _%$%hd259512259797%_
                            _%$%tl259513259799%_
                            _%$%e259551259694%_
                            _%$%hd259552259697%_
                            _%$%tl259553259699%_
                            _%$%e259554259702%_
                            _%$%hd259555259705%_
                            _%$%tl259556259707%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g259466259576%_)))))
                   (let () (declare (not safe)) (_%$%g259466259576%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259466259576%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259476259970%_))
                                                   (let ((_%$%e259566259597%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259476259970%_))))
                                                     (let ((_%$%tl259568259602%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259566259597%_)))
                                                           (_%$%hd259567259600%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259566259597%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl259568259602%_))
                                                           (let ((_%$%e259569259605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl259568259602%_))))
                     (let ((_%$%tl259571259610%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e259569259605%_)))
                           (_%$%hd259570259608%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e259569259605%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl259571259610%_))
                           (_%__kont264680264681%_
                            _%$%hd259570259608%_
                            _%$%hd259567259600%_
                            _%$%hd259475259968%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g259466259576%_)))))
                   (let () (declare (not safe)) (_%$%g259466259576%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259466259576%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl259513259799%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl259476259970%_))
                                           (let ((_%$%e259551259694%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl259476259970%_))))
                                             (let ((_%$%tl259553259699%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e259551259694%_)))
                                                   (_%$%hd259552259697%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e259551259694%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259553259699%_))
                                                   (let ((_%$%e259554259702%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259553259699%_))))
                                                     (let ((_%$%tl259556259707%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259554259702%_)))
                                                           (_%$%hd259555259705%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259554259702%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl259556259707%_))
                                                           (_%__match264879264880%_
                                                            _%$%e259471259957%_
                                                            _%$%hd259472259960%_
                                                            _%$%tl259473259962%_
                                                            _%$%e259474259965%_
                                                            _%$%hd259475259968%_
                                                            _%$%tl259476259970%_
                                                            _%$%e259477259973%_
                                                            _%$%hd259478259976%_
                                                            _%$%tl259479259978%_
                                                            _%$%e259502259770%_
                                                            _%$%hd259503259773%_
                                                            _%$%tl259504259775%_
                                                            _%$%e259505259778%_
                                                            _%$%hd259506259781%_
                                                            _%$%tl259507259783%_
                                                            _%$%e259508259786%_
                                                            _%$%hd259509259789%_
                                                            _%$%tl259510259791%_
                                                            _%$%e259511259794%_
                                                            _%$%hd259512259797%_
                                                            _%$%tl259513259799%_
                                                            _%$%e259551259694%_
                                                            _%$%hd259552259697%_
                                                            _%$%tl259553259699%_
                                                            _%$%e259554259702%_
                                                            _%$%hd259555259705%_
                                                            _%$%tl259556259707%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g259466259576%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259466259576%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259466259576%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl259476259970%_))
                                           (let ((_%$%e259566259597%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl259476259970%_))))
                                             (let ((_%$%tl259568259602%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e259566259597%_)))
                                                   (_%$%hd259567259600%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e259566259597%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259568259602%_))
                                                   (let ((_%$%e259569259605%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259568259602%_))))
                                                     (let ((_%$%tl259571259610%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259569259605%_)))
                                                           (_%$%hd259570259608%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259569259605%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl259571259610%_))
                                                           (_%__kont264680264681%_
                                                            _%$%hd259570259608%_
                                                            _%$%hd259567259600%_
                                                            _%$%hd259475259968%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g259466259576%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259466259576%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259466259576%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl259513259799%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl259476259970%_))
                                       (let ((_%$%e259551259694%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl259476259970%_))))
                                         (let ((_%$%tl259553259699%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e259551259694%_)))
                                               (_%$%hd259552259697%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e259551259694%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl259553259699%_))
                                               (let ((_%$%e259554259702%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl259553259699%_))))
                                                 (let ((_%$%tl259556259707%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e259554259702%_)))
                                                       (_%$%hd259555259705%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e259554259702%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl259556259707%_))
                                                       (_%__match264879264880%_
                                                        _%$%e259471259957%_
                                                        _%$%hd259472259960%_
                                                        _%$%tl259473259962%_
                                                        _%$%e259474259965%_
                                                        _%$%hd259475259968%_
                                                        _%$%tl259476259970%_
                                                        _%$%e259477259973%_
                                                        _%$%hd259478259976%_
                                                        _%$%tl259479259978%_
                                                        _%$%e259502259770%_
                                                        _%$%hd259503259773%_
                                                        _%$%tl259504259775%_
                                                        _%$%e259505259778%_
                                                        _%$%hd259506259781%_
                                                        _%$%tl259507259783%_
                                                        _%$%e259508259786%_
                                                        _%$%hd259509259789%_
                                                        _%$%tl259510259791%_
                                                        _%$%e259511259794%_
                                                        _%$%hd259512259797%_
                                                        _%$%tl259513259799%_
                                                        _%$%e259551259694%_
                                                        _%$%hd259552259697%_
                                                        _%$%tl259553259699%_
                                                        _%$%e259554259702%_
                                                        _%$%hd259555259705%_
                                                        _%$%tl259556259707%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g259466259576%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g259466259576%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g259466259576%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl259476259970%_))
                                       (let ((_%$%e259566259597%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl259476259970%_))))
                                         (let ((_%$%tl259568259602%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e259566259597%_)))
                                               (_%$%hd259567259600%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e259566259597%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl259568259602%_))
                                               (let ((_%$%e259569259605%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl259568259602%_))))
                                                 (let ((_%$%tl259571259610%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e259569259605%_)))
                                                       (_%$%hd259570259608%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e259569259605%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl259571259610%_))
                                                       (_%__kont264680264681%_
                                                        _%$%hd259570259608%_
                                                        _%$%hd259567259600%_
                                                        _%$%hd259475259968%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g259466259576%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g259466259576%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g259466259576%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl259513259799%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl259476259970%_))
                                   (let ((_%$%e259551259694%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl259476259970%_))))
                                     (let ((_%$%tl259553259699%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e259551259694%_)))
                                           (_%$%hd259552259697%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e259551259694%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl259553259699%_))
                                           (let ((_%$%e259554259702%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl259553259699%_))))
                                             (let ((_%$%tl259556259707%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e259554259702%_)))
                                                   (_%$%hd259555259705%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e259554259702%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl259556259707%_))
                                                   (_%__match264879264880%_
                                                    _%$%e259471259957%_
                                                    _%$%hd259472259960%_
                                                    _%$%tl259473259962%_
                                                    _%$%e259474259965%_
                                                    _%$%hd259475259968%_
                                                    _%$%tl259476259970%_
                                                    _%$%e259477259973%_
                                                    _%$%hd259478259976%_
                                                    _%$%tl259479259978%_
                                                    _%$%e259502259770%_
                                                    _%$%hd259503259773%_
                                                    _%$%tl259504259775%_
                                                    _%$%e259505259778%_
                                                    _%$%hd259506259781%_
                                                    _%$%tl259507259783%_
                                                    _%$%e259508259786%_
                                                    _%$%hd259509259789%_
                                                    _%$%tl259510259791%_
                                                    _%$%e259511259794%_
                                                    _%$%hd259512259797%_
                                                    _%$%tl259513259799%_
                                                    _%$%e259551259694%_
                                                    _%$%hd259552259697%_
                                                    _%$%tl259553259699%_
                                                    _%$%e259554259702%_
                                                    _%$%hd259555259705%_
                                                    _%$%tl259556259707%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259466259576%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259466259576%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g259466259576%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl259476259970%_))
                                   (let ((_%$%e259566259597%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl259476259970%_))))
                                     (let ((_%$%tl259568259602%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e259566259597%_)))
                                           (_%$%hd259567259600%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e259566259597%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl259568259602%_))
                                           (let ((_%$%e259569259605%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl259568259602%_))))
                                             (let ((_%$%tl259571259610%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e259569259605%_)))
                                                   (_%$%hd259570259608%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e259569259605%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl259571259610%_))
                                                   (_%__kont264680264681%_
                                                    _%$%hd259570259608%_
                                                    _%$%hd259567259600%_
                                                    _%$%hd259475259968%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259466259576%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259466259576%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g259466259576%_)))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl259513259799%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl259476259970%_))
                           (let ((_%$%e259551259694%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl259476259970%_))))
                             (let ((_%$%tl259553259699%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e259551259694%_)))
                                   (_%$%hd259552259697%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e259551259694%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl259553259699%_))
                                   (let ((_%$%e259554259702%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl259553259699%_))))
                                     (let ((_%$%tl259556259707%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e259554259702%_)))
                                           (_%$%hd259555259705%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e259554259702%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl259556259707%_))
                                           (_%__match264879264880%_
                                            _%$%e259471259957%_
                                            _%$%hd259472259960%_
                                            _%$%tl259473259962%_
                                            _%$%e259474259965%_
                                            _%$%hd259475259968%_
                                            _%$%tl259476259970%_
                                            _%$%e259477259973%_
                                            _%$%hd259478259976%_
                                            _%$%tl259479259978%_
                                            _%$%e259502259770%_
                                            _%$%hd259503259773%_
                                            _%$%tl259504259775%_
                                            _%$%e259505259778%_
                                            _%$%hd259506259781%_
                                            _%$%tl259507259783%_
                                            _%$%e259508259786%_
                                            _%$%hd259509259789%_
                                            _%$%tl259510259791%_
                                            _%$%e259511259794%_
                                            _%$%hd259512259797%_
                                            _%$%tl259513259799%_
                                            _%$%e259551259694%_
                                            _%$%hd259552259697%_
                                            _%$%tl259553259699%_
                                            _%$%e259554259702%_
                                            _%$%hd259555259705%_
                                            _%$%tl259556259707%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259466259576%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g259466259576%_)))))
                           (let () (declare (not safe)) (_%$%g259466259576%_)))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl259476259970%_))
                           (let ((_%$%e259566259597%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl259476259970%_))))
                             (let ((_%$%tl259568259602%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e259566259597%_)))
                                   (_%$%hd259567259600%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e259566259597%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl259568259602%_))
                                   (let ((_%$%e259569259605%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl259568259602%_))))
                                     (let ((_%$%tl259571259610%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e259569259605%_)))
                                           (_%$%hd259570259608%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e259569259605%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl259571259610%_))
                                           (_%__kont264680264681%_
                                            _%$%hd259570259608%_
                                            _%$%hd259567259600%_
                                            _%$%hd259475259968%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259466259576%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g259466259576%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g259466259576%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl259476259970%_))
                                                       (let ((_%$%e259566259597%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl259476259970%_))))
                 (let ((_%$%tl259568259602%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e259566259597%_)))
                       (_%$%hd259567259600%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e259566259597%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl259568259602%_))
                       (let ((_%$%e259569259605%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl259568259602%_))))
                         (let ((_%$%tl259571259610%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e259569259605%_)))
                               (_%$%hd259570259608%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e259569259605%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl259571259610%_))
                               (_%__kont264680264681%_
                                _%$%hd259570259608%_
                                _%$%hd259567259600%_
                                _%$%hd259475259968%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g259466259576%_)))))
                       (let () (declare (not safe)) (_%$%g259466259576%_)))))
               (let () (declare (not safe)) (_%$%g259466259576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259476259970%_))
                                                   (let ((_%$%e259566259597%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259476259970%_))))
                                                     (let ((_%$%tl259568259602%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259566259597%_)))
                                                           (_%$%hd259567259600%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259566259597%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl259568259602%_))
                                                           (let ((_%$%e259569259605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl259568259602%_))))
                     (let ((_%$%tl259571259610%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e259569259605%_)))
                           (_%$%hd259570259608%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e259569259605%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl259571259610%_))
                           (_%__kont264680264681%_
                            _%$%hd259570259608%_
                            _%$%hd259567259600%_
                            _%$%hd259475259968%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g259466259576%_)))))
                   (let () (declare (not safe)) (_%$%g259466259576%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259466259576%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl259476259970%_))
                                           (let ((_%$%e259566259597%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl259476259970%_))))
                                             (let ((_%$%tl259568259602%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e259566259597%_)))
                                                   (_%$%hd259567259600%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e259566259597%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl259568259602%_))
                                                   (let ((_%$%e259569259605%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl259568259602%_))))
                                                     (let ((_%$%tl259571259610%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e259569259605%_)))
                                                           (_%$%hd259570259608%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e259569259605%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl259571259610%_))
                                                           (_%__kont264680264681%_
                                                            _%$%hd259570259608%_
                                                            _%$%hd259567259600%_
                                                            _%$%hd259475259968%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g259466259576%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259466259576%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259466259576%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl259476259970%_))
                                       (let ((_%$%e259566259597%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl259476259970%_))))
                                         (let ((_%$%tl259568259602%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e259566259597%_)))
                                               (_%$%hd259567259600%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e259566259597%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl259568259602%_))
                                               (let ((_%$%e259569259605%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl259568259602%_))))
                                                 (let ((_%$%tl259571259610%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e259569259605%_)))
                                                       (_%$%hd259570259608%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e259569259605%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl259571259610%_))
                                                       (_%__kont264680264681%_
                                                        _%$%hd259570259608%_
                                                        _%$%hd259567259600%_
                                                        _%$%hd259475259968%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g259466259576%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g259466259576%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g259466259576%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl259476259970%_))
                                   (let ((_%$%e259566259597%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl259476259970%_))))
                                     (let ((_%$%tl259568259602%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e259566259597%_)))
                                           (_%$%hd259567259600%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e259566259597%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl259568259602%_))
                                           (let ((_%$%e259569259605%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl259568259602%_))))
                                             (let ((_%$%tl259571259610%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e259569259605%_)))
                                                   (_%$%hd259570259608%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e259569259605%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl259571259610%_))
                                                   (_%__kont264680264681%_
                                                    _%$%hd259570259608%_
                                                    _%$%hd259567259600%_
                                                    _%$%hd259475259968%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g259466259576%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259466259576%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g259466259576%_))))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl259476259970%_))
                           (let ((_%$%e259566259597%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl259476259970%_))))
                             (let ((_%$%tl259568259602%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e259566259597%_)))
                                   (_%$%hd259567259600%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e259566259597%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl259568259602%_))
                                   (let ((_%$%e259569259605%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl259568259602%_))))
                                     (let ((_%$%tl259571259610%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e259569259605%_)))
                                           (_%$%hd259570259608%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e259569259605%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl259571259610%_))
                                           (_%__kont264680264681%_
                                            _%$%hd259570259608%_
                                            _%$%hd259567259600%_
                                            _%$%hd259475259968%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g259466259576%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g259466259576%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g259466259576%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%$%tl259476259970%_))
                   (let ((_%$%e259566259597%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl259476259970%_))))
                     (let ((_%$%tl259568259602%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e259566259597%_)))
                           (_%$%hd259567259600%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e259566259597%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl259568259602%_))
                           (let ((_%$%e259569259605%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl259568259602%_))))
                             (let ((_%$%tl259571259610%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e259569259605%_)))
                                   (_%$%hd259570259608%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e259569259605%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl259571259610%_))
                                   (_%__kont264680264681%_
                                    _%$%hd259570259608%_
                                    _%$%hd259567259600%_
                                    _%$%hd259475259968%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g259466259576%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g259466259576%_)))))
                   (let () (declare (not safe)) (_%$%g259466259576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl259476259970%_))
                                                       (let ((_%$%e259566259597%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl259476259970%_))))
                 (let ((_%$%tl259568259602%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e259566259597%_)))
                       (_%$%hd259567259600%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e259566259597%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl259568259602%_))
                       (let ((_%$%e259569259605%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl259568259602%_))))
                         (let ((_%$%tl259571259610%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e259569259605%_)))
                               (_%$%hd259570259608%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e259569259605%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl259571259610%_))
                               (_%__kont264680264681%_
                                _%$%hd259570259608%_
                                _%$%hd259567259600%_
                                _%$%hd259475259968%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g259466259576%_)))))
                       (let () (declare (not safe)) (_%$%g259466259576%_)))))
               (let () (declare (not safe)) (_%$%g259466259576%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl259476259970%_))
                                               (let ((_%$%e259566259597%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl259476259970%_))))
                                                 (let ((_%$%tl259568259602%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e259566259597%_)))
                                                       (_%$%hd259567259600%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e259566259597%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl259568259602%_))
                                                       (let ((_%$%e259569259605%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl259568259602%_))))
                 (let ((_%$%tl259571259610%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e259569259605%_)))
                       (_%$%hd259570259608%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e259569259605%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl259571259610%_))
                       (_%__kont264680264681%_
                        _%$%hd259570259608%_
                        _%$%hd259567259600%_
                        _%$%hd259475259968%_)
                       (let () (declare (not safe)) (_%$%g259466259576%_)))))
               (let () (declare (not safe)) (_%$%g259466259576%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g259466259576%_))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl259476259970%_))
                                       (let ((_%$%e259566259597%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl259476259970%_))))
                                         (let ((_%$%tl259568259602%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e259566259597%_)))
                                               (_%$%hd259567259600%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e259566259597%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl259568259602%_))
                                               (let ((_%$%e259569259605%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl259568259602%_))))
                                                 (let ((_%$%tl259571259610%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e259569259605%_)))
                                                       (_%$%hd259570259608%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e259569259605%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl259571259610%_))
                                                       (_%__kont264680264681%_
                                                        _%$%hd259570259608%_
                                                        _%$%hd259567259600%_
                                                        _%$%hd259475259968%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g259466259576%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g259466259576%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g259466259576%_))))))
                           (let ()
                             (declare (not safe))
                             (_%$%g259466259576%_)))))
                   (let () (declare (not safe)) (_%$%g259466259576%_)))))))))
    (define gxc#check-contract-violation!
      (lambda (_%stx259328%_ _%expr259329%_)
        (let* ((_%__stx264908264909%_ _%expr259329%_)
               (_%$%g259332259362%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx264908264909%_)))))
          (let ((_%__kont264910264911%_
                 (lambda (_%$%g259334259430%_
                          _%$%g259335259431%_
                          _%$%g259336259432%_)
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"contract violation"
                      _%stx259328%_
                      _%$%g259336259432%_
                      _%$%g259335259431%_
                      _%$%g259334259430%_))))
                (_%__kont264912264913%_ (lambda () _%expr259329%_)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx264908264909%_))
                (let ((_%$%e259337259374%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx264908264909%_))))
                  (let ((_%$%tl259339259379%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e259337259374%_)))
                        (_%$%hd259338259377%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e259337259374%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd259338259377%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq?
                               '%#begin-annotation
                               _%$%hd259338259377%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl259339259379%_))
                                (let ((_%$%e259340259382%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl259339259379%_))))
                                  (let ((_%$%tl259342259387%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e259340259382%_)))
                                        (_%$%hd259341259385%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e259340259382%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd259341259385%_))
                                        (let ((_%$%e259343259390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd259341259385%_))))
                                          (let ((_%$%tl259345259395%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e259343259390%_)))
                                                (_%$%hd259344259393%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e259343259390%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd259344259393%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '@contract-violation
                                                       _%$%hd259344259393%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl259345259395%_))
                                                        (let ((_%$%e259346259398%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl259345259395%_))))
                  (let ((_%$%tl259348259403%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e259346259398%_)))
                        (_%$%hd259347259401%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e259346259398%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl259348259403%_))
                        (let ((_%$%e259349259406%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl259348259403%_))))
                          (let ((_%$%tl259351259411%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e259349259406%_)))
                                (_%$%hd259350259409%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e259349259406%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl259351259411%_))
                                (let ((_%$%e259352259414%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl259351259411%_))))
                                  (let ((_%$%tl259354259419%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e259352259414%_)))
                                        (_%$%hd259353259417%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e259352259414%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl259354259419%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl259342259387%_))
                                            (let ((_%$%e259355259422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl259342259387%_))))
                                              (let ((_%$%tl259357259427%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e259355259422%_)))
                                                    (_%$%hd259356259425%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e259355259422%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl259357259427%_))
                                                    (_%__kont264910264911%_
                                                     _%$%hd259353259417%_
                                                     _%$%hd259350259409%_
                                                     _%$%hd259347259401%_)
                                                    (_%__kont264912264913%_))))
                                            (_%__kont264912264913%_))
                                        (_%__kont264912264913%_))))
                                (_%__kont264912264913%_))))
                        (_%__kont264912264913%_))))
                (_%__kont264912264913%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont264912264913%_))
                                                (_%__kont264912264913%_))))
                                        (_%__kont264912264913%_))))
                                (_%__kont264912264913%_))
                            (_%__kont264912264913%_))
                        (_%__kont264912264913%_))))
                (_%__kont264912264913%_))))))))
