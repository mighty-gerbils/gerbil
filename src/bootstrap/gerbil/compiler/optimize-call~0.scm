(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1781138371)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp258151 (list gxc#::basic-xform::t))
            (__tmp258150 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp258151
         '()
         __tmp258150
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args257248%_
        (apply make-instance gxc#::optimize-call::t _%$args257248%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp258152
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
        (__make-atomic-promise __tmp258152)))
    (define gxc#apply-optimize-call
      (lambda (_%stx257240%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self257243%_
                (let ((__obj258142
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj258142))
               (__tmp258153
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self257243%_ _%stx257240%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp258153
           gxc#current-compile-method
           _%self257243%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp258155 (list gxc#::void::t))
            (__tmp258154 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp258155
         '()
         __tmp258154
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args257237%_
        (apply make-instance gxc#::check-return-type::t _%$args257237%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp258156
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
        (__make-atomic-promise __tmp258156)))
    (define gxc#apply-check-return-type
      (lambda (_%stx257229%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self257232%_
                (let ((__obj258144
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj258144))
               (__tmp258157
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self257232%_ _%stx257229%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp258157
           gxc#current-compile-method
           _%self257232%_))))
    (define gxc#optimize-call%
      (lambda (_%self256377%_ _%stx256378%_)
        (let* ((_%__stx257389257390%_ _%stx256378%_)
               (_%$%g256382256464%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257389257390%_)))))
          (let ((_%__kont257391257392%_
                 (lambda (_%$%g256384257025%_ _%$%g256385257026%_)
                   (let* ((_%rator-id257046%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g256385257026%_)))
                          (_%rator-type257048%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id257046%_))))
                     (if (or (not _%rator-type257048%_)
                             (eq? (##structure-ref
                                   _%rator-type257048%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self256377%_ _%stx256378%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type257048%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp258158
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type257048%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id257046%_
                                  '" => "
                                  _%rator-type257048%_
                                  '" "
                                  __tmp258158))
                               (let* ((_%optimized257063%_
                                       (let ((__method258145
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type257048%_
                                                 'optimize-call))))
                                         (if __method258145
                                             (let ((__tmp258159
                                                    (let ((__tmp258160
                                                           (lambda (_%$%g257055257058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g257056257060%_)
                     (cons _%$%g257055257058%_ _%$%g257056257060%_))))
              (declare (not safe))
              (foldr__0 __tmp258160 '() _%$%g256384257025%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method258145
                                                _%rator-type257048%_
                                                _%self256377%_
                                                _%stx256378%_
                                                __tmp258159))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type257048%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx257337257338%_
                                       _%optimized257063%_)
                                      (_%$%g257066257095%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx257337257338%_)))))
                                 (let ((_%__kont257339257340%_
                                        (lambda (_%$%g257068257161%_
                                                 _%$%g257069257162%_)
                                          (let* ((_%optimized-rator-id257189%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%$%g257069257162%_)))
                                                 (_%rator-type257194%_
                                                  (let ((_%$e257191%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id257189%_))))
                                                    (if _%$e257191%_
                                                        _%$e257191%_
                                                        _%rator-type257048%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type257194%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id257189%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type257194%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type257194%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized257063%_
                                                (let ((__tmp258161
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%$%g257069257162%_ '()))
                           (let ((__tmp258162
                                  (lambda (_%$%g257202257205%_
                                           _%$%g257203257207%_)
                                    (cons _%$%g257202257205%_
                                          _%$%g257203257207%_))))
                             (declare (not safe))
                             (foldr__0
                              __tmp258162
                              '()
                              _%$%g257068257161%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp258161
                                                   _%stx256378%_))))))
                                       (_%__kont257343257344%_
                                        (lambda () _%optimized257063%_)))
                                   (let ((_%__match257386257387%_
                                          (lambda (_%$%e257070257107%_
                                                   _%$%hd257071257110%_
                                                   _%$%tl257072257112%_
                                                   _%$%e257073257115%_
                                                   _%$%hd257074257118%_
                                                   _%$%tl257075257120%_
                                                   _%$%e257076257123%_
                                                   _%$%hd257077257126%_
                                                   _%$%tl257078257128%_
                                                   _%$%e257079257131%_
                                                   _%$%hd257080257134%_
                                                   _%$%tl257081257136%_
                                                   _%__splice257341257342%_
                                                   _%$%target257082257139%_
                                                   _%$%tl257084257141%_)
                                            (letrec ((_%$%loop257085257144%_
                                                      (lambda (_%$%hd257083257147%_
                                                               _%$%arg257089257149%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%hd257083257147%_))
                                                            (let ((_%$%e257086257151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%hd257083257147%_))))
                      (let ((_%$%lp-tl257088257156%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e257086257151%_)))
                            (_%$%lp-hd257087257154%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e257086257151%_))))
                        (_%$%loop257085257144%_
                         _%$%lp-tl257088257156%_
                         (cons _%$%lp-hd257087257154%_
                               _%$%arg257089257149%_))))
                    (let ((_%$%arg257090257159%_
                           (reverse _%$%arg257089257149%_)))
                      (_%__kont257339257340%_
                       _%$%arg257090257159%_
                       _%$%hd257080257134%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop257085257144%_
                                               _%$%target257082257139%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx257337257338%_))
                                         (let ((_%$%e257070257107%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx257337257338%_))))
                                           (let ((_%$%tl257072257112%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e257070257107%_)))
                                                 (_%$%hd257071257110%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e257070257107%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%$%hd257071257110%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%$%hd257071257110%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl257072257112%_))
                                                         (let ((_%$%e257073257115%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl257072257112%_))))
                   (let ((_%$%tl257075257120%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e257073257115%_)))
                         (_%$%hd257074257118%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e257073257115%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%hd257074257118%_))
                         (let ((_%$%e257076257123%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%hd257074257118%_))))
                           (let ((_%$%tl257078257128%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e257076257123%_)))
                                 (_%$%hd257077257126%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e257076257123%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%hd257077257126%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#ref
                                        _%$%hd257077257126%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%tl257078257128%_))
                                         (let ((_%$%e257079257131%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%tl257078257128%_))))
                                           (let ((_%$%tl257081257136%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e257079257131%_)))
                                                 (_%$%hd257080257134%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e257079257131%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%$%tl257081257136%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%$%tl257075257120%_))
                                                     (let ((_%__splice257341257342%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%$%tl257075257120%_
                                                               '0))))
                                                       (let ((_%$%tl257084257141%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice257341257342%_ '1)))
                     (_%$%target257082257139%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice257341257342%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl257084257141%_))
                     (_%__match257386257387%_
                      _%$%e257070257107%_
                      _%$%hd257071257110%_
                      _%$%tl257072257112%_
                      _%$%e257073257115%_
                      _%$%hd257074257118%_
                      _%$%tl257075257120%_
                      _%$%e257076257123%_
                      _%$%hd257077257126%_
                      _%$%tl257078257128%_
                      _%$%e257079257131%_
                      _%$%hd257080257134%_
                      _%$%tl257081257136%_
                      _%__splice257341257342%_
                      _%$%target257082257139%_
                      _%$%tl257084257141%_)
                     (_%__kont257343257344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont257343257344%_))
                                                 (_%__kont257343257344%_))))
                                         (_%__kont257343257344%_))
                                     (_%__kont257343257344%_))
                                 (_%__kont257343257344%_))))
                         (_%__kont257343257344%_))))
                 (_%__kont257343257344%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont257343257344%_))
                                                 (_%__kont257343257344%_))))
                                         (_%__kont257343257344%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type257048%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type257048%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp258163
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%$%g256385257026%_
                                                                '()))
                                                    (map (lambda (_%$%g257213257215%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self256377%_
                                                              _%$%g257213257215%_)))
                                                         (let ((__tmp258164
                                                                (lambda (_%$%g257217257220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g257218257222%_)
                          (cons _%$%g257217257220%_ _%$%g257218257222%_))))
                   (declare (not safe))
                   (foldr__0 __tmp258164 '() _%$%g256384257025%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp258163
                                    _%stx256378%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx256378%_
                                    _%rator-type257048%_))))))))
                (_%__kont257395257396%_
                 (lambda (_%$%g256407256633%_
                          _%$%g256408256634%_
                          _%$%g256409256635%_)
                   (let _%loop256753%_ ((_%rest-arg256755%_
                                         (let ((__tmp258171
                                                (lambda (_%$%g256951256954%_
                                                         _%$%g256952256956%_)
                                                  (cons _%$%g256951256954%_
                                                        _%$%g256952256956%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp258171
                                            '()
                                            _%$%g256409256635%_)))
                                        (_%rest-rand256756%_
                                         (let ((__tmp258172
                                                (lambda (_%$%g256958256961%_
                                                         _%$%g256959256963%_)
                                                  (cons _%$%g256958256961%_
                                                        _%$%g256959256963%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp258172
                                            '()
                                            _%$%g256407256633%_)))
                                        (_%bind256757%_ '())
                                        (_%subst256758%_ '()))
                     (let* ((_%$%rest-arg256759256767%_ _%rest-arg256755%_)
                            (_%$%else256761256780%_
                             (lambda ()
                               (let* ((_%body256775%_
                                       (if (null? _%subst256758%_)
                                           _%$%g256408256634%_
                                           (let ((__tmp258165
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-inline-subst__%
                                                     '#f
                                                     _%subst256758%_
                                                     _%$%g256408256634%_))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp258165
                                              _%stx256378%_))))
                                      (_%expr256777%_
                                       (let ((__tmp258166
                                              (cons '%#let-values
                                                    (cons _%bind256757%_
                                                          (cons _%body256775%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp258166
                                          _%stx256378%_))))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-refine-type-info _%expr256777%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self256377%_
                                    _%expr256777%_)))))
                            (_%$%K256763256940%_
                             (lambda (_%rest-arg256783%_ _%arg-id256784%_)
                               (let* ((_%$%rest-rand256785256793%_
                                       _%rest-rand256756%_)
                                      (_%$%else256787256815%_
                                       (lambda ()
                                         (let ((__tmp258169
                                                (let ((__tmp258170
                                                       (lambda (_%$%g256800256803%_
                                                                _%$%g256801256805%_)
                                                         (cons _%$%g256800256803%_
                                                               _%$%g256801256805%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp258170
                                                   '()
                                                   _%$%g256409256635%_)))
                                               (__tmp258167
                                                (let ((__tmp258168
                                                       (lambda (_%$%g256807256810%_
                                                                _%$%g256808256812%_)
                                                         (cons _%$%g256807256810%_
                                                               _%$%g256808256812%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp258168
                                                   '()
                                                   _%$%g256407256633%_))))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"inline lambda arity mismatch"
                                            _%stx256378%_
                                            __tmp258169
                                            __tmp258167))))
                                      (_%$%K256789256928%_
                                       (lambda (_%rest-rand256818%_
                                                _%rand256819%_)
                                         (let* ((_%__stx257291257292%_
                                                 _%rand256819%_)
                                                (_%$%g256823256843%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx257291257292%_)))))
                                           (let ((_%__kont257293257294%_
                                                  (lambda (_%$%g256825256914%_)
                                                    (_%loop256753%_
                                                     _%rest-arg256783%_
                                                     _%rest-rand256818%_
                                                     _%bind256757%_
                                                     (cons (cons _%arg-id256784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand256819%_)
                   _%subst256758%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont257295257296%_
                                                  (lambda (_%$%g256832256871%_)
                                                    (_%loop256753%_
                                                     _%rest-arg256783%_
                                                     _%rest-rand256818%_
                                                     _%bind256757%_
                                                     (cons (cons _%arg-id256784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand256819%_)
                   _%subst256758%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont257297257298%_
                                                  (lambda ()
                                                    (_%loop256753%_
                                                     _%rest-arg256783%_
                                                     _%rest-rand256818%_
                                                     (cons (cons (cons _%arg-id256784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%rand256819%_ '()))
                   _%bind256757%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%subst256758%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx257291257292%_))
                                                 (let ((_%$%e256826256898%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx257291257292%_))))
                                                   (let ((_%$%tl256828256903%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e256826256898%_)))
                                                         (_%$%hd256827256901%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e256826256898%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%$%hd256827256901%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#quote _%$%hd256827256901%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl256828256903%_))
                         (let ((_%$%e256829256906%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl256828256903%_))))
                           (let ((_%$%tl256831256911%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e256829256906%_)))
                                 (_%$%hd256830256909%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e256829256906%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl256831256911%_))
                                 (_%__kont257293257294%_ _%$%hd256830256909%_)
                                 (_%__kont257297257298%_))))
                         (_%__kont257297257298%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#ref _%$%hd256827256901%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl256828256903%_))
                             (let ((_%$%e256836256863%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl256828256903%_))))
                               (let ((_%$%tl256838256868%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e256836256863%_)))
                                     (_%$%hd256837256866%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e256836256863%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl256838256868%_))
                                     (_%__kont257295257296%_
                                      _%$%hd256837256866%_)
                                     (_%__kont257297257298%_))))
                             (_%__kont257297257298%_))
                         (_%__kont257297257298%_)))
                 (_%__kont257297257298%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont257297257298%_)))))))
                                 (if (pair? _%$%rest-rand256785256793%_)
                                     (let ((_%$%hd256790256931%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%rest-rand256785256793%_)))
                                           (_%$%tl256791256933%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%rest-rand256785256793%_))))
                                       (let* ((_%rand256936%_
                                               _%$%hd256790256931%_)
                                              (_%rest-rand256938%_
                                               _%$%tl256791256933%_))
                                         (_%$%K256789256928%_
                                          _%rest-rand256938%_
                                          _%rand256936%_)))
                                     (_%$%else256787256815%_))))))
                       (if (pair? _%$%rest-arg256759256767%_)
                           (let ((_%$%hd256764256943%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest-arg256759256767%_)))
                                 (_%$%tl256765256945%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest-arg256759256767%_))))
                             (let* ((_%arg-id256948%_ _%$%hd256764256943%_)
                                    (_%rest-arg256950%_ _%$%tl256765256945%_))
                               (_%$%K256763256940%_
                                _%rest-arg256950%_
                                _%arg-id256948%_)))
                           (_%$%else256761256780%_))))))
                (_%__kont257401257402%_
                 (lambda (_%$%g256443256507%_ _%$%g256444256508%_)
                   (let ((_%rator-type256525%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%$%g256444256508%_))))
                     (if (and _%rator-type256525%_
                              (eq? (##structure-ref
                                    _%rator-type256525%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type256525%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type256525%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type256525%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp258173
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self256377%_
                                               _%$%g256444256508%_))
                                            (map (lambda (_%$%g256527256529%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self256377%_
                                                      _%$%g256527256529%_)))
                                                 (let ((__tmp258174
                                                        (lambda (_%$%g256531256534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g256532256536%_)
                  (cons _%$%g256531256534%_ _%$%g256532256536%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp258174
                                                    '()
                                                    _%$%g256443256507%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp258173 _%stx256378%_))
                         (if (or (not _%rator-type256525%_)
                                 (let ((__tmp258175
                                        (##structure-ref
                                         _%rator-type256525%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp258175 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self256377%_ _%stx256378%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx256378%_
                                _%rator-type256525%_))))))))
            (let* ((_%__match257498257499%_
                    (lambda (_%$%e256445256469%_
                             _%$%hd256446256472%_
                             _%$%tl256447256474%_
                             _%$%e256448256477%_
                             _%$%hd256449256480%_
                             _%$%tl256450256482%_
                             _%__splice257403257404%_
                             _%$%target256451256485%_
                             _%$%tl256453256487%_)
                      (letrec ((_%$%loop256454256490%_
                                (lambda (_%$%hd256452256493%_
                                         _%$%rand256458256495%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd256452256493%_))
                                      (let ((_%$%e256455256497%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd256452256493%_))))
                                        (let ((_%$%lp-tl256457256502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e256455256497%_)))
                                              (_%$%lp-hd256456256500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e256455256497%_))))
                                          (_%$%loop256454256490%_
                                           _%$%lp-tl256457256502%_
                                           (cons _%$%lp-hd256456256500%_
                                                 _%$%rand256458256495%_))))
                                      (let ((_%$%rand256459256505%_
                                             (reverse _%$%rand256458256495%_)))
                                        (_%__kont257401257402%_
                                         _%$%rand256459256505%_
                                         _%$%hd256449256480%_))))))
                        (_%$%loop256454256490%_
                         _%$%target256451256485%_
                         '()))))
                   (_%__match257490257491%_
                    (lambda (_%$%e256445256469%_
                             _%$%hd256446256472%_
                             _%$%tl256447256474%_
                             _%$%e256448256477%_
                             _%$%hd256449256480%_
                             _%$%tl256450256482%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl256450256482%_))
                          (let ((_%__splice257403257404%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl256450256482%_
                                    '0))))
                            (let ((_%$%tl256453256487%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice257403257404%_
                                      '1)))
                                  (_%$%target256451256485%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice257403257404%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl256453256487%_))
                                  (_%__match257498257499%_
                                   _%$%e256445256469%_
                                   _%$%hd256446256472%_
                                   _%$%tl256447256474%_
                                   _%$%e256448256477%_
                                   _%$%hd256449256480%_
                                   _%$%tl256450256482%_
                                   _%__splice257403257404%_
                                   _%$%target256451256485%_
                                   _%$%tl256453256487%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g256382256464%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g256382256464%_)))))
                   (_%__match257478257479%_
                    (lambda (_%$%e256410256549%_
                             _%$%hd256411256552%_
                             _%$%tl256412256554%_
                             _%$%e256413256557%_
                             _%$%hd256414256560%_
                             _%$%tl256415256562%_
                             _%$%e256416256565%_
                             _%$%hd256417256568%_
                             _%$%tl256418256570%_
                             _%$%e256419256573%_
                             _%$%hd256420256576%_
                             _%$%tl256421256578%_
                             _%__splice257397257398%_
                             _%$%target256422256581%_
                             _%$%tl256424256583%_)
                      (letrec ((_%$%loop256425256586%_
                                (lambda (_%$%hd256423256589%_
                                         _%$%arg256429256591%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd256423256589%_))
                                      (let ((_%$%e256426256593%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd256423256589%_))))
                                        (let ((_%$%lp-tl256428256598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e256426256593%_)))
                                              (_%$%lp-hd256427256596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e256426256593%_))))
                                          (_%$%loop256425256586%_
                                           _%$%lp-tl256428256598%_
                                           (cons _%$%lp-hd256427256596%_
                                                 _%$%arg256429256591%_))))
                                      (let ((_%$%arg256430256601%_
                                             (reverse _%$%arg256429256591%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl256421256578%_))
                                            (let ((_%$%e256431256603%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl256421256578%_))))
                                              (let ((_%$%tl256433256608%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e256431256603%_)))
                                                    (_%$%hd256432256606%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e256431256603%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl256433256608%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl256415256562%_))
                                                        (let ((_%__splice257399257400%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl256415256562%_
                          '0))))
                  (let ((_%$%tl256436256613%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice257399257400%_ '1)))
                        (_%$%target256434256611%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice257399257400%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl256436256613%_))
                        (letrec ((_%$%loop256437256616%_
                                  (lambda (_%$%hd256435256619%_
                                           _%$%rand256441256621%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd256435256619%_))
                                        (let ((_%$%e256438256623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd256435256619%_))))
                                          (let ((_%$%lp-tl256440256628%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e256438256623%_)))
                                                (_%$%lp-hd256439256626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e256438256623%_))))
                                            (_%$%loop256437256616%_
                                             _%$%lp-tl256440256628%_
                                             (cons _%$%lp-hd256439256626%_
                                                   _%$%rand256441256621%_))))
                                        (let ((_%$%rand256442256631%_
                                               (reverse _%$%rand256441256621%_)))
                                          (let ((_%$%g256407256633%_
                                                 _%$%rand256442256631%_)
                                                (_%$%g256408256634%_
                                                 _%$%hd256432256606%_)
                                                (_%$%g256409256635%_
                                                 _%$%arg256430256601%_))
                                            (if (and (= (length (let ((__tmp258176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%$%g256661256664%_
                                        _%$%g256662256666%_)
                                 (cons _%$%g256661256664%_
                                       _%$%g256662256666%_))))
                          (declare (not safe))
                          (foldr__0 __tmp258176 '() _%$%g256409256635%_)))
                (length (let ((__tmp258177
                               (lambda (_%$%g256668256671%_
                                        _%$%g256669256673%_)
                                 (cons _%$%g256668256671%_
                                       _%$%g256669256673%_))))
                          (declare (not safe))
                          (foldr__0 __tmp258177 '() _%$%g256407256633%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp258180
                                                            (lambda (_%id256676%_)
                                                              (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gxc#mutable-binding? _%id256676%_)))))
                   (__tmp258178
                    (let ((__tmp258179
                           (lambda (_%$%g256677256680%_ _%$%g256678256682%_)
                             (cons _%$%g256677256680%_ _%$%g256678256682%_))))
                      (declare (not safe))
                      (foldr__0 __tmp258179 '() _%$%g256409256635%_))))
               (declare (not safe))
               (andmap__0 __tmp258180 __tmp258178))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp258183
                                                            (lambda (_%rand256685%_)
                                                              (let* ((_%__stx257265257266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rand256685%_)
                             (_%$%g256688256701%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx257265257266%_)))))
                        (let ((_%__kont257267257268%_
                               (lambda (_%$%g256690256729%_)
                                 (not (let ()
                                        (declare (not safe))
                                        (gxc#mutable-binding?
                                         _%$%g256690256729%_)))))
                              (_%__kont257269257270%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx257265257266%_))
                              (let ((_%$%e256691256713%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx257265257266%_))))
                                (let ((_%$%tl256693256718%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e256691256713%_)))
                                      (_%$%hd256692256716%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e256691256713%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd256692256716%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd256692256716%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl256693256718%_))
                                              (let ((_%$%e256694256721%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl256693256718%_))))
                                                (let ((_%$%tl256696256726%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e256694256721%_)))
                                                      (_%$%hd256695256724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e256694256721%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl256696256726%_))
                                                      (_%__kont257267257268%_
                                                       _%$%hd256695256724%_)
                                                      (_%__kont257269257270%_))))
                                              (_%__kont257269257270%_))
                                          (_%__kont257269257270%_))
                                      (_%__kont257269257270%_))))
                              (_%__kont257269257270%_))))))
                   (__tmp258181
                    (let ((__tmp258182
                           (lambda (_%$%g256745256748%_ _%$%g256746256750%_)
                             (cons _%$%g256745256748%_ _%$%g256746256750%_))))
                      (declare (not safe))
                      (foldr__0 __tmp258182 '() _%$%g256407256633%_))))
               (declare (not safe))
               (andmap__0 __tmp258183 __tmp258181)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont257395257396%_
                                                 _%$%g256407256633%_
                                                 _%$%g256408256634%_
                                                 _%$%g256409256635%_)
                                                (_%__match257498257499%_
                                                 _%$%e256410256549%_
                                                 _%$%hd256411256552%_
                                                 _%$%tl256412256554%_
                                                 _%$%e256413256557%_
                                                 _%$%hd256414256560%_
                                                 _%$%tl256415256562%_
                                                 _%__splice257399257400%_
                                                 _%$%target256434256611%_
                                                 _%$%tl256436256613%_))))))))
                          (_%$%loop256437256616%_
                           _%$%target256434256611%_
                           '()))
                        (let () (declare (not safe)) (_%$%g256382256464%_)))))
                (let () (declare (not safe)) (_%$%g256382256464%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match257490257491%_
                                                     _%$%e256410256549%_
                                                     _%$%hd256411256552%_
                                                     _%$%tl256412256554%_
                                                     _%$%e256413256557%_
                                                     _%$%hd256414256560%_
                                                     _%$%tl256415256562%_))))
                                            (_%__match257490257491%_
                                             _%$%e256410256549%_
                                             _%$%hd256411256552%_
                                             _%$%tl256412256554%_
                                             _%$%e256413256557%_
                                             _%$%hd256414256560%_
                                             _%$%tl256415256562%_)))))))
                        (_%$%loop256425256586%_
                         _%$%target256422256581%_
                         '()))))
                   (_%__match257442257443%_
                    (lambda (_%$%e256386256971%_
                             _%$%hd256387256974%_
                             _%$%tl256388256976%_
                             _%$%e256389256979%_
                             _%$%hd256390256982%_
                             _%$%tl256391256984%_
                             _%$%e256392256987%_
                             _%$%hd256393256990%_
                             _%$%tl256394256992%_
                             _%$%e256395256995%_
                             _%$%hd256396256998%_
                             _%$%tl256397257000%_
                             _%__splice257393257394%_
                             _%$%target256398257003%_
                             _%$%tl256400257005%_)
                      (letrec ((_%$%loop256401257008%_
                                (lambda (_%$%hd256399257011%_
                                         _%$%rand256405257013%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd256399257011%_))
                                      (let ((_%$%e256402257015%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd256399257011%_))))
                                        (let ((_%$%lp-tl256404257020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e256402257015%_)))
                                              (_%$%lp-hd256403257018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e256402257015%_))))
                                          (_%$%loop256401257008%_
                                           _%$%lp-tl256404257020%_
                                           (cons _%$%lp-hd256403257018%_
                                                 _%$%rand256405257013%_))))
                                      (let ((_%$%rand256406257023%_
                                             (reverse _%$%rand256405257013%_)))
                                        (_%__kont257391257392%_
                                         _%$%rand256406257023%_
                                         _%$%hd256396256998%_))))))
                        (_%$%loop256401257008%_
                         _%$%target256398257003%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx257389257390%_))
                  (let ((_%$%e256386256971%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx257389257390%_))))
                    (let ((_%$%tl256388256976%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e256386256971%_)))
                          (_%$%hd256387256974%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e256386256971%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl256388256976%_))
                          (let ((_%$%e256389256979%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl256388256976%_))))
                            (let ((_%$%tl256391256984%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e256389256979%_)))
                                  (_%$%hd256390256982%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e256389256979%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd256390256982%_))
                                  (let ((_%$%e256392256987%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd256390256982%_))))
                                    (let ((_%$%tl256394256992%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e256392256987%_)))
                                          (_%$%hd256393256990%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e256392256987%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd256393256990%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd256393256990%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl256394256992%_))
                                                  (let ((_%$%e256395256995%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl256394256992%_))))
                                                    (let ((_%$%tl256397257000%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e256395256995%_)))
                                                          (_%$%hd256396256998%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e256395256995%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl256397257000%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl256391256984%_))
                      (let ((_%__splice257393257394%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl256391256984%_
                                '0))))
                        (let ((_%$%tl256400257005%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice257393257394%_ '1)))
                              (_%$%target256398257003%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice257393257394%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl256400257005%_))
                              (_%__match257442257443%_
                               _%$%e256386256971%_
                               _%$%hd256387256974%_
                               _%$%tl256388256976%_
                               _%$%e256389256979%_
                               _%$%hd256390256982%_
                               _%$%tl256391256984%_
                               _%$%e256392256987%_
                               _%$%hd256393256990%_
                               _%$%tl256394256992%_
                               _%$%e256395256995%_
                               _%$%hd256396256998%_
                               _%$%tl256397257000%_
                               _%__splice257393257394%_
                               _%$%target256398257003%_
                               _%$%tl256400257005%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g256382256464%_)))))
                      (let () (declare (not safe)) (_%$%g256382256464%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl256391256984%_))
                      (let ((_%__splice257403257404%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl256391256984%_
                                '0))))
                        (let ((_%$%tl256453256487%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice257403257404%_ '1)))
                              (_%$%target256451256485%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice257403257404%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl256453256487%_))
                              (_%__match257498257499%_
                               _%$%e256386256971%_
                               _%$%hd256387256974%_
                               _%$%tl256388256976%_
                               _%$%e256389256979%_
                               _%$%hd256390256982%_
                               _%$%tl256391256984%_
                               _%__splice257403257404%_
                               _%$%target256451256485%_
                               _%$%tl256453256487%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g256382256464%_)))))
                      (let () (declare (not safe)) (_%$%g256382256464%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl256391256984%_))
                                                      (let ((_%__splice257403257404%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl256391256984%_
                        '0))))
                (let ((_%$%tl256453256487%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice257403257404%_ '1)))
                      (_%$%target256451256485%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice257403257404%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl256453256487%_))
                      (_%__match257498257499%_
                       _%$%e256386256971%_
                       _%$%hd256387256974%_
                       _%$%tl256388256976%_
                       _%$%e256389256979%_
                       _%$%hd256390256982%_
                       _%$%tl256391256984%_
                       _%__splice257403257404%_
                       _%$%target256451256485%_
                       _%$%tl256453256487%_)
                      (let () (declare (not safe)) (_%$%g256382256464%_)))))
              (let () (declare (not safe)) (_%$%g256382256464%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#lambda
                                                     _%$%hd256393256990%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl256394256992%_))
                                                      (let ((_%$%e256419256573%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl256394256992%_))))
                (let ((_%$%tl256421256578%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e256419256573%_)))
                      (_%$%hd256420256576%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e256419256573%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%hd256420256576%_))
                      (let ((_%__splice257397257398%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%hd256420256576%_
                                '0))))
                        (let ((_%$%tl256424256583%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice257397257398%_ '1)))
                              (_%$%target256422256581%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice257397257398%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl256424256583%_))
                              (_%__match257478257479%_
                               _%$%e256386256971%_
                               _%$%hd256387256974%_
                               _%$%tl256388256976%_
                               _%$%e256389256979%_
                               _%$%hd256390256982%_
                               _%$%tl256391256984%_
                               _%$%e256392256987%_
                               _%$%hd256393256990%_
                               _%$%tl256394256992%_
                               _%$%e256419256573%_
                               _%$%hd256420256576%_
                               _%$%tl256421256578%_
                               _%__splice257397257398%_
                               _%$%target256422256581%_
                               _%$%tl256424256583%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _%$%tl256391256984%_))
                                  (let ((_%__splice257403257404%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice->vector
                                            _%$%tl256391256984%_
                                            '0))))
                                    (let ((_%$%tl256453256487%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice257403257404%_
                                              '1)))
                                          (_%$%target256451256485%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice257403257404%_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl256453256487%_))
                                          (_%__match257498257499%_
                                           _%$%e256386256971%_
                                           _%$%hd256387256974%_
                                           _%$%tl256388256976%_
                                           _%$%e256389256979%_
                                           _%$%hd256390256982%_
                                           _%$%tl256391256984%_
                                           _%__splice257403257404%_
                                           _%$%target256451256485%_
                                           _%$%tl256453256487%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g256382256464%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g256382256464%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl256391256984%_))
                          (let ((_%__splice257403257404%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl256391256984%_
                                    '0))))
                            (let ((_%$%tl256453256487%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice257403257404%_
                                      '1)))
                                  (_%$%target256451256485%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice257403257404%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl256453256487%_))
                                  (_%__match257498257499%_
                                   _%$%e256386256971%_
                                   _%$%hd256387256974%_
                                   _%$%tl256388256976%_
                                   _%$%e256389256979%_
                                   _%$%hd256390256982%_
                                   _%$%tl256391256984%_
                                   _%__splice257403257404%_
                                   _%$%target256451256485%_
                                   _%$%tl256453256487%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g256382256464%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g256382256464%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl256391256984%_))
                  (let ((_%__splice257403257404%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl256391256984%_
                            '0))))
                    (let ((_%$%tl256453256487%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice257403257404%_ '1)))
                          (_%$%target256451256485%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice257403257404%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl256453256487%_))
                          (_%__match257498257499%_
                           _%$%e256386256971%_
                           _%$%hd256387256974%_
                           _%$%tl256388256976%_
                           _%$%e256389256979%_
                           _%$%hd256390256982%_
                           _%$%tl256391256984%_
                           _%__splice257403257404%_
                           _%$%target256451256485%_
                           _%$%tl256453256487%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g256382256464%_)))))
                  (let () (declare (not safe)) (_%$%g256382256464%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl256391256984%_))
                                                      (let ((_%__splice257403257404%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl256391256984%_
                        '0))))
                (let ((_%$%tl256453256487%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice257403257404%_ '1)))
                      (_%$%target256451256485%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice257403257404%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl256453256487%_))
                      (_%__match257498257499%_
                       _%$%e256386256971%_
                       _%$%hd256387256974%_
                       _%$%tl256388256976%_
                       _%$%e256389256979%_
                       _%$%hd256390256982%_
                       _%$%tl256391256984%_
                       _%__splice257403257404%_
                       _%$%target256451256485%_
                       _%$%tl256453256487%_)
                      (let () (declare (not safe)) (_%$%g256382256464%_)))))
              (let () (declare (not safe)) (_%$%g256382256464%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl256391256984%_))
                                              (let ((_%__splice257403257404%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl256391256984%_
                                                        '0))))
                                                (let ((_%$%tl256453256487%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice257403257404%_
                                                          '1)))
                                                      (_%$%target256451256485%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice257403257404%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl256453256487%_))
                                                      (_%__match257498257499%_
                                                       _%$%e256386256971%_
                                                       _%$%hd256387256974%_
                                                       _%$%tl256388256976%_
                                                       _%$%e256389256979%_
                                                       _%$%hd256390256982%_
                                                       _%$%tl256391256984%_
                                                       _%__splice257403257404%_
                                                       _%$%target256451256485%_
                                                       _%$%tl256453256487%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g256382256464%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g256382256464%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl256391256984%_))
                                      (let ((_%__splice257403257404%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl256391256984%_
                                                '0))))
                                        (let ((_%$%tl256453256487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice257403257404%_
                                                  '1)))
                                              (_%$%target256451256485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice257403257404%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl256453256487%_))
                                              (_%__match257498257499%_
                                               _%$%e256386256971%_
                                               _%$%hd256387256974%_
                                               _%$%tl256388256976%_
                                               _%$%e256389256979%_
                                               _%$%hd256390256982%_
                                               _%$%tl256391256984%_
                                               _%__splice257403257404%_
                                               _%$%target256451256485%_
                                               _%$%tl256453256487%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g256382256464%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g256382256464%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g256382256464%_)))))
                  (let () (declare (not safe)) (_%$%g256382256464%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self256339%_ _%ctx256340%_ _%stx256341%_ _%args256342%_)
        (let ((_%self256345%_ _%self256339%_))
          (if (let ((__method258146
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self256345%_ 'check-arguments))))
                (if __method258146
                    (let ()
                      (declare (not safe))
                      (__method258146
                       _%self256345%_
                       _%ctx256340%_
                       _%stx256341%_
                       _%args256342%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self256345%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature256355%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256345%_ '2 '#f '#f)))
                     (_%signature256357%_ _%signature256355%_)
                     (_%$e256367%_
                      (if _%signature256357%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature256357%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e256367%_
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%$e256367%_))
                        (let ((__tmp258184
                               (cons '%#call
                                     (cons (cons '%#ref
                                                 (cons _%$e256367%_ '()))
                                           (map (lambda (_%$%g256371256373%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx256340%_
                                                     _%$%g256371256373%_)))
                                                _%args256342%_)))))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp258184
                           _%stx256341%_
                           _%ctx256340%_))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx256340%_ _%stx256341%_)))
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx256340%_ _%stx256341%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx256340%_ _%stx256341%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass257250 __method-table257251)
        (let ((__check-arguments257252
               (let ((__tmp258185
                      (lambda ()
                        (let ((__method257253
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table257251
                                  'check-arguments
                                  '#f))))
                          (if __method257253
                              __method257253
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp258185))))
          (lambda (_%self256339%_ _%ctx256340%_ _%stx256341%_ _%args256342%_)
            (let ((_%self256345%_ _%self256339%_))
              (if ((force __check-arguments257252)
                   _%self256345%_
                   _%ctx256340%_
                   _%stx256341%_
                   _%args256342%_)
                  (let* ((_%signature256355%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self256345%_
                             '2
                             '#f
                             '#f)))
                         (_%signature256357%_ _%signature256355%_)
                         (_%$e256367%_
                          (if _%signature256357%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature256357%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e256367%_
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%$e256367%_))
                            (let ((__tmp258186
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%$e256367%_ '()))
                                               (map (lambda (_%$%g256371256373%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%ctx256340%_
                                                         _%$%g256371256373%_)))
                                                    _%args256342%_)))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp258186
                               _%stx256341%_
                               _%ctx256340%_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _%ctx256340%_ _%stx256341%_)))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx256340%_ _%stx256341%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx256340%_ _%stx256341%_))))))))
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
      (lambda (_%self256092%_ _%ctx256093%_ _%stx256094%_ _%args256095%_)
        (let* ((_%self256098%_ _%self256092%_)
               (_%$%signature256107256109%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256098%_ '2 '#f '#f))))
          (if _%$%signature256107256109%_
              (let* ((_%signature256111%_ _%$%signature256107256109%_)
                     (_%$%argument-types256112256114%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature256111%_
                         '3
                         '#f
                         '#f))))
                (if _%$%argument-types256112256114%_
                    (let* ((_%argument-types256116%_
                            _%$%argument-types256112256114%_)
                           (_%argument-types256121%_
                            (let ((__tmp258187
                                   (lambda (_%t256119%_)
                                     (if _%t256119%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx256094%_
                                            _%t256119%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp258187
                               _%argument-types256116%_))))
                      (let _%loop256123%_ ((_%rest-args256125%_ _%args256095%_)
                                           (_%rest-types256126%_
                                            _%argument-types256121%_)
                                           (_%result256127%_ '#t))
                        (let* ((_%$%rest-args256128256136%_
                                _%rest-args256125%_)
                               (_%$%else256130256144%_
                                (lambda () _%result256127%_))
                               (_%$%K256132256205%_
                                (lambda (_%rest-args256147%_ _%arg256148%_)
                                  (let* ((_%$%rest-types256149256160%_
                                          _%rest-types256126%_)
                                         (_%$%E256153256164%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-types256149256160%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%$%K256156256193%_
                                           (lambda (_%rest-types256190%_
                                                    _%type256191%_)
                                             (_%loop256123%_
                                              _%rest-args256147%_
                                              _%rest-types256190%_
                                              (if (gxc#check-expression-type!
                                                   _%stx256094%_
                                                   _%arg256148%_
                                                   _%type256191%_)
                                                  _%result256127%_
                                                  '#f))))
                                          (_%$%K256155256184%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx256094%_
                                                _%argument-types256121%_))))
                                          (_%$%K256154256174%_
                                           (lambda (_%tail-type256168%_)
                                             (if (let ((__tmp258188
                                                        (lambda (_%$%g256169256171%_)
                                                          (gxc#check-expression-type!
                                                           _%stx256094%_
                                                           _%$%g256169256171%_
                                                           _%tail-type256168%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp258188
                                                    _%rest-args256147%_))
                                                 _%result256127%_
                                                 '#f))))
                                      (let ((_%$%try-match256151256187%_
                                             (lambda ()
                                               (if (null? _%$%rest-types256149256160%_)
                                                   (_%$%K256155256184%_)
                                                   (let ((_%tail-type256177%_
                                                          _%$%rest-types256149256160%_))
                                                     (_%$%K256154256174%_
                                                      _%tail-type256177%_))))))
                                        (if (pair? _%$%rest-types256149256160%_)
                                            (let ((_%$%tl256158256198%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%rest-types256149256160%_)))
                                                  (_%$%hd256157256196%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%rest-types256149256160%_))))
                                              (let ((_%type256201%_
                                                     _%$%hd256157256196%_)
                                                    (_%rest-types256203%_
                                                     _%$%tl256158256198%_))
                                                (_%$%K256156256193%_
                                                 _%rest-types256203%_
                                                 _%type256201%_)))
                                            (_%$%try-match256151256187%_))))))))
                          (if (pair? _%$%rest-args256128256136%_)
                              (let ((_%$%hd256133256208%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest-args256128256136%_)))
                                    (_%$%tl256134256210%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest-args256128256136%_))))
                                (let* ((_%arg256213%_ _%$%hd256133256208%_)
                                       (_%rest-args256215%_
                                        _%$%tl256134256210%_))
                                  (_%$%K256132256205%_
                                   _%rest-args256215%_
                                   _%arg256213%_)))
                              (_%$%else256130256144%_)))))
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
      (lambda (_%self255895%_ _%ctx255896%_ _%stx255897%_ _%args255898%_)
        (let* ((_%self255901%_ _%self255895%_)
               (_%$%g255911255921%_
                (lambda (_%$%g255912255918%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g255912255918%_))))
               (_%$%g255910255967%_
                (lambda (_%$%g255912255924%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g255912255924%_))
                      (let ((_%$%e255914255926%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g255912255924%_))))
                        (let ((_%$%hd255915255929%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e255914255926%_)))
                              (_%$%tl255916255931%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e255914255926%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl255916255931%_))
                              (let* ((_%klass255946%_
                                      (let ((__tmp258189
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self255901%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx255897%_
                                         __tmp258189)))
                                     (_%object255948%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx255896%_
                                         _%$%hd255915255929%_)))
                                     (_%instance?255953%_
                                      (let ((_%$e255950%_
                                             (gxc#expression-type?
                                              _%object255948%_
                                              _%klass255946%_)))
                                        (if _%$e255950%_
                                            _%$e255950%_
                                            (gxc#expression-type?
                                             _%$%hd255915255929%_
                                             _%klass255946%_))))
                                     (_%incompatible?255958%_
                                      (let ((_%$e255955%_
                                             (gxc#incompatible-type?
                                              _%object255948%_
                                              _%klass255946%_)))
                                        (if _%$e255955%_
                                            _%$e255955%_
                                            (gxc#incompatible-type?
                                             _%$%hd255915255929%_
                                             _%klass255946%_)))))
                                (if _%instance?255953%_
                                    (let ((__tmp258190
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object255948%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd255915255929%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object255948%_
                                                           (cons '#t '()))))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp258190
                                       _%stx255897%_))
                                    (if _%incompatible?255958%_
                                        (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#xform-call%
                                           _%ctx255896%_
                                           _%stx255897%_)))))
                              (_%$%g255911255921%_ _%$%g255912255924%_))))
                      (_%$%g255911255921%_ _%$%g255912255924%_)))))
          (_%$%g255910255967%_ _%args255898%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self255684%_ _%ctx255685%_ _%stx255686%_ _%args255687%_)
        (let* ((_%self255690%_ _%self255684%_)
               (_%$%g255700255710%_
                (lambda (_%$%g255701255707%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g255701255707%_))))
               (_%$%g255699255770%_
                (lambda (_%$%g255701255713%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g255701255713%_))
                      (let ((_%$%e255703255715%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g255701255713%_))))
                        (let ((_%$%hd255704255718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e255703255715%_)))
                              (_%$%tl255705255720%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e255703255715%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl255705255720%_))
                              (let* ((_%klass255735%_
                                      (let ((__tmp258191
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self255690%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx255686%_
                                         __tmp258191)))
                                     (_%object255737%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx255685%_
                                         _%$%hd255704255718%_)))
                                     (_%instance?255742%_
                                      (let ((_%$e255739%_
                                             (gxc#expression-type?
                                              _%object255737%_
                                              _%klass255735%_)))
                                        (if _%$e255739%_
                                            _%$e255739%_
                                            (gxc#expression-type?
                                             _%$%hd255704255718%_
                                             _%klass255735%_))))
                                     (_%incompatible?255747%_
                                      (let ((_%$e255744%_
                                             (gxc#incompatible-type?
                                              _%object255737%_
                                              _%klass255735%_)))
                                        (if _%$e255744%_
                                            _%$e255744%_
                                            (gxc#incompatible-type?
                                             _%$%hd255704255718%_
                                             _%klass255735%_))))
                                     (_%klass255750%_ _%klass255735%_))
                                (if _%instance?255742%_
                                    (let ((__tmp258192
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object255737%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd255704255718%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object255737%_
                                                           (cons '#t '()))))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp258192
                                       _%stx255686%_))
                                    (if _%incompatible?255747%_
                                        (cons '%#quote (cons '#f '()))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass255750%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp258193
                                                   (cons '%#struct-direct-instance?
                                                         (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass255750%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%object255737%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp258193
                                               _%stx255686%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass255750%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp258194
                                                       (cons '%#struct-instance?
                                                             (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass255750%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%object255737%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp258194
                                                   _%stx255686%_))
                                                (let ((__tmp258195
                                                       (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons 'class-instance? '()))
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self255690%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons _%object255737%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp258195
                                                   _%stx255686%_)))))))
                              (_%$%g255700255710%_ _%$%g255701255713%_))))
                      (_%$%g255700255710%_ _%$%g255701255713%_)))))
          (_%$%g255699255770%_ _%args255687%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx255352%_)
        (let* ((_%__stx257508257509%_ _%stx255352%_)
               (_%$%g255357255398%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257508257509%_)))))
          (let ((_%__kont257510257511%_ (lambda () '#t))
                (_%__kont257512257513%_ (lambda () '#t))
                (_%__kont257514257515%_
                 (lambda (_%$%g255371255464%_ _%$%g255372255465%_)
                   (let ((_%$%rator-type255486255488%_
                          (let ((__tmp258196
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol
                                    _%$%g255372255465%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp258196))))
                     (if _%$%rator-type255486255488%_
                         (let* ((_%rator-type255490%_
                                 _%$%rator-type255486255488%_)
                                (_%$%rator-signature255491255493%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type255490%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type255490%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%$%rator-signature255491255493%_
                               (let* ((_%rator-signature255495%_
                                       _%$%rator-signature255491255493%_)
                                      (_%$%rator-effect255496255498%_
                                       (if _%rator-signature255495%_
                                           (##direct-structure-ref
                                            _%rator-signature255495%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%$%rator-effect255496255498%_
                                     (let ((_%rator-effect255500%_
                                            _%$%rator-effect255496255498%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect255500%_)
                                               (equal? '(alloc)
                                                       _%rator-effect255500%_))
                                           (let ((__tmp258197
                                                  (let ((__tmp258198
                                                         (lambda (_%$%g255505255508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g255506255510%_)
                   (cons _%$%g255505255508%_ _%$%g255506255510%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp258198
                                                     '()
                                                     _%$%g255371255464%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp258197))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont257518257519%_ (lambda () '#f)))
            (let ((_%__match257597257598%_
                   (lambda (_%$%e255373255410%_
                            _%$%hd255374255413%_
                            _%$%tl255375255415%_
                            _%$%e255376255418%_
                            _%$%hd255377255421%_
                            _%$%tl255378255423%_
                            _%$%e255379255426%_
                            _%$%hd255380255429%_
                            _%$%tl255381255431%_
                            _%$%e255382255434%_
                            _%$%hd255383255437%_
                            _%$%tl255384255439%_
                            _%__splice257516257517%_
                            _%$%target255385255442%_
                            _%$%tl255387255444%_)
                     (letrec ((_%$%loop255388255447%_
                               (lambda (_%$%hd255386255450%_
                                        _%$%rand255392255452%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd255386255450%_))
                                     (let ((_%$%e255389255454%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd255386255450%_))))
                                       (let ((_%$%lp-tl255391255459%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e255389255454%_)))
                                             (_%$%lp-hd255390255457%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e255389255454%_))))
                                         (_%$%loop255388255447%_
                                          _%$%lp-tl255391255459%_
                                          (cons _%$%lp-hd255390255457%_
                                                _%$%rand255392255452%_))))
                                     (let ((_%$%rand255393255462%_
                                            (reverse _%$%rand255392255452%_)))
                                       (_%__kont257514257515%_
                                        _%$%rand255393255462%_
                                        _%$%hd255383255437%_))))))
                       (_%$%loop255388255447%_
                        _%$%target255385255442%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx257508257509%_))
                  (let ((_%$%e255359255541%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx257508257509%_))))
                    (let ((_%$%tl255361255546%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e255359255541%_)))
                          (_%$%hd255360255544%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e255359255541%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd255360255544%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd255360255544%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl255361255546%_))
                                  (let ((_%$%e255362255549%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl255361255546%_))))
                                    (let ((_%$%tl255364255554%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e255362255549%_)))
                                          (_%$%hd255363255552%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e255362255549%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl255364255554%_))
                                          (_%__kont257510257511%_)
                                          (_%__kont257518257519%_))))
                                  (_%__kont257518257519%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd255360255544%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl255361255546%_))
                                      (let ((_%$%e255368255526%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl255361255546%_))))
                                        (let ((_%$%tl255370255531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e255368255526%_)))
                                              (_%$%hd255369255529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e255368255526%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl255370255531%_))
                                              (_%__kont257512257513%_)
                                              (_%__kont257518257519%_))))
                                      (_%__kont257518257519%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%$%hd255360255544%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl255361255546%_))
                                          (let ((_%$%e255376255418%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl255361255546%_))))
                                            (let ((_%$%tl255378255423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e255376255418%_)))
                                                  (_%$%hd255377255421%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e255376255418%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd255377255421%_))
                                                  (let ((_%$%e255379255426%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd255377255421%_))))
                                                    (let ((_%$%tl255381255431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e255379255426%_)))
                                                          (_%$%hd255380255429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e255379255426%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd255380255429%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%$%hd255380255429%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl255381255431%_))
                          (let ((_%$%e255382255434%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl255381255431%_))))
                            (let ((_%$%tl255384255439%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e255382255434%_)))
                                  (_%$%hd255383255437%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e255382255434%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl255384255439%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl255378255423%_))
                                      (let ((_%__splice257516257517%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl255378255423%_
                                                '0))))
                                        (let ((_%$%tl255387255444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice257516257517%_
                                                  '1)))
                                              (_%$%target255385255442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice257516257517%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl255387255444%_))
                                              (_%__match257597257598%_
                                               _%$%e255359255541%_
                                               _%$%hd255360255544%_
                                               _%$%tl255361255546%_
                                               _%$%e255376255418%_
                                               _%$%hd255377255421%_
                                               _%$%tl255378255423%_
                                               _%$%e255379255426%_
                                               _%$%hd255380255429%_
                                               _%$%tl255381255431%_
                                               _%$%e255382255434%_
                                               _%$%hd255383255437%_
                                               _%$%tl255384255439%_
                                               _%__splice257516257517%_
                                               _%$%target255385255442%_
                                               _%$%tl255387255444%_)
                                              (_%__kont257518257519%_))))
                                      (_%__kont257518257519%_))
                                  (_%__kont257518257519%_))))
                          (_%__kont257518257519%_))
                      (_%__kont257518257519%_))
                  (_%__kont257518257519%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont257518257519%_))))
                                          (_%__kont257518257519%_))
                                      (_%__kont257518257519%_))))
                          (_%__kont257518257519%_))))
                  (_%__kont257518257519%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx255347%_ _%klass255348%_)
        (let ((_%expr-type255350%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx255347%_))))
          (if _%expr-type255350%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type255350%_ _%klass255348%_))
              '#f))))
    (define gxc#incompatible-type?
      (lambda (_%expr255331%_ _%type255332%_)
        (if (not _%type255332%_)
            '#f
            (if (eq? (##structure-ref _%type255332%_ '1 gxc#!type::t '#f) 't)
                '#f
                (if (eq? (##structure-ref _%type255332%_ '1 gxc#!type::t '#f)
                         'false)
                    '#f
                    (let ((_%expr-type255338%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr255331%_))))
                      (if (not _%expr-type255338%_)
                          '#f
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type255338%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              '#f
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%expr-type255338%_
                                     'gxc#!abort::t))
                                  '#f
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#!type-subtype?
                                         _%expr-type255338%_
                                         _%type255332%_))
                                      '#f
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#!interface-instance?
                                             _%type255332%_))
                                          '#f
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!type-subtype?
                                                 _%type255332%_
                                                 _%expr-type255338%_))
                                              '#f
                                              '#t))))))))))))
    (define gxc#check-expression-type!
      (lambda (_%stx255309%_ _%expr255310%_ _%type255311%_)
        (if (not _%type255311%_)
            '#f
            (let ((_%$e255314%_
                   (eq? (##structure-ref _%type255311%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e255314%_
                  _%$e255314%_
                  (let ((_%expr-type255318%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr255310%_))))
                    (if (not _%expr-type255318%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type255318%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e255322%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type255318%_
                                      'gxc#!abort::t))))
                              (if _%$e255322%_
                                  _%$e255322%_
                                  (let ((_%$e255325%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type255318%_
                                            _%type255311%_))))
                                    (if _%$e255325%_
                                        _%$e255325%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type255311%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type255311%_
                                                   _%expr-type255318%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx255309%_
                                                   _%expr255310%_
                                                   _%expr-type255318%_
                                                   _%type255311%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self255123%_ _%ctx255124%_ _%stx255125%_ _%args255126%_)
        (let* ((_%self255129%_ _%self255123%_)
               (_%klass255139%_
                (let ((__tmp258199
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self255129%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx255125%_ __tmp258199)))
               (_%fields255141%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass255139%_
                           '5
                           '#f
                           '#f))))
               (_%args255147%_
                (map (lambda (_%$%g255142255144%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx255124%_ _%$%g255142255144%_)))
                     _%args255126%_))
               (_%inline-make-object255149%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self255129%_
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
                           _%self255129%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields255141%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass255152%_ _%klass255139%_)
               (_%$e255166%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass255152%_ '6 '#f '#f))))
          (if _%$e255166%_
              (let ((_%$obj255171%_
                     (let ((__tmp258200
                            (let () (declare (not safe)) (##gensym '__obj))))
                       (declare (not safe))
                       (make-symbol__0 __tmp258200)))
                    (_%ctor-impl255172%_
                     (let ()
                       (declare (not safe))
                       (gxc#!class-lookup-method
                        _%klass255152%_
                        _%$e255166%_))))
                (let ((__tmp258201
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj255171%_ '())
                                               (cons _%inline-make-object255149%_
                                                     '()))
                                         '())
                                   (cons (cons '%#begin
                                               (cons (if _%ctor-impl255172%_
                                                         (let ((__tmp258202
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl255172%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj255171%_ '()))
                                          _%args255147%_)))))
                   (declare (not safe))
                   (gxc#xform-wrap-apply
                    __tmp258202
                    _%stx255125%_
                    _%ctx255124%_))
                 (let ((_%$ctor255174%_
                        (let ((__tmp258203
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__constructor))))
                          (declare (not safe))
                          (make-symbol__0 __tmp258203))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$ctor255174%_ '())
                                           (cons (cons '%#call
                                                       (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'direct-method-ref '()))
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self255129%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#ref (cons _%$obj255171%_ '()))
                                 (cons (cons '%#quote (cons _%$e255166%_ '()))
                                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#ref
                                                       (cons _%$ctor255174%_
                                                             '()))
                                                 (cons (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$ctor255174%_ '()))
                           (cons (cons '%#ref (cons _%$obj255171%_ '()))
                                 _%args255147%_)))
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
                         (##unchecked-structure-ref _%self255129%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#quote
                                                               (cons 'method:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _%$e255166%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj255171%_ '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp258201 _%stx255125%_)))
              (let ((_%$e255176%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass255152%_
                        '10
                        '#f
                        '#f))))
                (if _%$e255176%_
                    (let* ((_%$obj255181%_
                            (let ((__tmp258204
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp258204)))
                           (_%metakons255183%_
                            (let ((__tmp258205
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx255125%_
                                      _%$e255176%_))))
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               __tmp258205
                               'instance-init!)))
                           (__tmp258206
                            (cons '%#let-values
                                  (cons (cons (cons (cons _%$obj255181%_ '())
                                                    (cons _%inline-make-object255149%_
                                                          '()))
                                              '())
                                        (cons (cons '%#begin
                                                    (cons (if _%metakons255183%_
                                                              (let ((__tmp258207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons255183%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self255129%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj255181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args255147%_))))))
                        (declare (not safe))
                        (gxc#xform-wrap-apply
                         __tmp258207
                         _%stx255125%_
                         _%ctx255124%_))
                      (cons '%#call
                            (cons (cons '%#ref (cons 'call-method '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self255129%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons 'instance-init! '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj255181%_
                                                                '()))
                                                    _%args255147%_))))))
                  (cons (cons '%#ref (cons _%$obj255181%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp258206 _%stx255125%_))
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass255152%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp258208
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args255147%_))))
                              (declare (not safe))
                              (##fx= __tmp258208 _%fields255141%_))
                            (let ((__tmp258209
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self255129%_
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
                                              _%self255129%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args255147%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp258209
                               _%stx255125%_))
                            (let ((__tmp258211
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self255129%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp258210
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass255152%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx255125%_
                               __tmp258211
                               __tmp258210)))
                        (let ((_%$obj255188%_
                               (let ((__tmp258212
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp258212))))
                          (let _%lp255190%_ ((_%rest255192%_ _%args255147%_)
                                             (_%initializers255193%_ '()))
                            (let* ((_%__stx257600257601%_ _%rest255192%_)
                                   (_%$%g255197255218%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx257600257601%_)))))
                              (let ((_%__kont257602257603%_
                                     (lambda (_%$%g255199255272%_
                                              _%$%g255200255273%_
                                              _%$%g255201255274%_)
                                       (let* ((_%slot255301%_
                                               (let ((__tmp258213
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g255201255274%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp258213)))
                                              (_%off255303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass255152%_
                                                  _%slot255301%_))))
                                         (if _%off255303%_
                                             (_%lp255190%_
                                              _%$%g255199255272%_
                                              (cons (cons _%off255303%_
                                                          _%$%g255200255273%_)
                                                    _%initializers255193%_))
                                             (let ((__tmp258214
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self255129%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx255125%_
                                                __tmp258214
                                                _%slot255301%_))))))
                                    (_%__kont257604257605%_
                                     (lambda ()
                                       (let ((__tmp258215
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj255188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object255149%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp258218
                                     (cons (cons '%#ref
                                                 (cons _%$obj255188%_ '()))
                                           '()))
                                    (__tmp258216
                                     (let ((__tmp258217
                                            (lambda (_%i255232%_ _%r255233%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self255129%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i255232%_) '()))
                              (cons (cons '%#ref (cons _%$obj255188%_ '()))
                                    (cons (cdr _%i255232%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r255233%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp258217
                                        '()
                                        _%initializers255193%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp258218 __tmp258216)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp258215
                                          _%stx255125%_))))
                                    (_%__kont257606257607%_
                                     (lambda ()
                                       (let ((__tmp258219
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj255188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object255149%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj255188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args255147%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj255188%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp258219
                                          _%stx255125%_)))))
                                (let* ((_%$%g255195255235%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx257600257601%_))
                                              (_%__kont257604257605%_)
                                              (_%__kont257606257607%_))))
                                       (_%__match257637257638%_
                                        (lambda (_%$%e255202255240%_
                                                 _%$%hd255203255243%_
                                                 _%$%tl255204255245%_
                                                 _%$%e255205255248%_
                                                 _%$%hd255206255251%_
                                                 _%$%tl255207255253%_
                                                 _%$%e255208255256%_
                                                 _%$%hd255209255259%_
                                                 _%$%tl255210255261%_
                                                 _%$%e255211255264%_
                                                 _%$%hd255212255267%_
                                                 _%$%tl255213255269%_)
                                          (let ((_%$%g255199255272%_
                                                 _%$%tl255213255269%_)
                                                (_%$%g255200255273%_
                                                 _%$%hd255212255267%_)
                                                (_%$%g255201255274%_
                                                 _%$%hd255209255259%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%$%g255201255274%_))
                                                (_%__kont257602257603%_
                                                 _%$%g255199255272%_
                                                 _%$%g255200255273%_
                                                 _%$%g255201255274%_)
                                                (_%__kont257606257607%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx257600257601%_))
                                      (let ((_%$%e255202255240%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx257600257601%_))))
                                        (let ((_%$%tl255204255245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e255202255240%_)))
                                              (_%$%hd255203255243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e255202255240%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd255203255243%_))
                                              (let ((_%$%e255205255248%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd255203255243%_))))
                                                (let ((_%$%tl255207255253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e255205255248%_)))
                                                      (_%$%hd255206255251%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e255205255248%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd255206255251%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%$%hd255206255251%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl255207255253%_))
                      (let ((_%$%e255208255256%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl255207255253%_))))
                        (let ((_%$%tl255210255261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e255208255256%_)))
                              (_%$%hd255209255259%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e255208255256%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl255210255261%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl255204255245%_))
                                  (let ((_%$%e255211255264%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl255204255245%_))))
                                    (let ((_%$%tl255213255269%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e255211255264%_)))
                                          (_%$%hd255212255267%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e255211255264%_))))
                                      (_%__match257637257638%_
                                       _%$%e255202255240%_
                                       _%$%hd255203255243%_
                                       _%$%tl255204255245%_
                                       _%$%e255205255248%_
                                       _%$%hd255206255251%_
                                       _%$%tl255207255253%_
                                       _%$%e255208255256%_
                                       _%$%hd255209255259%_
                                       _%$%tl255210255261%_
                                       _%$%e255211255264%_
                                       _%$%hd255212255267%_
                                       _%$%tl255213255269%_)))
                                  (_%__kont257606257607%_))
                              (_%__kont257606257607%_))))
                      (_%__kont257606257607%_))
                  (_%__kont257606257607%_))
              (_%__kont257606257607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont257606257607%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g255195255235%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::check-arguments
      (lambda (_%self254985%_ _%ctx254986%_ _%stx254987%_ _%args254988%_)
        (let ((_%self254991%_ _%self254985%_))
          (if (let ()
                (declare (not safe))
                (##unchecked-structure-ref _%self254991%_ '4 '#f '#f))
              (gxc#!procedure::check-arguments
               _%self254991%_
               _%ctx254986%_
               _%stx254987%_
               _%args254988%_)
              '#t))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'check-arguments
       gxc#!accessor::check-arguments
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self254768%_ _%ctx254769%_ _%stx254770%_ _%args254771%_)
        (let* ((_%self254774%_ _%self254768%_)
               (_%arguments-ok?254784%_
                (let ((__method258147
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self254774%_ 'check-arguments))))
                  (if __method258147
                      (let ()
                        (declare (not safe))
                        (__method258147
                         _%self254774%_
                         _%ctx254769%_
                         _%stx254770%_
                         _%args254771%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self254774%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g254786254796%_
                (lambda (_%$%g254787254793%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g254787254793%_))))
               (_%$%g254785254860%_
                (lambda (_%$%g254787254799%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g254787254799%_))
                      (let ((_%$%e254789254801%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g254787254799%_))))
                        (let ((_%$%hd254790254804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e254789254801%_)))
                              (_%$%tl254791254806%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e254789254801%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl254791254806%_))
                              (let* ((_%klass254822%_
                                      (let ((__tmp258220
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self254774%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx254770%_
                                         __tmp258220)))
                                     (_%field254824%_
                                      (let ((__tmp258221
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self254774%_
                                                '3
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#!class-slot->field-offset
                                         _%klass254822%_
                                         __tmp258221)))
                                     (_%object254826%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx254769%_
                                         _%$%hd254790254804%_)))
                                     (_%klass254829%_ _%klass254822%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass254829%_
                                       '8
                                       '#f
                                       '#f))
                                    (let ((__tmp258222
                                           (cons (if (or _%arguments-ok?254784%_
                                                         (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self254774%_
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
                              _%self254774%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#quote (cons _%field254824%_ '()))
                     (cons _%object254826%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp258222
                                       _%stx254770%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass254829%_
                                           '7
                                           '#f
                                           '#f))
                                        (let ((__tmp258223
                                               (cons (if (or _%arguments-ok?254784%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self254774%_
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
                                  _%self254774%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field254824%_ '()))
                         (cons _%object254826%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp258223
                                           _%stx254770%_))
                                        (let ((_%$e254848%_
                                               (let ((__tmp258224
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self254774%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot-find-struct
                                                  _%klass254829%_
                                                  __tmp258224))))
                                          (if _%$e254848%_
                                              (let ((__tmp258225
                                                     (cons (if (or _%arguments-ok?254784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self254774%_
                                   '4
                                   '#f
                                   '#f))))
                       '%#struct-unchecked-ref
                       '%#struct-ref)
                   (cons (cons '%#ref
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self254774%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#quote (cons _%field254824%_ '()))
                               (cons _%object254826%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp258225
                                                 _%stx254770%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self254774%_
                                                     '4
                                                     '#f
                                                     '#f))
                                                  (let ((__tmp258226
                                                         (let ((_%$obj254857%_
                                                                (let ((__tmp258227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp258227))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$obj254857%_ '())
                                           (cons _%object254826%_ '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#struct-direct-instance?
                                                       (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass254829%_
                                    '1
                                    '#f
                                    '#f))
                                 '()))
                     (cons (cons '%#ref (cons _%$obj254857%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#struct-unchecked-ref
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self254774%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field254824%_ '()))
                                 (cons (cons '%#ref (cons _%$obj254857%_ '()))
                                       '()))))
               (cons (if _%arguments-ok?254784%_
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj254857%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self254774%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'class-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self254774%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj254857%_
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self254774%_
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
                                                     __tmp258226
                                                     _%stx254770%_))
                                                  (let ((__tmp258228
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'unchecked-slot-ref '()))
                             (cons _%object254826%_
                                   (cons (cons '%#quote
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self254774%_
                                                        '3
                                                        '#f
                                                        '#f))
                                                     '()))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp258228
                                                     _%stx254770%_))))))))
                              (_%$%g254786254796%_ _%$%g254787254799%_))))
                      (_%$%g254786254796%_ _%$%g254787254799%_)))))
          (_%$%g254785254860%_ _%args254771%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass257254 __method-table257255)
        (let ((__check-arguments257256
               (let ((__tmp258229
                      (lambda ()
                        (let ((__method257257
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table257255
                                  'check-arguments
                                  '#f))))
                          (if __method257257
                              __method257257
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp258229)))
              (__slot257258
               (let ((__slot257259
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass257254 'slot))))
                 (if __slot257259
                     __slot257259
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self254768%_ _%ctx254769%_ _%stx254770%_ _%args254771%_)
            (let* ((_%self254774%_ _%self254768%_)
                   (_%arguments-ok?254784%_
                    ((force __check-arguments257256)
                     _%self254774%_
                     _%ctx254769%_
                     _%stx254770%_
                     _%args254771%_))
                   (_%$%g254786254796%_
                    (lambda (_%$%g254787254793%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g254787254793%_))))
                   (_%$%g254785254860%_
                    (lambda (_%$%g254787254799%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g254787254799%_))
                          (let ((_%$%e254789254801%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g254787254799%_))))
                            (let ((_%$%hd254790254804%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e254789254801%_)))
                                  (_%$%tl254791254806%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e254789254801%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl254791254806%_))
                                  (let* ((_%klass254822%_
                                          (let ((__tmp258230
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self254774%_
                                                    '1
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx254770%_
                                             __tmp258230)))
                                         (_%field254824%_
                                          (let ((__tmp258231
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self254774%_
                                                    '3
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#!class-slot->field-offset
                                             _%klass254822%_
                                             __tmp258231)))
                                         (_%object254826%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%ctx254769%_
                                             _%$%hd254790254804%_)))
                                         (_%klass254829%_ _%klass254822%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass254829%_
                                           '8
                                           '#f
                                           '#f))
                                        (let ((__tmp258232
                                               (cons (if (or _%arguments-ok?254784%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self254774%_
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
                                  _%self254774%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field254824%_ '()))
                         (cons _%object254826%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp258232
                                           _%stx254770%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass254829%_
                                               '7
                                               '#f
                                               '#f))
                                            (let ((__tmp258233
                                                   (cons (if (or _%arguments-ok?254784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self254774%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-ref
                     '%#struct-ref)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self254774%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field254824%_ '()))
                             (cons _%object254826%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp258233
                                               _%stx254770%_))
                                            (let ((_%$e254848%_
                                                   (let ((__tmp258234
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self254774%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot-find-struct
                                                      _%klass254829%_
                                                      __tmp258234))))
                                              (if _%$e254848%_
                                                  (let ((__tmp258235
                                                         (cons (if (or _%arguments-ok?254784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (not (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self254774%_
                                       '4
                                       '#f
                                       '#f))))
                           '%#struct-unchecked-ref
                           '%#struct-ref)
                       (cons (cons '%#ref
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self254774%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#quote (cons _%field254824%_ '()))
                                   (cons _%object254826%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp258235
                                                     _%stx254770%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self254774%_
                                                         '4
                                                         '#f
                                                         '#f))
                                                      (let ((__tmp258236
                                                             (let ((_%$obj254857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp258237
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp258237))))
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj254857%_ '())
                                               (cons _%object254826%_ '()))
                                         '())
                                   (cons (cons '%#if
                                               (cons (cons '%#struct-direct-instance?
                                                           (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass254829%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#ref (cons _%$obj254857%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#struct-unchecked-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self254774%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field254824%_ '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj254857%_ '()))
                                           '()))))
                   (cons (if _%arguments-ok?254784%_
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj254857%_ '()))
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self254774%_
                            __slot257258
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
                                                              _%self254774%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj254857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self254774%_
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
                (gxc#xform-wrap-source __tmp258236 _%stx254770%_))
              (let ((__tmp258238
                     (cons '%#call
                           (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                 (cons _%object254826%_
                                       (cons (cons '%#quote
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self254774%_
                                                            '3
                                                            '#f
                                                            '#f))
                                                         '()))
                                             '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp258238 _%stx254770%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g254786254796%_ _%$%g254787254799%_))))
                          (_%$%g254786254796%_ _%$%g254787254799%_)))))
              (_%$%g254785254860%_ _%args254771%_))))))
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
      (lambda (_%self254532%_ _%ctx254533%_ _%stx254534%_ _%args254535%_)
        (let* ((_%self254538%_ _%self254532%_)
               (_%arguments-ok?254548%_
                (let ((__method258148
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self254538%_ 'check-arguments))))
                  (if __method258148
                      (let ()
                        (declare (not safe))
                        (__method258148
                         _%self254538%_
                         _%ctx254533%_
                         _%stx254534%_
                         _%args254535%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self254538%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g254550254564%_
                (lambda (_%$%g254551254561%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g254551254561%_))))
               (_%$%g254549254643%_
                (lambda (_%$%g254551254567%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g254551254567%_))
                      (let ((_%$%e254554254569%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g254551254567%_))))
                        (let ((_%$%hd254555254572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e254554254569%_)))
                              (_%$%tl254556254574%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e254554254569%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl254556254574%_))
                              (let ((_%$%e254557254577%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl254556254574%_))))
                                (let ((_%$%hd254558254580%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e254557254577%_)))
                                      (_%$%tl254559254582%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e254557254577%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl254559254582%_))
                                      (let* ((_%klass254602%_
                                              (let ((__tmp258239
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self254538%_
                                                        '1
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#optimizer-resolve-class
                                                 _%stx254534%_
                                                 __tmp258239)))
                                             (_%field254604%_
                                              (let ((__tmp258240
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self254538%_
                                                        '3
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#!class-slot->field-offset
                                                 _%klass254602%_
                                                 __tmp258240)))
                                             (_%object254606%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx254533%_
                                                 _%$%hd254555254572%_)))
                                             (_%value254608%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx254533%_
                                                 _%$%hd254558254580%_)))
                                             (_%klass254611%_ _%klass254602%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass254611%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp258241
                                                   (cons (if (or _%arguments-ok?254548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self254538%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-set!
                     '%#struct-direct-set!)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self254538%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field254604%_ '()))
                             (cons _%object254606%_
                                   (cons _%value254608%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp258241
                                               _%stx254534%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass254611%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp258242
                                                       (cons (if (or _%arguments-ok?254548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self254538%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self254538%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field254604%_ '()))
                                 (cons _%object254606%_
                                       (cons _%value254608%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp258242
                                                   _%stx254534%_))
                                                (let ((_%$e254631%_
                                                       (let ((__tmp258243
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self254538%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot-find-struct _%klass254611%_ __tmp258243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e254631%_
                                                      (let ((__tmp258244
                                                             (cons (if (or _%arguments-ok?254548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (not (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self254538%_
                                           '3
                                           '#f
                                           '#f))))
                               '%#struct-unchecked-set!
                               '%#struct-set!)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self254538%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field254604%_ '()))
                                       (cons _%object254606%_
                                             (cons _%value254608%_ '())))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp258244 _%stx254534%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self254538%_ '4 '#f '#f))
                  (let ((__tmp258245
                         (let ((_%$obj254640%_
                                (let ((__tmp258246
                                       (let ()
                                         (declare (not safe))
                                         (##gensym '__obj))))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp258246))))
                           (cons '%#let-values
                                 (cons (cons (cons (cons _%$obj254640%_ '())
                                                   (cons _%object254606%_ '()))
                                             '())
                                       (cons (cons '%#if
                                                   (cons (cons '%#struct-direct-instance?
                                                               (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass254611%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#ref (cons _%$obj254640%_ '()))
                                   '())))
                 (cons (cons '%#struct-unchecked-set!
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self254538%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field254604%_ '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj254640%_ '()))
                                               (cons _%value254608%_ '())))))
                       (cons (if _%arguments-ok?254548%_
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'unchecked-slot-set!
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj254640%_
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self254538%_
                                '3
                                '#f
                                '#f))
                             '()))
                 (cons _%value254608%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'class-slot-set! '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self254538%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#ref
                                                               (cons _%$obj254640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self254538%_
                                      '3
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%value254608%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp258245 _%stx254534%_))
                  (let ((__tmp258247
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-set! '()))
                                     (cons _%object254606%_
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self254538%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%value254608%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp258247 _%stx254534%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g254550254564%_
                                       _%$%g254551254567%_))))
                              (_%$%g254550254564%_ _%$%g254551254567%_))))
                      (_%$%g254550254564%_ _%$%g254551254567%_)))))
          (_%$%g254549254643%_ _%args254535%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass257260 __method-table257261)
        (let ((__check-arguments257262
               (let ((__tmp258248
                      (lambda ()
                        (let ((__method257263
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table257261
                                  'check-arguments
                                  '#f))))
                          (if __method257263
                              __method257263
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp258248))))
          (lambda (_%self254532%_ _%ctx254533%_ _%stx254534%_ _%args254535%_)
            (let* ((_%self254538%_ _%self254532%_)
                   (_%arguments-ok?254548%_
                    ((force __check-arguments257262)
                     _%self254538%_
                     _%ctx254533%_
                     _%stx254534%_
                     _%args254535%_))
                   (_%$%g254550254564%_
                    (lambda (_%$%g254551254561%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g254551254561%_))))
                   (_%$%g254549254643%_
                    (lambda (_%$%g254551254567%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g254551254567%_))
                          (let ((_%$%e254554254569%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g254551254567%_))))
                            (let ((_%$%hd254555254572%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e254554254569%_)))
                                  (_%$%tl254556254574%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e254554254569%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl254556254574%_))
                                  (let ((_%$%e254557254577%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl254556254574%_))))
                                    (let ((_%$%hd254558254580%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e254557254577%_)))
                                          (_%$%tl254559254582%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e254557254577%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl254559254582%_))
                                          (let* ((_%klass254602%_
                                                  (let ((__tmp258249
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self254538%_
                                                            '1
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#optimizer-resolve-class
                                                     _%stx254534%_
                                                     __tmp258249)))
                                                 (_%field254604%_
                                                  (let ((__tmp258250
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self254538%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot->field-offset
                                                     _%klass254602%_
                                                     __tmp258250)))
                                                 (_%object254606%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx254533%_
                                                     _%$%hd254555254572%_)))
                                                 (_%value254608%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx254533%_
                                                     _%$%hd254558254580%_)))
                                                 (_%klass254611%_
                                                  _%klass254602%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass254611%_
                                                   '8
                                                   '#f
                                                   '#f))
                                                (let ((__tmp258251
                                                       (cons (if (or _%arguments-ok?254548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self254538%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-direct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self254538%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field254604%_ '()))
                                 (cons _%object254606%_
                                       (cons _%value254608%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp258251
                                                   _%stx254534%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%klass254611%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp258252
                                                           (cons (if (or _%arguments-ok?254548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self254538%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-set!
                             '%#struct-set!)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self254538%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field254604%_ '()))
                                     (cons _%object254606%_
                                           (cons _%value254608%_ '())))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp258252 _%stx254534%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$e254631%_
                                                           (let ((__tmp258253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self254538%_
                             '3
                             '#f
                             '#f))))
                     (declare (not safe))
                     (gxc#!class-slot-find-struct
                      _%klass254611%_
                      __tmp258253))))
              (if _%$e254631%_
                  (let ((__tmp258254
                         (cons (if (or _%arguments-ok?254548%_
                                       (not (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self254538%_
                                               '3
                                               '#f
                                               '#f))))
                                   '%#struct-unchecked-set!
                                   '%#struct-set!)
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self254538%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     (cons (cons '%#quote
                                                 (cons _%field254604%_ '()))
                                           (cons _%object254606%_
                                                 (cons _%value254608%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp258254 _%stx254534%_))
                  (if (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254538%_ '4 '#f '#f))
                      (let ((__tmp258255
                             (let ((_%$obj254640%_
                                    (let ((__tmp258256
                                           (let ()
                                             (declare (not safe))
                                             (##gensym '__obj))))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp258256))))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj254640%_
                                                             '())
                                                       (cons _%object254606%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#if
                                                       (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass254611%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#ref (cons _%$obj254640%_ '()))
                                       '())))
                     (cons (cons '%#struct-unchecked-set!
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self254538%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field254604%_ '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj254640%_
                                                               '()))
                                                   (cons _%value254608%_
                                                         '())))))
                           (cons (if _%arguments-ok?254548%_
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'unchecked-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj254640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#quote
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self254538%_
                                    '3
                                    '#f
                                    '#f))
                                 '()))
                     (cons _%value254608%_ '())))))
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
                              _%self254538%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#ref (cons _%$obj254640%_ '()))
                     (cons (cons '%#quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self254538%_
                                          '3
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%value254608%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp258255 _%stx254534%_))
                      (let ((__tmp258257
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-set! '()))
                                         (cons _%object254606%_
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self254538%_
                            '3
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%value254608%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source
                         __tmp258257
                         _%stx254534%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g254550254564%_
                                           _%$%g254551254567%_))))
                                  (_%$%g254550254564%_ _%$%g254551254567%_))))
                          (_%$%g254550254564%_ _%$%g254551254567%_)))))
              (_%$%g254549254643%_ _%args254535%_))))))
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
      (lambda (_%self254348%_ _%ctx254349%_ _%stx254350%_ _%args254351%_)
        (let* ((_%self254354%_ _%self254348%_)
               (_%$%self254363254373%_ _%self254354%_)
               (_%$%E254365254376%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self254363254373%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%$%K254366254386%_
                (lambda (_%inline254379%_ _%dispatch254380%_ _%arity254381%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self254354%_
                         _%args254351%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx254350%_
                         _%arity254381%_)))
                  (if _%inline254379%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp258258 (_%inline254379%_ _%stx254350%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp258258
                           _%stx254350%_
                           _%ctx254349%_)))
                      (if (and _%dispatch254380%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch254380%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch254380%_))
                            (let ((__tmp258259
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch254380%_
                                                           '()))
                                               _%args254351%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp258259
                               _%stx254350%_
                               _%ctx254349%_)))
                          (gxc#!procedure::optimize-call
                           _%self254354%_
                           _%ctx254349%_
                           _%stx254350%_
                           _%args254351%_)))))
               (_%$%e254367254389%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self254363254373%_
                   '1
                   '#f
                   '#f)))
               (_%$%e254368254392%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self254363254373%_
                   '2
                   '#f
                   '#f)))
               (_%$%e254369254395%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self254363254373%_
                   '3
                   '#f
                   '#f)))
               (_%arity254398%_ _%$%e254369254395%_)
               (_%$%e254370254400%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self254363254373%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch254403%_ _%$%e254370254400%_)
               (_%$%e254371254405%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self254363254373%_
                   '5
                   '#f
                   '#f)))
               (_%inline254408%_ _%$%e254371254405%_))
          (_%$%K254366254386%_
           _%inline254408%_
           _%dispatch254403%_
           _%arity254398%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self254200%_ _%ctx254201%_ _%stx254202%_ _%args254203%_)
        (let* ((_%self254206%_ _%self254200%_)
               (_%$e254220%_
                (let ((__tmp258261
                       (lambda (_%$%g254215254217%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%$%g254215254217%_
                            _%args254203%_))))
                      (__tmp258260
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self254206%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp258261 __tmp258260))))
          (if _%$e254220%_
              (let ((__method258149
                     (let ()
                       (declare (not safe))
                       (__method-ref _%$e254220%_ 'optimize-call))))
                (if __method258149
                    (let ()
                      (declare (not safe))
                      (__method258149
                       _%$e254220%_
                       _%ctx254201%_
                       _%stx254202%_
                       _%args254203%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method" _%$e254220%_ 'optimize-call))
                      '#!void)))
              (let ((__tmp258262
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self254206%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx254202%_
                 __tmp258262))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self253941%_ _%ctx253942%_ _%stx253943%_ _%args253944%_)
        (let* ((_%self253947%_ _%self253941%_)
               (_%$%self253956253965%_ _%self253947%_)
               (_%$%E253958253968%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self253956253965%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%$%K253959254059%_
                (lambda (_%dispatch253971%_ _%table253972%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch253971%_))
                      (let* ((_%$%g253973253983%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch253971%_)))
                             (_%$%else253975253991%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch253971%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx253942%_
                                   _%stx253943%_))))
                             (_%$%K253977254040%_
                              (lambda (_%main253994%_ _%keys253995%_)
                                (let ((_g258263_
                                       (gxc#!kw-lambda-split-args
                                        _%stx253943%_
                                        _%args253944%_)))
                                  (begin
                                    (let ((_g258264_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g258263_)
                                                 (##values-length _g258263_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g258264_ 2)))
                                          (error "Context expects 2 values"
                                                 _g258264_)))
                                    (let ((_%pargs253997%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g258263_ 0)))
                                          (_%kwargs253998%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g258263_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main253994%_))
                                        (if _%table253972%_
                                            (let ((_%xargs254006%_
                                                   (map (lambda (_%key254000%_)
                                                          (let ((_%$e254002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key254000%_ _%kwargs253998%_))))
                    (if _%$e254002%_ _%$e254002%_ '(%#ref absent-value))))
                _%keys253995%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw254008%_)
                                                 (if (memq (car _%kw254008%_)
                                                           _%keys253995%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx253943%_
                                                        _%keys253995%_
                                                        _%kw254008%_))))
                                               _%kwargs253998%_)
                                              (let ((__tmp258265
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main253994%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs253997%_
                                  _%xargs254006%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp258265
                                                 _%stx253943%_
                                                 _%ctx253942%_)))
                                            (let* ((_%kwt254010%_
                                                    (let ((__tmp258266
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp258266)))
                                                   (_%kwvars254014%_
                                                    (map (lambda (_%_254012%_)
                                                           (let ((__tmp258267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp258267)))
                 _%kwargs253998%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind254019%_
                                                    (map (lambda (_%kw254016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar254017%_)
                   (cons (cons _%kwvar254017%_ '())
                         (cons (cdr _%kw254016%_) '())))
                 _%kwargs253998%_
                 _%kwvars254014%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset254024%_
                                                    (map (lambda (_%kw254021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar254022%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt254010%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw254021%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar254022%_
                                                             '()))
                                                 '()))))))
                 _%kwargs253998%_
                 _%kwvars254014%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs254029%_
                                                    (map (lambda (_%kw254026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar254027%_)
                   (cons (car _%kw254026%_)
                         (cons '%#ref (cons _%kwvar254027%_ '()))))
                 _%kwargs253998%_
                 _%kwvars254014%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs254037%_
                                                    (map (lambda (_%key254031%_)
                                                           (let ((_%$e254033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key254031%_ _%xkwargs254029%_))))
                     (if _%$e254033%_ _%$e254033%_ '(%#ref absent-value))))
                 _%keys253995%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp258268
                                                    (cons '%#let-values
                                                          (cons _%kwbind254019%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt254010%_ '())
                                                      (cons (let ((__tmp258269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs253998%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp258269 _%stx253943%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp258270
                                                             (cons (let ((__tmp258271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main253994%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt254010%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs253997%_
                                                       _%xargs254037%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp258271 _%stx253943%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp258270 _%kwset254024%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp258268
                                               _%stx253943%_
                                               _%ctx253942%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%g253973253983%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%$%e253978254043%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g253973253983%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%$%e253979254046%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g253973253983%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%$%e253980254049%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g253973253983%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys254052%_ _%$%e253980254049%_)
                                   (_%$%e253981254054%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g253973253983%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main254057%_ _%$%e253981254054%_))
                              (_%$%K253977254040%_
                               _%main254057%_
                               _%keys254052%_))
                            (_%$%else253975253991%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx253942%_ _%stx253943%_)))))
               (_%$%e253960254062%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self253956253965%_
                   '1
                   '#f
                   '#f)))
               (_%$%e253961254065%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self253956253965%_
                   '2
                   '#f
                   '#f)))
               (_%$%e253962254068%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self253956253965%_
                   '3
                   '#f
                   '#f)))
               (_%table254071%_ _%$%e253962254068%_)
               (_%$%e253963254073%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self253956253965%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch254076%_ _%$%e253963254073%_))
          (_%$%K253959254059%_ _%dispatch254076%_ _%table254071%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx253554%_ _%args253555%_)
        (let _%lp253557%_ ((_%rest253559%_ _%args253555%_)
                           (_%pargs253560%_ '())
                           (_%kwargs253561%_ '()))
          (let* ((_%__stx257642257643%_ _%rest253559%_)
                 (_%$%g253567253619%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx257642257643%_)))))
            (let ((_%__kont257644257645%_
                   (lambda (_%$%g253569253798%_ _%$%g253570253799%_)
                     (_%lp253557%_
                      _%$%g253569253798%_
                      (cons _%$%g253570253799%_ _%pargs253560%_)
                      _%kwargs253561%_)))
                  (_%__kont257646257647%_
                   (lambda (_%$%g253584253744%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%$%g253584253744%_
                                _%pargs253560%_))
                             (reverse _%kwargs253561%_))))
                  (_%__kont257648257649%_
                   (lambda (_%$%g253595253691%_
                            _%$%g253596253692%_
                            _%$%g253597253693%_)
                     (let ((_%kw253710%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g253597253693%_))))
                       (if (assq _%kw253710%_ _%kwargs253561%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx253554%_
                              _%kw253710%_))
                           (_%lp253557%_
                            _%$%g253595253691%_
                            _%pargs253560%_
                            (cons (cons _%kw253710%_ _%$%g253596253692%_)
                                  _%kwargs253561%_))))))
                  (_%__kont257650257651%_
                   (lambda (_%$%g253610253639%_ _%$%g253611253640%_)
                     (_%lp253557%_
                      _%$%g253610253639%_
                      (cons _%$%g253611253640%_ _%pargs253560%_)
                      _%kwargs253561%_)))
                  (_%__kont257652257653%_
                   (lambda ()
                     (values (reverse _%pargs253560%_)
                             (reverse _%kwargs253561%_)))))
              (let ((_%__match257749257750%_
                     (lambda (_%$%e253598253659%_
                              _%$%hd253599253662%_
                              _%$%tl253600253664%_
                              _%$%e253601253667%_
                              _%$%hd253602253670%_
                              _%$%tl253603253672%_
                              _%$%e253604253675%_
                              _%$%hd253605253678%_
                              _%$%tl253606253680%_
                              _%$%e253607253683%_
                              _%$%hd253608253686%_
                              _%$%tl253609253688%_)
                       (let ((_%$%g253595253691%_ _%$%tl253609253688%_)
                             (_%$%g253596253692%_ _%$%hd253608253686%_)
                             (_%$%g253597253693%_ _%$%hd253605253678%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%$%g253597253693%_))
                             (_%__kont257648257649%_
                              _%$%g253595253691%_
                              _%$%g253596253692%_
                              _%$%g253597253693%_)
                             (_%__kont257650257651%_
                              _%$%tl253600253664%_
                              _%$%hd253599253662%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx257642257643%_))
                    (let ((_%$%e253571253763%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx257642257643%_))))
                      (let ((_%$%tl253573253768%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e253571253763%_)))
                            (_%$%hd253572253766%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e253571253763%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd253572253766%_))
                            (let ((_%$%e253574253771%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd253572253766%_))))
                              (let ((_%$%tl253576253776%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e253574253771%_)))
                                    (_%$%hd253575253774%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e253574253771%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd253575253774%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd253575253774%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl253576253776%_))
                                            (let ((_%$%e253577253779%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl253576253776%_))))
                                              (let ((_%$%tl253579253784%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e253577253779%_)))
                                                    (_%$%hd253578253782%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e253577253779%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd253578253782%_))
                                                    (let ((_%$%e253580253787%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd253578253782%_))))
                                                      (if (equal? _%$%e253580253787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl253579253784%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl253573253768%_))
                          (let ((_%$%e253581253790%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl253573253768%_))))
                            (let ((_%$%tl253583253795%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e253581253790%_)))
                                  (_%$%hd253582253793%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e253581253790%_))))
                              (_%__kont257644257645%_
                               _%$%tl253583253795%_
                               _%$%hd253582253793%_)))
                          (_%__kont257650257651%_
                           _%$%tl253573253768%_
                           _%$%hd253572253766%_))
                      (_%__kont257650257651%_
                       _%$%tl253573253768%_
                       _%$%hd253572253766%_))
                  (if (equal? _%$%e253580253787%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl253579253784%_))
                          (_%__kont257646257647%_ _%$%tl253573253768%_)
                          (_%__kont257650257651%_
                           _%$%tl253573253768%_
                           _%$%hd253572253766%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl253579253784%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl253573253768%_))
                              (let ((_%$%e253607253683%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl253573253768%_))))
                                (let ((_%$%tl253609253688%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e253607253683%_)))
                                      (_%$%hd253608253686%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e253607253683%_))))
                                  (_%__match257749257750%_
                                   _%$%e253571253763%_
                                   _%$%hd253572253766%_
                                   _%$%tl253573253768%_
                                   _%$%e253574253771%_
                                   _%$%hd253575253774%_
                                   _%$%tl253576253776%_
                                   _%$%e253577253779%_
                                   _%$%hd253578253782%_
                                   _%$%tl253579253784%_
                                   _%$%e253607253683%_
                                   _%$%hd253608253686%_
                                   _%$%tl253609253688%_)))
                              (_%__kont257650257651%_
                               _%$%tl253573253768%_
                               _%$%hd253572253766%_))
                          (_%__kont257650257651%_
                           _%$%tl253573253768%_
                           _%$%hd253572253766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl253579253784%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl253573253768%_))
                                                            (let ((_%$%e253607253683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl253573253768%_))))
                      (let ((_%$%tl253609253688%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e253607253683%_)))
                            (_%$%hd253608253686%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e253607253683%_))))
                        (_%__match257749257750%_
                         _%$%e253571253763%_
                         _%$%hd253572253766%_
                         _%$%tl253573253768%_
                         _%$%e253574253771%_
                         _%$%hd253575253774%_
                         _%$%tl253576253776%_
                         _%$%e253577253779%_
                         _%$%hd253578253782%_
                         _%$%tl253579253784%_
                         _%$%e253607253683%_
                         _%$%hd253608253686%_
                         _%$%tl253609253688%_)))
                    (_%__kont257650257651%_
                     _%$%tl253573253768%_
                     _%$%hd253572253766%_))
                (_%__kont257650257651%_
                 _%$%tl253573253768%_
                 _%$%hd253572253766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont257650257651%_
                                             _%$%tl253573253768%_
                                             _%$%hd253572253766%_))
                                        (_%__kont257650257651%_
                                         _%$%tl253573253768%_
                                         _%$%hd253572253766%_))
                                    (_%__kont257650257651%_
                                     _%$%tl253573253768%_
                                     _%$%hd253572253766%_))))
                            (_%__kont257650257651%_
                             _%$%tl253573253768%_
                             _%$%hd253572253766%_))))
                    (_%__kont257652257653%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self253538%_ _%ctx253539%_ _%stx253540%_ _%args253541%_)
        (let ((_%self253544%_ _%self253538%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx253539%_ _%stx253540%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self253228%_ _%stx253229%_)
        (let* ((_%__stx257758257759%_ _%stx253229%_)
               (_%$%g253232253272%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257758257759%_)))))
          (let ((_%__kont257760257761%_
                 (lambda (_%$%g253234253376%_ _%$%g253235253377%_)
                   (let ((_%$e253404%_
                          (member 'return:
                                  (let ((__tmp258272
                                         (lambda (_%$%g253396253399%_
                                                  _%$%g253397253401%_)
                                           (cons _%$%g253396253399%_
                                                 _%$%g253397253401%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp258272
                                     '()
                                     _%$%g253235253377%_))
                                  gx#stx-eq?)))
                     (if _%$e253404%_
                         (let ((_%type253409%_
                                (let ((__tmp258273
                                       (let ((__tmp258274 (cadr _%$e253404%_)))
                                         (declare (not safe))
                                         (gxc#identifier-symbol __tmp258274))))
                                  (declare (not safe))
                                  (gxc#optimizer-resolve-class
                                   _%stx253229%_
                                   __tmp258273))))
                           (gxc#check-return-type!
                            _%stx253229%_
                            _%$%g253234253376%_
                            _%type253409%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self253228%_
                              _%$%g253234253376%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self253228%_
                            _%$%g253234253376%_))))))
                (_%__kont257764257765%_
                 (lambda (_%$%g253257253301%_ _%$%g253258253302%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self253228%_ _%$%g253257253301%_)))))
            (let ((_%__match257795257796%_
                   (lambda (_%$%e253236253322%_
                            _%$%hd253237253325%_
                            _%$%tl253238253327%_
                            _%$%e253239253330%_
                            _%$%hd253240253333%_
                            _%$%tl253241253335%_
                            _%$%e253242253338%_
                            _%$%hd253243253341%_
                            _%$%tl253244253343%_
                            _%__splice257762257763%_
                            _%$%target253245253346%_
                            _%$%tl253247253348%_)
                     (letrec ((_%$%loop253248253351%_
                               (lambda (_%$%hd253246253354%_
                                        _%$%signature253252253356%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd253246253354%_))
                                     (let ((_%$%e253249253358%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd253246253354%_))))
                                       (let ((_%$%lp-tl253251253363%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e253249253358%_)))
                                             (_%$%lp-hd253250253361%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e253249253358%_))))
                                         (_%$%loop253248253351%_
                                          _%$%lp-tl253251253363%_
                                          (cons _%$%lp-hd253250253361%_
                                                _%$%signature253252253356%_))))
                                     (let ((_%$%signature253253253366%_
                                            (reverse _%$%signature253252253356%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl253241253335%_))
                                           (let ((_%$%e253254253368%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl253241253335%_))))
                                             (let ((_%$%tl253256253373%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e253254253368%_)))
                                                   (_%$%hd253255253371%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e253254253368%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl253256253373%_))
                                                   (_%__kont257760257761%_
                                                    _%$%hd253255253371%_
                                                    _%$%signature253253253366%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g253232253272%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g253232253272%_))))))))
                       (_%$%loop253248253351%_
                        _%$%target253245253346%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx257758257759%_))
                  (let ((_%$%e253236253322%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx257758257759%_))))
                    (let ((_%$%tl253238253327%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e253236253322%_)))
                          (_%$%hd253237253325%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e253236253322%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl253238253327%_))
                          (let ((_%$%e253239253330%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl253238253327%_))))
                            (let ((_%$%tl253241253335%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e253239253330%_)))
                                  (_%$%hd253240253333%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e253239253330%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd253240253333%_))
                                  (let ((_%$%e253242253338%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd253240253333%_))))
                                    (let ((_%$%tl253244253343%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e253242253338%_)))
                                          (_%$%hd253243253341%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e253242253338%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd253243253341%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%$%hd253243253341%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%$%tl253244253343%_))
                                                  (let ((_%__splice257762257763%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl253244253343%_
                                                            '0))))
                                                    (let ((_%$%tl253247253348%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice257762257763%_
                                                              '1)))
                                                          (_%$%target253245253346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice257762257763%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl253247253348%_))
                                                          (_%__match257795257796%_
                                                           _%$%e253236253322%_
                                                           _%$%hd253237253325%_
                                                           _%$%tl253238253327%_
                                                           _%$%e253239253330%_
                                                           _%$%hd253240253333%_
                                                           _%$%tl253241253335%_
                                                           _%$%e253242253338%_
                                                           _%$%hd253243253341%_
                                                           _%$%tl253244253343%_
                                                           _%__splice257762257763%_
                                                           _%$%target253245253346%_
                                                           _%$%tl253247253348%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl253241253335%_))
                      (let ((_%$%e253265253293%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl253241253335%_))))
                        (let ((_%$%tl253267253298%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e253265253293%_)))
                              (_%$%hd253266253296%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e253265253293%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl253267253298%_))
                              (_%__kont257764257765%_
                               _%$%hd253266253296%_
                               _%$%hd253240253333%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g253232253272%_)))))
                      (let () (declare (not safe)) (_%$%g253232253272%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl253241253335%_))
                                                      (let ((_%$%e253265253293%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl253241253335%_))))
                (let ((_%$%tl253267253298%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e253265253293%_)))
                      (_%$%hd253266253296%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e253265253293%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl253267253298%_))
                      (_%__kont257764257765%_
                       _%$%hd253266253296%_
                       _%$%hd253240253333%_)
                      (let () (declare (not safe)) (_%$%g253232253272%_)))))
              (let () (declare (not safe)) (_%$%g253232253272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl253241253335%_))
                                                  (let ((_%$%e253265253293%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl253241253335%_))))
                                                    (let ((_%$%tl253267253298%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e253265253293%_)))
                                                          (_%$%hd253266253296%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e253265253293%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl253267253298%_))
                                                          (_%__kont257764257765%_
                                                           _%$%hd253266253296%_
                                                           _%$%hd253240253333%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g253232253272%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g253232253272%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl253241253335%_))
                                              (let ((_%$%e253265253293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl253241253335%_))))
                                                (let ((_%$%tl253267253298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e253265253293%_)))
                                                      (_%$%hd253266253296%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e253265253293%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl253267253298%_))
                                                      (_%__kont257764257765%_
                                                       _%$%hd253266253296%_
                                                       _%$%hd253240253333%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g253232253272%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g253232253272%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl253241253335%_))
                                      (let ((_%$%e253265253293%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl253241253335%_))))
                                        (let ((_%$%tl253267253298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e253265253293%_)))
                                              (_%$%hd253266253296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e253265253293%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl253267253298%_))
                                              (_%__kont257764257765%_
                                               _%$%hd253266253296%_
                                               _%$%hd253240253333%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g253232253272%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g253232253272%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g253232253272%_)))))
                  (let () (declare (not safe)) (_%$%g253232253272%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx253203%_ _%expr253204%_ _%type253205%_)
        (let ((_%$e253207%_ (not _%type253205%_)))
          (if _%$e253207%_
              _%$e253207%_
              (let ((_%$e253210%_
                     (eq? (##structure-ref _%type253205%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e253210%_
                    _%$e253210%_
                    (let ((_%$e253213%_
                           (eq? (##structure-ref
                                 _%type253205%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e253213%_
                          _%$e253213%_
                          (let ((_%expr-type253217%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr253204%_))))
                            (if (not _%expr-type253217%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx253203%_
                                   _%type253205%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type253217%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx253203%_
                                       _%type253205%_
                                       _%expr-type253217%_))
                                    (let ((_%$e253221%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type253217%_
                                              'gxc#!abort::t))))
                                      (if _%$e253221%_
                                          _%$e253221%_
                                          (let ((_%$e253224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type253217%_
                                                    _%type253205%_))))
                                            (if _%$e253224%_
                                                _%$e253224%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx253203%_
                                                   _%type253205%_
                                                   _%expr-type253217%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self252632%_ _%stx252633%_)
        (gxc#check-contract-violation!
         _%stx252633%_
         (let* ((_%__stx257844257845%_ _%stx252633%_)
                (_%$%g252638252748%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; invalid match target"
                      _%__stx257844257845%_)))))
           (let ((_%__kont257846257847%_
                  (lambda (_%$%g252640253177%_
                           _%$%g252641253178%_
                           _%$%g252642253179%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-e _%$%g252642253179%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self252632%_
                           _%$%g252641253178%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self252632%_
                           _%$%g252640253177%_)))))
                 (_%__kont257848257849%_
                  (lambda (_%$%g252661253006%_
                           _%$%g252662253007%_
                           _%$%g252663253008%_
                           _%$%g252664253009%_)
                    (let ((_%$e253041%_
                           (let ((__tmp258275
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g252664253009%_))))
                             (declare (not safe))
                             (gxc#optimizer-lookup-type __tmp258275))))
                      (if _%$e253041%_
                          (if (or (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e253041%_
                                     'gxc#!predicate::t))
                                  (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e253041%_
                                     'gxc#!primitive-predicate::t)))
                              (let* ((_%test253049%_
                                      (let ((__tmp258276
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '%#call))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '%#ref))
                       (cons _%$%g252664253009%_ '()))
                 (cons (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#ref))
                             (cons _%$%g252663253008%_ '()))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-apply
                                         __tmp258276
                                         _%stx252633%_
                                         _%self252632%_)))
                                     (_%K253053%_
                                      (let ((__tmp258277
                                             (lambda ()
                                               (let ((__tmp258280
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self252632%_
                                                           _%$%g252662253007%_))))
                                                     (__tmp258278
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#identifier-symbol _%$%g252663253008%_))
                          (let ((__tmp258279
                                 (##structure-ref
                                  _%$e253041%_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             _%stx252633%_
                             __tmp258279)))
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp258280
                                                  gxc#current-compile-path-type
                                                  __tmp258278)))))
                                        (declare (not safe))
                                        (__make-promise __tmp258277)))
                                     (_%E253056%_
                                      (let ((__tmp258281
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self252632%_
                                                  _%$%g252661253006%_)))))
                                        (declare (not safe))
                                        (__make-promise __tmp258281)))
                                     (_%__stx257818257819%_ _%test253049%_)
                                     (_%$%g253060253073%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx257818257819%_)))))
                                (let ((_%__kont257820257821%_
                                       (lambda (_%$%g253062253101%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%$%g253062253101%_))
                                             (force _%K253053%_)
                                             (force _%E253056%_))))
                                      (_%__kont257822257823%_
                                       (lambda ()
                                         (let ((__tmp258282
                                                (cons '%#if
                                                      (cons _%test253049%_
                                                            (cons (force _%K253053%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (force _%E253056%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp258282
                                            _%stx252633%_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx257818257819%_))
                                      (let ((_%$%e253063253085%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx257818257819%_))))
                                        (let ((_%$%tl253065253090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e253063253085%_)))
                                              (_%$%hd253064253088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e253063253085%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd253064253088%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#quote
                                                     _%$%hd253064253088%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl253065253090%_))
                                                      (let ((_%$%e253066253093%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl253065253090%_))))
                (let ((_%$%tl253068253098%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e253066253093%_)))
                      (_%$%hd253067253096%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e253066253093%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl253068253098%_))
                      (_%__kont257820257821%_ _%$%hd253067253096%_)
                      (_%__kont257822257823%_))))
              (_%__kont257822257823%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont257822257823%_))
                                              (_%__kont257822257823%_))))
                                      (_%__kont257822257823%_))))
                              (let ()
                                (declare (not safe))
                                (gxc#xform-operands
                                 _%self252632%_
                                 _%stx252633%_)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-operands
                             _%self252632%_
                             _%stx252633%_))))))
                 (_%__kont257850257851%_
                  (lambda (_%$%g252698252882%_
                           _%$%g252699252883%_
                           _%$%g252700252884%_
                           _%$%g252701252885%_)
                    (gxc#optimize-if%
                     _%self252632%_
                     (let ((__tmp258283
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#if))
                                  (cons _%$%g252700252884%_
                                        (cons _%$%g252698252882%_
                                              (cons _%$%g252699252883%_
                                                    '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp258283 _%stx252633%_)))))
                 (_%__kont257852257853%_
                  (lambda (_%$%g252729252785%_
                           _%$%g252730252786%_
                           _%$%g252731252787%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-operands _%self252632%_ _%stx252633%_)))))
             (let ((_%__match258051258052%_
                    (lambda (_%$%e252702252810%_
                             _%$%hd252703252813%_
                             _%$%tl252704252815%_
                             _%$%e252705252818%_
                             _%$%hd252706252821%_
                             _%$%tl252707252823%_
                             _%$%e252708252826%_
                             _%$%hd252709252829%_
                             _%$%tl252710252831%_
                             _%$%e252711252834%_
                             _%$%hd252712252837%_
                             _%$%tl252713252839%_
                             _%$%e252714252842%_
                             _%$%hd252715252845%_
                             _%$%tl252716252847%_
                             _%$%e252717252850%_
                             _%$%hd252718252853%_
                             _%$%tl252719252855%_
                             _%$%e252720252858%_
                             _%$%hd252721252861%_
                             _%$%tl252722252863%_
                             _%$%e252723252866%_
                             _%$%hd252724252869%_
                             _%$%tl252725252871%_
                             _%$%e252726252874%_
                             _%$%hd252727252877%_
                             _%$%tl252728252879%_)
                      (let ((_%$%g252698252882%_ _%$%hd252727252877%_)
                            (_%$%g252699252883%_ _%$%hd252724252869%_)
                            (_%$%g252700252884%_ _%$%hd252721252861%_)
                            (_%$%g252701252885%_ _%$%hd252718252853%_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _%$%g252701252885%_
                               'not))
                            (_%__kont257850257851%_
                             _%$%g252698252882%_
                             _%$%g252699252883%_
                             _%$%g252700252884%_
                             _%$%g252701252885%_)
                            (_%__kont257852257853%_
                             _%$%hd252727252877%_
                             _%$%hd252724252869%_
                             _%$%hd252706252821%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx257844257845%_))
                   (let ((_%$%e252643253129%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx257844257845%_))))
                     (let ((_%$%tl252645253134%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e252643253129%_)))
                           (_%$%hd252644253132%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e252643253129%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl252645253134%_))
                           (let ((_%$%e252646253137%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl252645253134%_))))
                             (let ((_%$%tl252648253142%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e252646253137%_)))
                                   (_%$%hd252647253140%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e252646253137%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd252647253140%_))
                                   (let ((_%$%e252649253145%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd252647253140%_))))
                                     (let ((_%$%tl252651253150%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e252649253145%_)))
                                           (_%$%hd252650253148%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e252649253145%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd252650253148%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#quote
                                                  _%$%hd252650253148%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl252651253150%_))
                                                   (let ((_%$%e252652253153%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl252651253150%_))))
                                                     (let ((_%$%tl252654253158%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e252652253153%_)))
                                                           (_%$%hd252653253156%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e252652253153%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl252654253158%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl252648253142%_))
                       (let ((_%$%e252655253161%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl252648253142%_))))
                         (let ((_%$%tl252657253166%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e252655253161%_)))
                               (_%$%hd252656253164%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e252655253161%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl252657253166%_))
                               (let ((_%$%e252658253169%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl252657253166%_))))
                                 (let ((_%$%tl252660253174%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e252658253169%_)))
                                       (_%$%hd252659253172%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e252658253169%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl252660253174%_))
                                       (_%__kont257846257847%_
                                        _%$%hd252659253172%_
                                        _%$%hd252656253164%_
                                        _%$%hd252653253156%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g252638252748%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g252638252748%_)))))
                       (let () (declare (not safe)) (_%$%g252638252748%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl252648253142%_))
                       (let ((_%$%e252738252769%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl252648253142%_))))
                         (let ((_%$%tl252740252774%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e252738252769%_)))
                               (_%$%hd252739252772%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e252738252769%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl252740252774%_))
                               (let ((_%$%e252741252777%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl252740252774%_))))
                                 (let ((_%$%tl252743252782%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e252741252777%_)))
                                       (_%$%hd252742252780%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e252741252777%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl252743252782%_))
                                       (_%__kont257852257853%_
                                        _%$%hd252742252780%_
                                        _%$%hd252739252772%_
                                        _%$%hd252647253140%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g252638252748%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g252638252748%_)))))
                       (let () (declare (not safe)) (_%$%g252638252748%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl252648253142%_))
                                                       (let ((_%$%e252738252769%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl252648253142%_))))
                 (let ((_%$%tl252740252774%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e252738252769%_)))
                       (_%$%hd252739252772%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e252738252769%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl252740252774%_))
                       (let ((_%$%e252741252777%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl252740252774%_))))
                         (let ((_%$%tl252743252782%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e252741252777%_)))
                               (_%$%hd252742252780%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e252741252777%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl252743252782%_))
                               (_%__kont257852257853%_
                                _%$%hd252742252780%_
                                _%$%hd252739252772%_
                                _%$%hd252647253140%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g252638252748%_)))))
                       (let () (declare (not safe)) (_%$%g252638252748%_)))))
               (let () (declare (not safe)) (_%$%g252638252748%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-eq?
                                                      '%#call
                                                      _%$%hd252650253148%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl252651253150%_))
                                                       (let ((_%$%e252674252942%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl252651253150%_))))
                 (let ((_%$%tl252676252947%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e252674252942%_)))
                       (_%$%hd252675252945%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e252674252942%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%hd252675252945%_))
                       (let ((_%$%e252677252950%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%hd252675252945%_))))
                         (let ((_%$%tl252679252955%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e252677252950%_)))
                               (_%$%hd252678252953%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e252677252950%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%$%hd252678252953%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-eq? '%#ref _%$%hd252678252953%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl252679252955%_))
                                       (let ((_%$%e252680252958%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl252679252955%_))))
                                         (let ((_%$%tl252682252963%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e252680252958%_)))
                                               (_%$%hd252681252961%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e252680252958%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl252682252963%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl252676252947%_))
                                                   (let ((_%$%e252683252966%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl252676252947%_))))
                                                     (let ((_%$%tl252685252971%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e252683252966%_)))
                                                           (_%$%hd252684252969%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e252683252966%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd252684252969%_))
                                                           (let ((_%$%e252686252974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd252684252969%_))))
                     (let ((_%$%tl252688252979%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e252686252974%_)))
                           (_%$%hd252687252977%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e252686252974%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%$%hd252687252977%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-eq? '%#ref _%$%hd252687252977%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl252688252979%_))
                                   (let ((_%$%e252689252982%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl252688252979%_))))
                                     (let ((_%$%tl252691252987%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e252689252982%_)))
                                           (_%$%hd252690252985%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e252689252982%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl252691252987%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl252685252971%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl252648253142%_))
                                                   (let ((_%$%e252692252990%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl252648253142%_))))
                                                     (let ((_%$%tl252694252995%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e252692252990%_)))
                                                           (_%$%hd252693252993%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e252692252990%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl252694252995%_))
                                                           (let ((_%$%e252695252998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl252694252995%_))))
                     (let ((_%$%tl252697253003%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e252695252998%_)))
                           (_%$%hd252696253001%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e252695252998%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl252697253003%_))
                           (_%__kont257848257849%_
                            _%$%hd252696253001%_
                            _%$%hd252693252993%_
                            _%$%hd252690252985%_
                            _%$%hd252681252961%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g252638252748%_)))))
                   (let () (declare (not safe)) (_%$%g252638252748%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g252638252748%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl252648253142%_))
                                                   (let ((_%$%e252738252769%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl252648253142%_))))
                                                     (let ((_%$%tl252740252774%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e252738252769%_)))
                                                           (_%$%hd252739252772%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e252738252769%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl252740252774%_))
                                                           (let ((_%$%e252741252777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl252740252774%_))))
                     (let ((_%$%tl252743252782%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e252741252777%_)))
                           (_%$%hd252742252780%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e252741252777%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl252743252782%_))
                           (_%__kont257852257853%_
                            _%$%hd252742252780%_
                            _%$%hd252739252772%_
                            _%$%hd252647253140%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g252638252748%_)))))
                   (let () (declare (not safe)) (_%$%g252638252748%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g252638252748%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl252685252971%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl252648253142%_))
                                                   (let ((_%$%e252723252866%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl252648253142%_))))
                                                     (let ((_%$%tl252725252871%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e252723252866%_)))
                                                           (_%$%hd252724252869%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e252723252866%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl252725252871%_))
                                                           (let ((_%$%e252726252874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl252725252871%_))))
                     (let ((_%$%tl252728252879%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e252726252874%_)))
                           (_%$%hd252727252877%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e252726252874%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl252728252879%_))
                           (_%__match258051258052%_
                            _%$%e252643253129%_
                            _%$%hd252644253132%_
                            _%$%tl252645253134%_
                            _%$%e252646253137%_
                            _%$%hd252647253140%_
                            _%$%tl252648253142%_
                            _%$%e252649253145%_
                            _%$%hd252650253148%_
                            _%$%tl252651253150%_
                            _%$%e252674252942%_
                            _%$%hd252675252945%_
                            _%$%tl252676252947%_
                            _%$%e252677252950%_
                            _%$%hd252678252953%_
                            _%$%tl252679252955%_
                            _%$%e252680252958%_
                            _%$%hd252681252961%_
                            _%$%tl252682252963%_
                            _%$%e252683252966%_
                            _%$%hd252684252969%_
                            _%$%tl252685252971%_
                            _%$%e252723252866%_
                            _%$%hd252724252869%_
                            _%$%tl252725252871%_
                            _%$%e252726252874%_
                            _%$%hd252727252877%_
                            _%$%tl252728252879%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g252638252748%_)))))
                   (let () (declare (not safe)) (_%$%g252638252748%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g252638252748%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl252648253142%_))
                                                   (let ((_%$%e252738252769%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl252648253142%_))))
                                                     (let ((_%$%tl252740252774%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e252738252769%_)))
                                                           (_%$%hd252739252772%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e252738252769%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl252740252774%_))
                                                           (let ((_%$%e252741252777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl252740252774%_))))
                     (let ((_%$%tl252743252782%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e252741252777%_)))
                           (_%$%hd252742252780%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e252741252777%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl252743252782%_))
                           (_%__kont257852257853%_
                            _%$%hd252742252780%_
                            _%$%hd252739252772%_
                            _%$%hd252647253140%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g252638252748%_)))))
                   (let () (declare (not safe)) (_%$%g252638252748%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g252638252748%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl252685252971%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl252648253142%_))
                                           (let ((_%$%e252723252866%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl252648253142%_))))
                                             (let ((_%$%tl252725252871%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e252723252866%_)))
                                                   (_%$%hd252724252869%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e252723252866%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl252725252871%_))
                                                   (let ((_%$%e252726252874%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl252725252871%_))))
                                                     (let ((_%$%tl252728252879%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e252726252874%_)))
                                                           (_%$%hd252727252877%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e252726252874%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl252728252879%_))
                                                           (_%__match258051258052%_
                                                            _%$%e252643253129%_
                                                            _%$%hd252644253132%_
                                                            _%$%tl252645253134%_
                                                            _%$%e252646253137%_
                                                            _%$%hd252647253140%_
                                                            _%$%tl252648253142%_
                                                            _%$%e252649253145%_
                                                            _%$%hd252650253148%_
                                                            _%$%tl252651253150%_
                                                            _%$%e252674252942%_
                                                            _%$%hd252675252945%_
                                                            _%$%tl252676252947%_
                                                            _%$%e252677252950%_
                                                            _%$%hd252678252953%_
                                                            _%$%tl252679252955%_
                                                            _%$%e252680252958%_
                                                            _%$%hd252681252961%_
                                                            _%$%tl252682252963%_
                                                            _%$%e252683252966%_
                                                            _%$%hd252684252969%_
                                                            _%$%tl252685252971%_
                                                            _%$%e252723252866%_
                                                            _%$%hd252724252869%_
                                                            _%$%tl252725252871%_
                                                            _%$%e252726252874%_
                                                            _%$%hd252727252877%_
                                                            _%$%tl252728252879%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g252638252748%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g252638252748%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g252638252748%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl252648253142%_))
                                           (let ((_%$%e252738252769%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl252648253142%_))))
                                             (let ((_%$%tl252740252774%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e252738252769%_)))
                                                   (_%$%hd252739252772%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e252738252769%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl252740252774%_))
                                                   (let ((_%$%e252741252777%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl252740252774%_))))
                                                     (let ((_%$%tl252743252782%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e252741252777%_)))
                                                           (_%$%hd252742252780%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e252741252777%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl252743252782%_))
                                                           (_%__kont257852257853%_
                                                            _%$%hd252742252780%_
                                                            _%$%hd252739252772%_
                                                            _%$%hd252647253140%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g252638252748%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g252638252748%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g252638252748%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl252685252971%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl252648253142%_))
                                       (let ((_%$%e252723252866%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl252648253142%_))))
                                         (let ((_%$%tl252725252871%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e252723252866%_)))
                                               (_%$%hd252724252869%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e252723252866%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl252725252871%_))
                                               (let ((_%$%e252726252874%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl252725252871%_))))
                                                 (let ((_%$%tl252728252879%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e252726252874%_)))
                                                       (_%$%hd252727252877%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e252726252874%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl252728252879%_))
                                                       (_%__match258051258052%_
                                                        _%$%e252643253129%_
                                                        _%$%hd252644253132%_
                                                        _%$%tl252645253134%_
                                                        _%$%e252646253137%_
                                                        _%$%hd252647253140%_
                                                        _%$%tl252648253142%_
                                                        _%$%e252649253145%_
                                                        _%$%hd252650253148%_
                                                        _%$%tl252651253150%_
                                                        _%$%e252674252942%_
                                                        _%$%hd252675252945%_
                                                        _%$%tl252676252947%_
                                                        _%$%e252677252950%_
                                                        _%$%hd252678252953%_
                                                        _%$%tl252679252955%_
                                                        _%$%e252680252958%_
                                                        _%$%hd252681252961%_
                                                        _%$%tl252682252963%_
                                                        _%$%e252683252966%_
                                                        _%$%hd252684252969%_
                                                        _%$%tl252685252971%_
                                                        _%$%e252723252866%_
                                                        _%$%hd252724252869%_
                                                        _%$%tl252725252871%_
                                                        _%$%e252726252874%_
                                                        _%$%hd252727252877%_
                                                        _%$%tl252728252879%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g252638252748%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g252638252748%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g252638252748%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl252648253142%_))
                                       (let ((_%$%e252738252769%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl252648253142%_))))
                                         (let ((_%$%tl252740252774%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e252738252769%_)))
                                               (_%$%hd252739252772%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e252738252769%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl252740252774%_))
                                               (let ((_%$%e252741252777%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl252740252774%_))))
                                                 (let ((_%$%tl252743252782%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e252741252777%_)))
                                                       (_%$%hd252742252780%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e252741252777%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl252743252782%_))
                                                       (_%__kont257852257853%_
                                                        _%$%hd252742252780%_
                                                        _%$%hd252739252772%_
                                                        _%$%hd252647253140%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g252638252748%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g252638252748%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g252638252748%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl252685252971%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl252648253142%_))
                                   (let ((_%$%e252723252866%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl252648253142%_))))
                                     (let ((_%$%tl252725252871%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e252723252866%_)))
                                           (_%$%hd252724252869%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e252723252866%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl252725252871%_))
                                           (let ((_%$%e252726252874%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl252725252871%_))))
                                             (let ((_%$%tl252728252879%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e252726252874%_)))
                                                   (_%$%hd252727252877%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e252726252874%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl252728252879%_))
                                                   (_%__match258051258052%_
                                                    _%$%e252643253129%_
                                                    _%$%hd252644253132%_
                                                    _%$%tl252645253134%_
                                                    _%$%e252646253137%_
                                                    _%$%hd252647253140%_
                                                    _%$%tl252648253142%_
                                                    _%$%e252649253145%_
                                                    _%$%hd252650253148%_
                                                    _%$%tl252651253150%_
                                                    _%$%e252674252942%_
                                                    _%$%hd252675252945%_
                                                    _%$%tl252676252947%_
                                                    _%$%e252677252950%_
                                                    _%$%hd252678252953%_
                                                    _%$%tl252679252955%_
                                                    _%$%e252680252958%_
                                                    _%$%hd252681252961%_
                                                    _%$%tl252682252963%_
                                                    _%$%e252683252966%_
                                                    _%$%hd252684252969%_
                                                    _%$%tl252685252971%_
                                                    _%$%e252723252866%_
                                                    _%$%hd252724252869%_
                                                    _%$%tl252725252871%_
                                                    _%$%e252726252874%_
                                                    _%$%hd252727252877%_
                                                    _%$%tl252728252879%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g252638252748%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g252638252748%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g252638252748%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl252648253142%_))
                                   (let ((_%$%e252738252769%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl252648253142%_))))
                                     (let ((_%$%tl252740252774%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e252738252769%_)))
                                           (_%$%hd252739252772%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e252738252769%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl252740252774%_))
                                           (let ((_%$%e252741252777%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl252740252774%_))))
                                             (let ((_%$%tl252743252782%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e252741252777%_)))
                                                   (_%$%hd252742252780%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e252741252777%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl252743252782%_))
                                                   (_%__kont257852257853%_
                                                    _%$%hd252742252780%_
                                                    _%$%hd252739252772%_
                                                    _%$%hd252647253140%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g252638252748%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g252638252748%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g252638252748%_)))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl252685252971%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl252648253142%_))
                           (let ((_%$%e252723252866%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl252648253142%_))))
                             (let ((_%$%tl252725252871%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e252723252866%_)))
                                   (_%$%hd252724252869%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e252723252866%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl252725252871%_))
                                   (let ((_%$%e252726252874%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl252725252871%_))))
                                     (let ((_%$%tl252728252879%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e252726252874%_)))
                                           (_%$%hd252727252877%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e252726252874%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl252728252879%_))
                                           (_%__match258051258052%_
                                            _%$%e252643253129%_
                                            _%$%hd252644253132%_
                                            _%$%tl252645253134%_
                                            _%$%e252646253137%_
                                            _%$%hd252647253140%_
                                            _%$%tl252648253142%_
                                            _%$%e252649253145%_
                                            _%$%hd252650253148%_
                                            _%$%tl252651253150%_
                                            _%$%e252674252942%_
                                            _%$%hd252675252945%_
                                            _%$%tl252676252947%_
                                            _%$%e252677252950%_
                                            _%$%hd252678252953%_
                                            _%$%tl252679252955%_
                                            _%$%e252680252958%_
                                            _%$%hd252681252961%_
                                            _%$%tl252682252963%_
                                            _%$%e252683252966%_
                                            _%$%hd252684252969%_
                                            _%$%tl252685252971%_
                                            _%$%e252723252866%_
                                            _%$%hd252724252869%_
                                            _%$%tl252725252871%_
                                            _%$%e252726252874%_
                                            _%$%hd252727252877%_
                                            _%$%tl252728252879%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g252638252748%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g252638252748%_)))))
                           (let () (declare (not safe)) (_%$%g252638252748%_)))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl252648253142%_))
                           (let ((_%$%e252738252769%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl252648253142%_))))
                             (let ((_%$%tl252740252774%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e252738252769%_)))
                                   (_%$%hd252739252772%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e252738252769%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl252740252774%_))
                                   (let ((_%$%e252741252777%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl252740252774%_))))
                                     (let ((_%$%tl252743252782%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e252741252777%_)))
                                           (_%$%hd252742252780%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e252741252777%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl252743252782%_))
                                           (_%__kont257852257853%_
                                            _%$%hd252742252780%_
                                            _%$%hd252739252772%_
                                            _%$%hd252647253140%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g252638252748%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g252638252748%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g252638252748%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl252648253142%_))
                                                       (let ((_%$%e252738252769%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl252648253142%_))))
                 (let ((_%$%tl252740252774%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e252738252769%_)))
                       (_%$%hd252739252772%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e252738252769%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl252740252774%_))
                       (let ((_%$%e252741252777%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl252740252774%_))))
                         (let ((_%$%tl252743252782%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e252741252777%_)))
                               (_%$%hd252742252780%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e252741252777%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl252743252782%_))
                               (_%__kont257852257853%_
                                _%$%hd252742252780%_
                                _%$%hd252739252772%_
                                _%$%hd252647253140%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g252638252748%_)))))
                       (let () (declare (not safe)) (_%$%g252638252748%_)))))
               (let () (declare (not safe)) (_%$%g252638252748%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl252648253142%_))
                                                   (let ((_%$%e252738252769%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl252648253142%_))))
                                                     (let ((_%$%tl252740252774%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e252738252769%_)))
                                                           (_%$%hd252739252772%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e252738252769%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl252740252774%_))
                                                           (let ((_%$%e252741252777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl252740252774%_))))
                     (let ((_%$%tl252743252782%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e252741252777%_)))
                           (_%$%hd252742252780%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e252741252777%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl252743252782%_))
                           (_%__kont257852257853%_
                            _%$%hd252742252780%_
                            _%$%hd252739252772%_
                            _%$%hd252647253140%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g252638252748%_)))))
                   (let () (declare (not safe)) (_%$%g252638252748%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g252638252748%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl252648253142%_))
                                           (let ((_%$%e252738252769%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl252648253142%_))))
                                             (let ((_%$%tl252740252774%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e252738252769%_)))
                                                   (_%$%hd252739252772%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e252738252769%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl252740252774%_))
                                                   (let ((_%$%e252741252777%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl252740252774%_))))
                                                     (let ((_%$%tl252743252782%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e252741252777%_)))
                                                           (_%$%hd252742252780%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e252741252777%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl252743252782%_))
                                                           (_%__kont257852257853%_
                                                            _%$%hd252742252780%_
                                                            _%$%hd252739252772%_
                                                            _%$%hd252647253140%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g252638252748%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g252638252748%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g252638252748%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl252648253142%_))
                                       (let ((_%$%e252738252769%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl252648253142%_))))
                                         (let ((_%$%tl252740252774%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e252738252769%_)))
                                               (_%$%hd252739252772%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e252738252769%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl252740252774%_))
                                               (let ((_%$%e252741252777%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl252740252774%_))))
                                                 (let ((_%$%tl252743252782%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e252741252777%_)))
                                                       (_%$%hd252742252780%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e252741252777%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl252743252782%_))
                                                       (_%__kont257852257853%_
                                                        _%$%hd252742252780%_
                                                        _%$%hd252739252772%_
                                                        _%$%hd252647253140%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g252638252748%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g252638252748%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g252638252748%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl252648253142%_))
                                   (let ((_%$%e252738252769%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl252648253142%_))))
                                     (let ((_%$%tl252740252774%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e252738252769%_)))
                                           (_%$%hd252739252772%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e252738252769%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl252740252774%_))
                                           (let ((_%$%e252741252777%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl252740252774%_))))
                                             (let ((_%$%tl252743252782%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e252741252777%_)))
                                                   (_%$%hd252742252780%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e252741252777%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl252743252782%_))
                                                   (_%__kont257852257853%_
                                                    _%$%hd252742252780%_
                                                    _%$%hd252739252772%_
                                                    _%$%hd252647253140%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g252638252748%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g252638252748%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g252638252748%_))))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl252648253142%_))
                           (let ((_%$%e252738252769%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl252648253142%_))))
                             (let ((_%$%tl252740252774%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e252738252769%_)))
                                   (_%$%hd252739252772%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e252738252769%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl252740252774%_))
                                   (let ((_%$%e252741252777%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl252740252774%_))))
                                     (let ((_%$%tl252743252782%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e252741252777%_)))
                                           (_%$%hd252742252780%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e252741252777%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl252743252782%_))
                                           (_%__kont257852257853%_
                                            _%$%hd252742252780%_
                                            _%$%hd252739252772%_
                                            _%$%hd252647253140%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g252638252748%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g252638252748%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g252638252748%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%$%tl252648253142%_))
                   (let ((_%$%e252738252769%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl252648253142%_))))
                     (let ((_%$%tl252740252774%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e252738252769%_)))
                           (_%$%hd252739252772%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e252738252769%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl252740252774%_))
                           (let ((_%$%e252741252777%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl252740252774%_))))
                             (let ((_%$%tl252743252782%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e252741252777%_)))
                                   (_%$%hd252742252780%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e252741252777%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl252743252782%_))
                                   (_%__kont257852257853%_
                                    _%$%hd252742252780%_
                                    _%$%hd252739252772%_
                                    _%$%hd252647253140%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g252638252748%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g252638252748%_)))))
                   (let () (declare (not safe)) (_%$%g252638252748%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl252648253142%_))
                                                       (let ((_%$%e252738252769%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl252648253142%_))))
                 (let ((_%$%tl252740252774%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e252738252769%_)))
                       (_%$%hd252739252772%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e252738252769%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl252740252774%_))
                       (let ((_%$%e252741252777%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl252740252774%_))))
                         (let ((_%$%tl252743252782%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e252741252777%_)))
                               (_%$%hd252742252780%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e252741252777%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl252743252782%_))
                               (_%__kont257852257853%_
                                _%$%hd252742252780%_
                                _%$%hd252739252772%_
                                _%$%hd252647253140%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g252638252748%_)))))
                       (let () (declare (not safe)) (_%$%g252638252748%_)))))
               (let () (declare (not safe)) (_%$%g252638252748%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl252648253142%_))
                                               (let ((_%$%e252738252769%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl252648253142%_))))
                                                 (let ((_%$%tl252740252774%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e252738252769%_)))
                                                       (_%$%hd252739252772%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e252738252769%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl252740252774%_))
                                                       (let ((_%$%e252741252777%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl252740252774%_))))
                 (let ((_%$%tl252743252782%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e252741252777%_)))
                       (_%$%hd252742252780%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e252741252777%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl252743252782%_))
                       (_%__kont257852257853%_
                        _%$%hd252742252780%_
                        _%$%hd252739252772%_
                        _%$%hd252647253140%_)
                       (let () (declare (not safe)) (_%$%g252638252748%_)))))
               (let () (declare (not safe)) (_%$%g252638252748%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g252638252748%_))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl252648253142%_))
                                       (let ((_%$%e252738252769%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl252648253142%_))))
                                         (let ((_%$%tl252740252774%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e252738252769%_)))
                                               (_%$%hd252739252772%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e252738252769%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl252740252774%_))
                                               (let ((_%$%e252741252777%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl252740252774%_))))
                                                 (let ((_%$%tl252743252782%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e252741252777%_)))
                                                       (_%$%hd252742252780%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e252741252777%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl252743252782%_))
                                                       (_%__kont257852257853%_
                                                        _%$%hd252742252780%_
                                                        _%$%hd252739252772%_
                                                        _%$%hd252647253140%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g252638252748%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g252638252748%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g252638252748%_))))))
                           (let ()
                             (declare (not safe))
                             (_%$%g252638252748%_)))))
                   (let () (declare (not safe)) (_%$%g252638252748%_)))))))))
    (define gxc#check-contract-violation!
      (lambda (_%stx252500%_ _%expr252501%_)
        (let* ((_%__stx258080258081%_ _%expr252501%_)
               (_%$%g252504252534%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx258080258081%_)))))
          (let ((_%__kont258082258083%_
                 (lambda (_%$%g252506252602%_
                          _%$%g252507252603%_
                          _%$%g252508252604%_)
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"contract violation"
                      _%stx252500%_
                      _%$%g252508252604%_
                      _%$%g252507252603%_
                      _%$%g252506252602%_))))
                (_%__kont258084258085%_ (lambda () _%expr252501%_)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx258080258081%_))
                (let ((_%$%e252509252546%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx258080258081%_))))
                  (let ((_%$%tl252511252551%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e252509252546%_)))
                        (_%$%hd252510252549%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e252509252546%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd252510252549%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq?
                               '%#begin-annotation
                               _%$%hd252510252549%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl252511252551%_))
                                (let ((_%$%e252512252554%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl252511252551%_))))
                                  (let ((_%$%tl252514252559%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e252512252554%_)))
                                        (_%$%hd252513252557%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e252512252554%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd252513252557%_))
                                        (let ((_%$%e252515252562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd252513252557%_))))
                                          (let ((_%$%tl252517252567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e252515252562%_)))
                                                (_%$%hd252516252565%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e252515252562%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd252516252565%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '@contract-violation
                                                       _%$%hd252516252565%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl252517252567%_))
                                                        (let ((_%$%e252518252570%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl252517252567%_))))
                  (let ((_%$%tl252520252575%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e252518252570%_)))
                        (_%$%hd252519252573%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e252518252570%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl252520252575%_))
                        (let ((_%$%e252521252578%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl252520252575%_))))
                          (let ((_%$%tl252523252583%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e252521252578%_)))
                                (_%$%hd252522252581%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e252521252578%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl252523252583%_))
                                (let ((_%$%e252524252586%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl252523252583%_))))
                                  (let ((_%$%tl252526252591%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e252524252586%_)))
                                        (_%$%hd252525252589%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e252524252586%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl252526252591%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl252514252559%_))
                                            (let ((_%$%e252527252594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl252514252559%_))))
                                              (let ((_%$%tl252529252599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e252527252594%_)))
                                                    (_%$%hd252528252597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e252527252594%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl252529252599%_))
                                                    (_%__kont258082258083%_
                                                     _%$%hd252525252589%_
                                                     _%$%hd252522252581%_
                                                     _%$%hd252519252573%_)
                                                    (_%__kont258084258085%_))))
                                            (_%__kont258084258085%_))
                                        (_%__kont258084258085%_))))
                                (_%__kont258084258085%_))))
                        (_%__kont258084258085%_))))
                (_%__kont258084258085%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont258084258085%_))
                                                (_%__kont258084258085%_))))
                                        (_%__kont258084258085%_))))
                                (_%__kont258084258085%_))
                            (_%__kont258084258085%_))
                        (_%__kont258084258085%_))))
                (_%__kont258084258085%_))))))))
