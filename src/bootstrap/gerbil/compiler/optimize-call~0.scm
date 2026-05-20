(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1779274781)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp255970 (list gxc#::basic-xform::t))
            (__tmp255969 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp255970
         '()
         __tmp255969
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args255247%_
        (apply make-instance gxc#::optimize-call::t _%$args255247%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp255971
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
        (__make-atomic-promise __tmp255971)))
    (define gxc#apply-optimize-call
      (lambda (_%stx255239%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self255242%_
                (let ((__obj255961
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj255961))
               (__tmp255972
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self255242%_ _%stx255239%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp255972
           gxc#current-compile-method
           _%self255242%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp255974 (list gxc#::void::t))
            (__tmp255973 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp255974
         '()
         __tmp255973
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args255236%_
        (apply make-instance gxc#::check-return-type::t _%$args255236%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp255975
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
        (__make-atomic-promise __tmp255975)))
    (define gxc#apply-check-return-type
      (lambda (_%stx255228%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self255231%_
                (let ((__obj255963
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj255963))
               (__tmp255976
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self255231%_ _%stx255228%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp255976
           gxc#current-compile-method
           _%self255231%_))))
    (define gxc#optimize-call%
      (lambda (_%self254835%_ _%stx254836%_)
        (let* ((_%__stx255316255317%_ _%stx254836%_)
               (_%g254839254885%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255316255317%_)))))
          (let ((_%__kont255318255319%_
                 (lambda (_%g254841255024%_ _%g254842255025%_)
                   (let* ((_%rator-id255045%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g254842255025%_)))
                          (_%rator-type255047%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id255045%_))))
                     (if (or (not _%rator-type255047%_)
                             (eq? (##structure-ref
                                   _%rator-type255047%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self254835%_ _%stx254836%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type255047%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp255977
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type255047%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id255045%_
                                  '" => "
                                  _%rator-type255047%_
                                  '" "
                                  __tmp255977))
                               (let* ((_%optimized255062%_
                                       (let ((__method255964
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type255047%_
                                                 'optimize-call))))
                                         (if __method255964
                                             (let ((__tmp255978
                                                    (let ((__tmp255979
                                                           (lambda (_%g255054255057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g255055255059%_)
                     (cons _%g255054255057%_ _%g255055255059%_))))
              (declare (not safe))
              (foldr__0 __tmp255979 '() _%g254841255024%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method255964
                                                _%rator-type255047%_
                                                _%self254835%_
                                                _%stx254836%_
                                                __tmp255978))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type255047%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx255264255265%_
                                       _%optimized255062%_)
                                      (_%g255065255094%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx255264255265%_)))))
                                 (let ((_%__kont255266255267%_
                                        (lambda (_%g255067255160%_
                                                 _%g255068255161%_)
                                          (let* ((_%optimized-rator-id255188%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g255068255161%_)))
                                                 (_%rator-type255193%_
                                                  (let ((_%$e255190%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id255188%_))))
                                                    (if _%$e255190%_
                                                        _%$e255190%_
                                                        _%rator-type255047%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type255193%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id255188%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type255193%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type255193%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized255062%_
                                                (let ((__tmp255980
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g255068255161%_ '()))
                           (let ((__tmp255981
                                  (lambda (_%g255201255204%_ _%g255202255206%_)
                                    (cons _%g255201255204%_
                                          _%g255202255206%_))))
                             (declare (not safe))
                             (foldr__0 __tmp255981 '() _%g255067255160%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp255980
                                                   _%stx254836%_))))))
                                       (_%__kont255270255271%_
                                        (lambda () _%optimized255062%_)))
                                   (let ((_%__match255313255314%_
                                          (lambda (_%e255069255106%_
                                                   _%hd255070255109%_
                                                   _%tl255071255111%_
                                                   _%e255072255114%_
                                                   _%hd255073255117%_
                                                   _%tl255074255119%_
                                                   _%e255075255122%_
                                                   _%hd255076255125%_
                                                   _%tl255077255127%_
                                                   _%e255078255130%_
                                                   _%hd255079255133%_
                                                   _%tl255080255135%_
                                                   _%__splice255268255269%_
                                                   _%target255081255138%_
                                                   _%tl255083255140%_)
                                            (letrec ((_%loop255084255143%_
                                                      (lambda (_%hd255082255146%_
                                                               _%arg255088255148%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd255082255146%_))
                                                            (let ((_%e255085255150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd255082255146%_))))
                      (let ((_%lp-tl255087255155%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e255085255150%_)))
                            (_%lp-hd255086255153%_
                             (let ()
                               (declare (not safe))
                               (##car _%e255085255150%_))))
                        (_%loop255084255143%_
                         _%lp-tl255087255155%_
                         (cons _%lp-hd255086255153%_ _%arg255088255148%_))))
                    (let ((_%arg255089255158%_ (reverse _%arg255088255148%_)))
                      (_%__kont255266255267%_
                       _%arg255089255158%_
                       _%hd255079255133%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop255084255143%_
                                               _%target255081255138%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx255264255265%_))
                                         (let ((_%e255069255106%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx255264255265%_))))
                                           (let ((_%tl255071255111%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e255069255106%_)))
                                                 (_%hd255070255109%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e255069255106%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd255070255109%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd255070255109%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl255071255111%_))
                                                         (let ((_%e255072255114%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl255071255111%_))))
                   (let ((_%tl255074255119%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e255072255114%_)))
                         (_%hd255073255117%_
                          (let ()
                            (declare (not safe))
                            (##car _%e255072255114%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd255073255117%_))
                         (let ((_%e255075255122%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd255073255117%_))))
                           (let ((_%tl255077255127%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e255075255122%_)))
                                 (_%hd255076255125%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e255075255122%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd255076255125%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd255076255125%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl255077255127%_))
                                         (let ((_%e255078255130%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl255077255127%_))))
                                           (let ((_%tl255080255135%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e255078255130%_)))
                                                 (_%hd255079255133%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e255078255130%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl255080255135%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl255074255119%_))
                                                     (let ((_%__splice255268255269%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl255074255119%_
                                                               '0))))
                                                       (let ((_%tl255083255140%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice255268255269%_ '1)))
                     (_%target255081255138%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice255268255269%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl255083255140%_))
                     (_%__match255313255314%_
                      _%e255069255106%_
                      _%hd255070255109%_
                      _%tl255071255111%_
                      _%e255072255114%_
                      _%hd255073255117%_
                      _%tl255074255119%_
                      _%e255075255122%_
                      _%hd255076255125%_
                      _%tl255077255127%_
                      _%e255078255130%_
                      _%hd255079255133%_
                      _%tl255080255135%_
                      _%__splice255268255269%_
                      _%target255081255138%_
                      _%tl255083255140%_)
                     (_%__kont255270255271%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont255270255271%_))
                                                 (_%__kont255270255271%_))))
                                         (_%__kont255270255271%_))
                                     (_%__kont255270255271%_))
                                 (_%__kont255270255271%_))))
                         (_%__kont255270255271%_))))
                 (_%__kont255270255271%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont255270255271%_))
                                                 (_%__kont255270255271%_))))
                                         (_%__kont255270255271%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type255047%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type255047%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp255982
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g254842255025%_
                                                                '()))
                                                    (map (lambda (_%g255212255214%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self254835%_
                                                              _%g255212255214%_)))
                                                         (let ((__tmp255983
                                                                (lambda (_%g255216255219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g255217255221%_)
                          (cons _%g255216255219%_ _%g255217255221%_))))
                   (declare (not safe))
                   (foldr__0 __tmp255983 '() _%g254841255024%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp255982
                                    _%stx254836%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx254836%_
                                    _%rator-type255047%_))))))))
                (_%__kont255322255323%_
                 (lambda (_%g254864254928%_ _%g254865254929%_)
                   (let ((_%rator-type254946%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g254865254929%_))))
                     (if (and _%rator-type254946%_
                              (eq? (##structure-ref
                                    _%rator-type254946%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type254946%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type254946%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type254946%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp255984
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self254835%_
                                               _%g254865254929%_))
                                            (map (lambda (_%g254948254950%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self254835%_
                                                      _%g254948254950%_)))
                                                 (let ((__tmp255985
                                                        (lambda (_%g254952254955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g254953254957%_)
                  (cons _%g254952254955%_ _%g254953254957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp255985
                                                    '()
                                                    _%g254864254928%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp255984 _%stx254836%_))
                         (if (or (not _%rator-type254946%_)
                                 (let ((__tmp255986
                                        (##structure-ref
                                         _%rator-type254946%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp255986 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self254835%_ _%stx254836%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx254836%_
                                _%rator-type254946%_))))))))
            (let* ((_%__match255383255384%_
                    (lambda (_%e254866254890%_
                             _%hd254867254893%_
                             _%tl254868254895%_
                             _%e254869254898%_
                             _%hd254870254901%_
                             _%tl254871254903%_
                             _%__splice255324255325%_
                             _%target254872254906%_
                             _%tl254874254908%_)
                      (letrec ((_%loop254875254911%_
                                (lambda (_%hd254873254914%_
                                         _%rand254879254916%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd254873254914%_))
                                      (let ((_%e254876254918%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd254873254914%_))))
                                        (let ((_%lp-tl254878254923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e254876254918%_)))
                                              (_%lp-hd254877254921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e254876254918%_))))
                                          (_%loop254875254911%_
                                           _%lp-tl254878254923%_
                                           (cons _%lp-hd254877254921%_
                                                 _%rand254879254916%_))))
                                      (let ((_%rand254880254926%_
                                             (reverse _%rand254879254916%_)))
                                        (_%__kont255322255323%_
                                         _%rand254880254926%_
                                         _%hd254870254901%_))))))
                        (_%loop254875254911%_ _%target254872254906%_ '()))))
                   (_%__match255363255364%_
                    (lambda (_%e254843254970%_
                             _%hd254844254973%_
                             _%tl254845254975%_
                             _%e254846254978%_
                             _%hd254847254981%_
                             _%tl254848254983%_
                             _%e254849254986%_
                             _%hd254850254989%_
                             _%tl254851254991%_
                             _%e254852254994%_
                             _%hd254853254997%_
                             _%tl254854254999%_
                             _%__splice255320255321%_
                             _%target254855255002%_
                             _%tl254857255004%_)
                      (letrec ((_%loop254858255007%_
                                (lambda (_%hd254856255010%_
                                         _%rand254862255012%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd254856255010%_))
                                      (let ((_%e254859255014%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd254856255010%_))))
                                        (let ((_%lp-tl254861255019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e254859255014%_)))
                                              (_%lp-hd254860255017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e254859255014%_))))
                                          (_%loop254858255007%_
                                           _%lp-tl254861255019%_
                                           (cons _%lp-hd254860255017%_
                                                 _%rand254862255012%_))))
                                      (let ((_%rand254863255022%_
                                             (reverse _%rand254862255012%_)))
                                        (_%__kont255318255319%_
                                         _%rand254863255022%_
                                         _%hd254853254997%_))))))
                        (_%loop254858255007%_ _%target254855255002%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx255316255317%_))
                  (let ((_%e254843254970%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx255316255317%_))))
                    (let ((_%tl254845254975%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e254843254970%_)))
                          (_%hd254844254973%_
                           (let ()
                             (declare (not safe))
                             (##car _%e254843254970%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl254845254975%_))
                          (let ((_%e254846254978%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl254845254975%_))))
                            (let ((_%tl254848254983%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e254846254978%_)))
                                  (_%hd254847254981%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e254846254978%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd254847254981%_))
                                  (let ((_%e254849254986%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd254847254981%_))))
                                    (let ((_%tl254851254991%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e254849254986%_)))
                                          (_%hd254850254989%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e254849254986%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd254850254989%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd254850254989%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl254851254991%_))
                                                  (let ((_%e254852254994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl254851254991%_))))
                                                    (let ((_%tl254854254999%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e254852254994%_)))
                                                          (_%hd254853254997%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e254852254994%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl254854254999%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl254848254983%_))
                      (let ((_%__splice255320255321%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl254848254983%_
                                '0))))
                        (let ((_%tl254857255004%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice255320255321%_ '1)))
                              (_%target254855255002%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice255320255321%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl254857255004%_))
                              (_%__match255363255364%_
                               _%e254843254970%_
                               _%hd254844254973%_
                               _%tl254845254975%_
                               _%e254846254978%_
                               _%hd254847254981%_
                               _%tl254848254983%_
                               _%e254849254986%_
                               _%hd254850254989%_
                               _%tl254851254991%_
                               _%e254852254994%_
                               _%hd254853254997%_
                               _%tl254854254999%_
                               _%__splice255320255321%_
                               _%target254855255002%_
                               _%tl254857255004%_)
                              (let ()
                                (declare (not safe))
                                (_%g254839254885%_)))))
                      (let () (declare (not safe)) (_%g254839254885%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl254848254983%_))
                      (let ((_%__splice255324255325%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl254848254983%_
                                '0))))
                        (let ((_%tl254874254908%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice255324255325%_ '1)))
                              (_%target254872254906%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice255324255325%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl254874254908%_))
                              (_%__match255383255384%_
                               _%e254843254970%_
                               _%hd254844254973%_
                               _%tl254845254975%_
                               _%e254846254978%_
                               _%hd254847254981%_
                               _%tl254848254983%_
                               _%__splice255324255325%_
                               _%target254872254906%_
                               _%tl254874254908%_)
                              (let ()
                                (declare (not safe))
                                (_%g254839254885%_)))))
                      (let () (declare (not safe)) (_%g254839254885%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl254848254983%_))
                                                      (let ((_%__splice255324255325%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl254848254983%_
                        '0))))
                (let ((_%tl254874254908%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice255324255325%_ '1)))
                      (_%target254872254906%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice255324255325%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl254874254908%_))
                      (_%__match255383255384%_
                       _%e254843254970%_
                       _%hd254844254973%_
                       _%tl254845254975%_
                       _%e254846254978%_
                       _%hd254847254981%_
                       _%tl254848254983%_
                       _%__splice255324255325%_
                       _%target254872254906%_
                       _%tl254874254908%_)
                      (let () (declare (not safe)) (_%g254839254885%_)))))
              (let () (declare (not safe)) (_%g254839254885%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl254848254983%_))
                                                  (let ((_%__splice255324255325%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl254848254983%_
                                                            '0))))
                                                    (let ((_%tl254874254908%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice255324255325%_
                                                              '1)))
                                                          (_%target254872254906%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice255324255325%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl254874254908%_))
                                                          (_%__match255383255384%_
                                                           _%e254843254970%_
                                                           _%hd254844254973%_
                                                           _%tl254845254975%_
                                                           _%e254846254978%_
                                                           _%hd254847254981%_
                                                           _%tl254848254983%_
                                                           _%__splice255324255325%_
                                                           _%target254872254906%_
                                                           _%tl254874254908%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g254839254885%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g254839254885%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl254848254983%_))
                                              (let ((_%__splice255324255325%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl254848254983%_
                                                        '0))))
                                                (let ((_%tl254874254908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice255324255325%_
                                                          '1)))
                                                      (_%target254872254906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice255324255325%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl254874254908%_))
                                                      (_%__match255383255384%_
                                                       _%e254843254970%_
                                                       _%hd254844254973%_
                                                       _%tl254845254975%_
                                                       _%e254846254978%_
                                                       _%hd254847254981%_
                                                       _%tl254848254983%_
                                                       _%__splice255324255325%_
                                                       _%target254872254906%_
                                                       _%tl254874254908%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g254839254885%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g254839254885%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl254848254983%_))
                                      (let ((_%__splice255324255325%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl254848254983%_
                                                '0))))
                                        (let ((_%tl254874254908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice255324255325%_
                                                  '1)))
                                              (_%target254872254906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice255324255325%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl254874254908%_))
                                              (_%__match255383255384%_
                                               _%e254843254970%_
                                               _%hd254844254973%_
                                               _%tl254845254975%_
                                               _%e254846254978%_
                                               _%hd254847254981%_
                                               _%tl254848254983%_
                                               _%__splice255324255325%_
                                               _%target254872254906%_
                                               _%tl254874254908%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g254839254885%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g254839254885%_))))))
                          (let () (declare (not safe)) (_%g254839254885%_)))))
                  (let () (declare (not safe)) (_%g254839254885%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self254797%_ _%ctx254798%_ _%stx254799%_ _%args254800%_)
        (let ((_%self254803%_ _%self254797%_))
          (if (let ((__method255965
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self254803%_ 'check-arguments))))
                (if __method255965
                    (let ()
                      (declare (not safe))
                      (__method255965
                       _%self254803%_
                       _%ctx254798%_
                       _%stx254799%_
                       _%args254800%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self254803%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature254813%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254803%_ '2 '#f '#f)))
                     (_%signature254815%_ _%signature254813%_)
                     (_%$e254825%_
                      (if _%signature254815%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature254815%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e254825%_
                    ((lambda (_%unchecked254828%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked254828%_))
                           (let ((__tmp255987
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked254828%_
                                                          '()))
                                              (map (lambda (_%g254829254831%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx254798%_
                                                        _%g254829254831%_)))
                                                   _%args254800%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp255987
                              _%stx254799%_
                              _%ctx254798%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx254798%_ _%stx254799%_))))
                     _%$e254825%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx254798%_ _%stx254799%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx254798%_ _%stx254799%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass255249 __method-table255250)
        (let ((__check-arguments255251
               (let ((__tmp255988
                      (lambda ()
                        (let ((__method255252
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table255250
                                  'check-arguments
                                  '#f))))
                          (if __method255252
                              __method255252
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp255988))))
          (lambda (_%self254797%_ _%ctx254798%_ _%stx254799%_ _%args254800%_)
            (let ((_%self254803%_ _%self254797%_))
              (if ((force __check-arguments255251)
                   _%self254803%_
                   _%ctx254798%_
                   _%stx254799%_
                   _%args254800%_)
                  (let* ((_%signature254813%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self254803%_
                             '2
                             '#f
                             '#f)))
                         (_%signature254815%_ _%signature254813%_)
                         (_%$e254825%_
                          (if _%signature254815%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature254815%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e254825%_
                        ((lambda (_%unchecked254828%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked254828%_))
                               (let ((__tmp255989
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked254828%_
                                                              '()))
                                                  (map (lambda (_%g254829254831%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx254798%_
                                                            _%g254829254831%_)))
                                                       _%args254800%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp255989
                                  _%stx254799%_
                                  _%ctx254798%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx254798%_
                                  _%stx254799%_))))
                         _%$e254825%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx254798%_ _%stx254799%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx254798%_ _%stx254799%_))))))))
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
      (lambda (_%self254550%_ _%ctx254551%_ _%stx254552%_ _%args254553%_)
        (let* ((_%self254556%_ _%self254550%_)
               (_%signature254565254567%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254556%_ '2 '#f '#f))))
          (if _%signature254565254567%_
              (let* ((_%signature254569%_ _%signature254565254567%_)
                     (_%argument-types254570254572%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature254569%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types254570254572%_
                    (let* ((_%argument-types254574%_
                            _%argument-types254570254572%_)
                           (_%argument-types254579%_
                            (let ((__tmp255990
                                   (lambda (_%t254577%_)
                                     (if _%t254577%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx254552%_
                                            _%t254577%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp255990
                               _%argument-types254574%_))))
                      (let _%loop254581%_ ((_%rest-args254583%_ _%args254553%_)
                                           (_%rest-types254584%_
                                            _%argument-types254579%_)
                                           (_%result254585%_ '#t))
                        (let* ((_%rest-args254586254594%_ _%rest-args254583%_)
                               (_%else254588254602%_
                                (lambda () _%result254585%_))
                               (_%K254590254663%_
                                (lambda (_%rest-args254605%_ _%arg254606%_)
                                  (let* ((_%rest-types254607254618%_
                                          _%rest-types254584%_)
                                         (_%E254611254622%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types254607254618%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K254614254651%_
                                           (lambda (_%rest-types254648%_
                                                    _%type254649%_)
                                             (_%loop254581%_
                                              _%rest-args254605%_
                                              _%rest-types254648%_
                                              (if (gxc#check-expression-type!
                                                   _%stx254552%_
                                                   _%arg254606%_
                                                   _%type254649%_)
                                                  _%result254585%_
                                                  '#f))))
                                          (_%K254613254642%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx254552%_
                                                _%argument-types254579%_))))
                                          (_%K254612254632%_
                                           (lambda (_%tail-type254626%_)
                                             (if (let ((__tmp255991
                                                        (lambda (_%g254627254629%_)
                                                          (gxc#check-expression-type!
                                                           _%stx254552%_
                                                           _%g254627254629%_
                                                           _%tail-type254626%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp255991
                                                    _%rest-args254605%_))
                                                 _%result254585%_
                                                 '#f))))
                                      (let ((_%try-match254609254645%_
                                             (lambda ()
                                               (if (null? _%rest-types254607254618%_)
                                                   (_%K254613254642%_)
                                                   (let ((_%tail-type254635%_
                                                          _%rest-types254607254618%_))
                                                     (_%K254612254632%_
                                                      _%tail-type254635%_))))))
                                        (if (pair? _%rest-types254607254618%_)
                                            (let ((_%tl254616254656%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types254607254618%_)))
                                                  (_%hd254615254654%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types254607254618%_))))
                                              (let ((_%type254659%_
                                                     _%hd254615254654%_)
                                                    (_%rest-types254661%_
                                                     _%tl254616254656%_))
                                                (_%K254614254651%_
                                                 _%rest-types254661%_
                                                 _%type254659%_)))
                                            (_%try-match254609254645%_))))))))
                          (if (pair? _%rest-args254586254594%_)
                              (let ((_%hd254591254666%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args254586254594%_)))
                                    (_%tl254592254668%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args254586254594%_))))
                                (let* ((_%arg254671%_ _%hd254591254666%_)
                                       (_%rest-args254673%_
                                        _%tl254592254668%_))
                                  (_%K254590254663%_
                                   _%rest-args254673%_
                                   _%arg254671%_)))
                              (_%else254588254602%_)))))
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
      (lambda (_%self254361%_ _%ctx254362%_ _%stx254363%_ _%args254364%_)
        (let* ((_%self254367%_ _%self254361%_)
               (_%g254377254387%_
                (lambda (_%g254378254384%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g254378254384%_))))
               (_%g254376254425%_
                (lambda (_%g254378254390%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g254378254390%_))
                      (let ((_%e254380254392%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g254378254390%_))))
                        (let ((_%hd254381254395%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254380254392%_)))
                              (_%tl254382254397%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254380254392%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl254382254397%_))
                              ((lambda (_%g254379254400%_)
                                 (let* ((_%klass254412%_
                                         (let ((__tmp255992
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self254367%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx254363%_
                                            __tmp255992)))
                                        (_%object254414%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx254362%_
                                            _%g254379254400%_)))
                                        (_%instance?254419%_
                                         (let ((_%$e254416%_
                                                (gxc#expression-type?
                                                 _%object254414%_
                                                 _%klass254412%_)))
                                           (if _%$e254416%_
                                               _%$e254416%_
                                               (gxc#expression-type?
                                                _%g254379254400%_
                                                _%klass254412%_)))))
                                   (if _%instance?254419%_
                                       (let ((__tmp255993
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object254414%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g254379254400%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object254414%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255993
                                          _%stx254363%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx254362%_
                                          _%stx254363%_)))))
                               _%hd254381254395%_)
                              (_%g254377254387%_ _%g254378254390%_))))
                      (_%g254377254387%_ _%g254378254390%_)))))
          (_%g254376254425%_ _%args254364%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self254157%_ _%ctx254158%_ _%stx254159%_ _%args254160%_)
        (let* ((_%self254163%_ _%self254157%_)
               (_%g254173254183%_
                (lambda (_%g254174254180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g254174254180%_))))
               (_%g254172254236%_
                (lambda (_%g254174254186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g254174254186%_))
                      (let ((_%e254176254188%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g254174254186%_))))
                        (let ((_%hd254177254191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254176254188%_)))
                              (_%tl254178254193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254176254188%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl254178254193%_))
                              ((lambda (_%g254175254196%_)
                                 (let* ((_%klass254208%_
                                         (let ((__tmp255994
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self254163%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx254159%_
                                            __tmp255994)))
                                        (_%object254210%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx254158%_
                                            _%g254175254196%_)))
                                        (_%instance?254215%_
                                         (let ((_%$e254212%_
                                                (gxc#expression-type?
                                                 _%object254210%_
                                                 _%klass254208%_)))
                                           (if _%$e254212%_
                                               _%$e254212%_
                                               (gxc#expression-type?
                                                _%g254175254196%_
                                                _%klass254208%_))))
                                        (_%klass254218%_ _%klass254208%_))
                                   (if _%instance?254215%_
                                       (let ((__tmp255995
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object254210%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g254175254196%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object254210%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255995
                                          _%stx254159%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass254218%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp255996
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass254218%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object254210%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp255996
                                              _%stx254159%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass254218%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp255997
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass254218%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object254210%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp255997
                                                  _%stx254159%_))
                                               (let ((__tmp255998
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self254163%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object254210%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp255998
                                                  _%stx254159%_)))))))
                               _%hd254177254191%_)
                              (_%g254173254183%_ _%g254174254186%_))))
                      (_%g254173254183%_ _%g254174254186%_)))))
          (_%g254172254236%_ _%args254160%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx253825%_)
        (let* ((_%__stx255393255394%_ _%stx253825%_)
               (_%g253830253871%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255393255394%_)))))
          (let ((_%__kont255395255396%_ (lambda () '#t))
                (_%__kont255397255398%_ (lambda () '#t))
                (_%__kont255399255400%_
                 (lambda (_%g253844253937%_ _%g253845253938%_)
                   (let ((_%rator-type253959253961%_
                          (let ((__tmp255999
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g253845253938%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp255999))))
                     (if _%rator-type253959253961%_
                         (let* ((_%rator-type253963%_
                                 _%rator-type253959253961%_)
                                (_%rator-signature253964253966%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type253963%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type253963%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature253964253966%_
                               (let* ((_%rator-signature253968%_
                                       _%rator-signature253964253966%_)
                                      (_%rator-effect253969253971%_
                                       (if _%rator-signature253968%_
                                           (##direct-structure-ref
                                            _%rator-signature253968%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect253969253971%_
                                     (let ((_%rator-effect253973%_
                                            _%rator-effect253969253971%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect253973%_)
                                               (equal? '(alloc)
                                                       _%rator-effect253973%_))
                                           (let ((__tmp256000
                                                  (let ((__tmp256001
                                                         (lambda (_%g253978253981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g253979253983%_)
                   (cons _%g253978253981%_ _%g253979253983%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp256001
                                                     '()
                                                     _%g253844253937%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp256000))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont255403255404%_ (lambda () '#f)))
            (let ((_%__match255482255483%_
                   (lambda (_%e253846253883%_
                            _%hd253847253886%_
                            _%tl253848253888%_
                            _%e253849253891%_
                            _%hd253850253894%_
                            _%tl253851253896%_
                            _%e253852253899%_
                            _%hd253853253902%_
                            _%tl253854253904%_
                            _%e253855253907%_
                            _%hd253856253910%_
                            _%tl253857253912%_
                            _%__splice255401255402%_
                            _%target253858253915%_
                            _%tl253860253917%_)
                     (letrec ((_%loop253861253920%_
                               (lambda (_%hd253859253923%_
                                        _%rand253865253925%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd253859253923%_))
                                     (let ((_%e253862253927%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd253859253923%_))))
                                       (let ((_%lp-tl253864253932%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e253862253927%_)))
                                             (_%lp-hd253863253930%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e253862253927%_))))
                                         (_%loop253861253920%_
                                          _%lp-tl253864253932%_
                                          (cons _%lp-hd253863253930%_
                                                _%rand253865253925%_))))
                                     (let ((_%rand253866253935%_
                                            (reverse _%rand253865253925%_)))
                                       (_%__kont255399255400%_
                                        _%rand253866253935%_
                                        _%hd253856253910%_))))))
                       (_%loop253861253920%_ _%target253858253915%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx255393255394%_))
                  (let ((_%e253832254014%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx255393255394%_))))
                    (let ((_%tl253834254019%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253832254014%_)))
                          (_%hd253833254017%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253832254014%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd253833254017%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd253833254017%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl253834254019%_))
                                  (let ((_%e253835254022%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl253834254019%_))))
                                    (let ((_%tl253837254027%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253835254022%_)))
                                          (_%hd253836254025%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253835254022%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl253837254027%_))
                                          (_%__kont255395255396%_)
                                          (_%__kont255403255404%_))))
                                  (_%__kont255403255404%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd253833254017%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl253834254019%_))
                                      (let ((_%e253841253999%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl253834254019%_))))
                                        (let ((_%tl253843254004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253841253999%_)))
                                              (_%hd253842254002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253841253999%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253843254004%_))
                                              (_%__kont255397255398%_)
                                              (_%__kont255403255404%_))))
                                      (_%__kont255403255404%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd253833254017%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl253834254019%_))
                                          (let ((_%e253849253891%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl253834254019%_))))
                                            (let ((_%tl253851253896%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e253849253891%_)))
                                                  (_%hd253850253894%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e253849253891%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd253850253894%_))
                                                  (let ((_%e253852253899%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd253850253894%_))))
                                                    (let ((_%tl253854253904%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e253852253899%_)))
                                                          (_%hd253853253902%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e253852253899%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd253853253902%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd253853253902%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl253854253904%_))
                          (let ((_%e253855253907%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl253854253904%_))))
                            (let ((_%tl253857253912%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253855253907%_)))
                                  (_%hd253856253910%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253855253907%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl253857253912%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl253851253896%_))
                                      (let ((_%__splice255401255402%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl253851253896%_
                                                '0))))
                                        (let ((_%tl253860253917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice255401255402%_
                                                  '1)))
                                              (_%target253858253915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice255401255402%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253860253917%_))
                                              (_%__match255482255483%_
                                               _%e253832254014%_
                                               _%hd253833254017%_
                                               _%tl253834254019%_
                                               _%e253849253891%_
                                               _%hd253850253894%_
                                               _%tl253851253896%_
                                               _%e253852253899%_
                                               _%hd253853253902%_
                                               _%tl253854253904%_
                                               _%e253855253907%_
                                               _%hd253856253910%_
                                               _%tl253857253912%_
                                               _%__splice255401255402%_
                                               _%target253858253915%_
                                               _%tl253860253917%_)
                                              (_%__kont255403255404%_))))
                                      (_%__kont255403255404%_))
                                  (_%__kont255403255404%_))))
                          (_%__kont255403255404%_))
                      (_%__kont255403255404%_))
                  (_%__kont255403255404%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont255403255404%_))))
                                          (_%__kont255403255404%_))
                                      (_%__kont255403255404%_))))
                          (_%__kont255403255404%_))))
                  (_%__kont255403255404%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx253820%_ _%klass253821%_)
        (let ((_%expr-type253823%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx253820%_))))
          (if _%expr-type253823%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type253823%_ _%klass253821%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx253798%_ _%expr253799%_ _%type253800%_)
        (if (not _%type253800%_)
            '#f
            (let ((_%$e253803%_
                   (eq? (##structure-ref _%type253800%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e253803%_
                  _%$e253803%_
                  (let ((_%expr-type253807%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr253799%_))))
                    (if (not _%expr-type253807%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type253807%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e253811%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type253807%_
                                      'gxc#!abort::t))))
                              (if _%$e253811%_
                                  _%$e253811%_
                                  (let ((_%$e253814%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type253807%_
                                            _%type253800%_))))
                                    (if _%$e253814%_
                                        _%$e253814%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type253800%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type253800%_
                                                   _%expr-type253807%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx253798%_
                                                   _%expr253799%_
                                                   _%expr-type253807%_
                                                   _%type253800%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self253612%_ _%ctx253613%_ _%stx253614%_ _%args253615%_)
        (let* ((_%self253618%_ _%self253612%_)
               (_%klass253628%_
                (let ((__tmp256002
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self253618%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx253614%_ __tmp256002)))
               (_%fields253630%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass253628%_
                           '5
                           '#f
                           '#f))))
               (_%args253636%_
                (map (lambda (_%g253631253633%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx253613%_ _%g253631253633%_)))
                     _%args253615%_))
               (_%inline-make-object253638%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self253618%_
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
                           _%self253618%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields253630%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass253641%_ _%klass253628%_)
               (_%$e253655%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass253641%_ '6 '#f '#f))))
          (if _%$e253655%_
              ((lambda (_%ctor253658%_)
                 (let ((_%$obj253660%_
                        (let ((__tmp256003
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp256003)))
                       (_%ctor-impl253661%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass253641%_
                           _%ctor253658%_))))
                   (let ((__tmp256004
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj253660%_ '())
                                                  (cons _%inline-make-object253638%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl253661%_
                                                            (let ((__tmp256005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl253661%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj253660%_ '()))
                                             _%args253636%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp256005
                       _%stx253614%_
                       _%ctx253613%_))
                    (let ((_%$ctor253663%_
                           (let ((__tmp256006
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp256006))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor253663%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self253618%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj253660%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor253658%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor253663%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor253663%_ '()))
                              (cons (cons '%#ref (cons _%$obj253660%_ '()))
                                    _%args253636%_)))
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
                             _%self253618%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor253658%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj253660%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp256004 _%stx253614%_))))
               _%$e253655%_)
              (let ((_%$e253665%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass253641%_
                        '10
                        '#f
                        '#f))))
                (if _%$e253665%_
                    ((lambda (_%metaclass253668%_)
                       (let* ((_%$obj253670%_
                               (let ((__tmp256007
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp256007)))
                              (_%metakons253672%_
                               (let ((__tmp256008
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx253614%_
                                         _%metaclass253668%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp256008
                                  'instance-init!)))
                              (__tmp256009
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj253670%_
                                                             '())
                                                       (cons _%inline-make-object253638%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons253672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp256010
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons253672%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self253618%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj253670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args253636%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp256010
                            _%stx253614%_
                            _%ctx253613%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self253618%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj253670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args253636%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj253670%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp256009 _%stx253614%_)))
                     _%$e253665%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass253641%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp256011
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args253636%_))))
                              (declare (not safe))
                              (##fx= __tmp256011 _%fields253630%_))
                            (let ((__tmp256012
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self253618%_
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
                                              _%self253618%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args253636%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp256012
                               _%stx253614%_))
                            (let ((__tmp256014
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self253618%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp256013
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass253641%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx253614%_
                               __tmp256014
                               __tmp256013)))
                        (let ((_%$obj253677%_
                               (let ((__tmp256015
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp256015))))
                          (let _%lp253679%_ ((_%rest253681%_ _%args253636%_)
                                             (_%initializers253682%_ '()))
                            (let* ((_%__stx255485255486%_ _%rest253681%_)
                                   (_%g253686253707%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx255485255486%_)))))
                              (let ((_%__kont255487255488%_
                                     (lambda (_%g253688253761%_
                                              _%g253689253762%_
                                              _%g253690253763%_)
                                       (let* ((_%slot253790%_
                                               (let ((__tmp256016
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g253690253763%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp256016)))
                                              (_%off253792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass253641%_
                                                  _%slot253790%_))))
                                         (if _%off253792%_
                                             (_%lp253679%_
                                              _%g253688253761%_
                                              (cons (cons _%off253792%_
                                                          _%g253689253762%_)
                                                    _%initializers253682%_))
                                             (let ((__tmp256017
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self253618%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx253614%_
                                                __tmp256017
                                                _%slot253790%_))))))
                                    (_%__kont255489255490%_
                                     (lambda ()
                                       (let ((__tmp256018
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj253677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object253638%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp256021
                                     (cons (cons '%#ref
                                                 (cons _%$obj253677%_ '()))
                                           '()))
                                    (__tmp256019
                                     (let ((__tmp256020
                                            (lambda (_%i253721%_ _%r253722%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self253618%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i253721%_) '()))
                              (cons (cons '%#ref (cons _%$obj253677%_ '()))
                                    (cons (cdr _%i253721%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r253722%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp256020
                                        '()
                                        _%initializers253682%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp256021 __tmp256019)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp256018
                                          _%stx253614%_))))
                                    (_%__kont255491255492%_
                                     (lambda ()
                                       (let ((__tmp256022
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj253677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object253638%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj253677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args253636%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj253677%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp256022
                                          _%stx253614%_)))))
                                (let* ((_%g253684253724%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx255485255486%_))
                                              (_%__kont255489255490%_)
                                              (_%__kont255491255492%_))))
                                       (_%__match255522255523%_
                                        (lambda (_%e253691253729%_
                                                 _%hd253692253732%_
                                                 _%tl253693253734%_
                                                 _%e253694253737%_
                                                 _%hd253695253740%_
                                                 _%tl253696253742%_
                                                 _%e253697253745%_
                                                 _%hd253698253748%_
                                                 _%tl253699253750%_
                                                 _%e253700253753%_
                                                 _%hd253701253756%_
                                                 _%tl253702253758%_)
                                          (let ((_%g253688253761%_
                                                 _%tl253702253758%_)
                                                (_%g253689253762%_
                                                 _%hd253701253756%_)
                                                (_%g253690253763%_
                                                 _%hd253698253748%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g253690253763%_))
                                                (_%__kont255487255488%_
                                                 _%g253688253761%_
                                                 _%g253689253762%_
                                                 _%g253690253763%_)
                                                (_%__kont255491255492%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx255485255486%_))
                                      (let ((_%e253691253729%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx255485255486%_))))
                                        (let ((_%tl253693253734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253691253729%_)))
                                              (_%hd253692253732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253691253729%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd253692253732%_))
                                              (let ((_%e253694253737%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd253692253732%_))))
                                                (let ((_%tl253696253742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e253694253737%_)))
                                                      (_%hd253695253740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e253694253737%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd253695253740%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd253695253740%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl253696253742%_))
                      (let ((_%e253697253745%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl253696253742%_))))
                        (let ((_%tl253699253750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253697253745%_)))
                              (_%hd253698253748%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253697253745%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253699253750%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl253693253734%_))
                                  (let ((_%e253700253753%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl253693253734%_))))
                                    (let ((_%tl253702253758%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253700253753%_)))
                                          (_%hd253701253756%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253700253753%_))))
                                      (_%__match255522255523%_
                                       _%e253691253729%_
                                       _%hd253692253732%_
                                       _%tl253693253734%_
                                       _%e253694253737%_
                                       _%hd253695253740%_
                                       _%tl253696253742%_
                                       _%e253697253745%_
                                       _%hd253698253748%_
                                       _%tl253699253750%_
                                       _%e253700253753%_
                                       _%hd253701253756%_
                                       _%tl253702253758%_)))
                                  (_%__kont255491255492%_))
                              (_%__kont255491255492%_))))
                      (_%__kont255491255492%_))
                  (_%__kont255491255492%_))
              (_%__kont255491255492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont255491255492%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g253684253724%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::check-arguments
      (lambda (_%self253474%_ _%ctx253475%_ _%stx253476%_ _%args253477%_)
        (let ((_%self253480%_ _%self253474%_))
          (if (let ()
                (declare (not safe))
                (##unchecked-structure-ref _%self253480%_ '4 '#f '#f))
              (gxc#!procedure::check-arguments
               _%self253480%_
               _%ctx253475%_
               _%stx253476%_
               _%args253477%_)
              '#t))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'check-arguments
       gxc#!accessor::check-arguments
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self253257%_ _%ctx253258%_ _%stx253259%_ _%args253260%_)
        (let* ((_%self253263%_ _%self253257%_)
               (_%arguments-ok?253273%_
                (let ((__method255966
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self253263%_ 'check-arguments))))
                  (if __method255966
                      (let ()
                        (declare (not safe))
                        (__method255966
                         _%self253263%_
                         _%ctx253258%_
                         _%stx253259%_
                         _%args253260%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self253263%_
                                 'check-arguments))
                        '#!void))))
               (_%g253275253285%_
                (lambda (_%g253276253282%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g253276253282%_))))
               (_%g253274253349%_
                (lambda (_%g253276253288%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g253276253288%_))
                      (let ((_%e253278253290%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g253276253288%_))))
                        (let ((_%hd253279253293%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253278253290%_)))
                              (_%tl253280253295%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253278253290%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253280253295%_))
                              ((lambda (_%g253277253298%_)
                                 (let* ((_%klass253311%_
                                         (let ((__tmp256023
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self253263%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx253259%_
                                            __tmp256023)))
                                        (_%field253313%_
                                         (let ((__tmp256024
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self253263%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass253311%_
                                            __tmp256024)))
                                        (_%object253315%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx253258%_
                                            _%g253277253298%_)))
                                        (_%klass253318%_ _%klass253311%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass253318%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp256025
                                              (cons (if (or _%arguments-ok?253273%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self253263%_
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
                                 _%self253263%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field253313%_ '()))
                        (cons _%object253315%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp256025
                                          _%stx253259%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass253318%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp256026
                                                  (cons (if (or _%arguments-ok?253273%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self253263%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self253263%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field253313%_ '()))
                            (cons _%object253315%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp256026
                                              _%stx253259%_))
                                           (let ((_%$e253337%_
                                                  (let ((__tmp256027
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self253263%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass253318%_
                                                     __tmp256027))))
                                             (if _%$e253337%_
                                                 ((lambda (_%klass253340%_)
                                                    (let ((__tmp256028
                                                           (cons (if (or _%arguments-ok?253273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self253263%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self253263%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field253313%_ '()))
                                     (cons _%object253315%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp256028 _%stx253259%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e253337%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self253263%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp256029
                                                            (let ((_%$obj253346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp256030
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp256030))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj253346%_ '())
                                              (cons _%object253315%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass253318%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj253346%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self253263%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field253313%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj253346%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?253273%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj253346%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self253263%_
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
                                                             _%self253263%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj253346%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self253263%_
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
               (gxc#xform-wrap-source __tmp256029 _%stx253259%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp256031
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object253315%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self253263%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp256031 _%stx253259%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd253279253293%_)
                              (_%g253275253285%_ _%g253276253288%_))))
                      (_%g253275253285%_ _%g253276253288%_)))))
          (_%g253274253349%_ _%args253260%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass255253 __method-table255254)
        (let ((__check-arguments255255
               (let ((__tmp256032
                      (lambda ()
                        (let ((__method255256
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table255254
                                  'check-arguments
                                  '#f))))
                          (if __method255256
                              __method255256
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp256032)))
              (__slot255257
               (let ((__slot255258
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass255253 'slot))))
                 (if __slot255258
                     __slot255258
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self253257%_ _%ctx253258%_ _%stx253259%_ _%args253260%_)
            (let* ((_%self253263%_ _%self253257%_)
                   (_%arguments-ok?253273%_
                    ((force __check-arguments255255)
                     _%self253263%_
                     _%ctx253258%_
                     _%stx253259%_
                     _%args253260%_))
                   (_%g253275253285%_
                    (lambda (_%g253276253282%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g253276253282%_))))
                   (_%g253274253349%_
                    (lambda (_%g253276253288%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g253276253288%_))
                          (let ((_%e253278253290%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g253276253288%_))))
                            (let ((_%hd253279253293%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253278253290%_)))
                                  (_%tl253280253295%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253278253290%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl253280253295%_))
                                  ((lambda (_%g253277253298%_)
                                     (let* ((_%klass253311%_
                                             (let ((__tmp256033
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self253263%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx253259%_
                                                __tmp256033)))
                                            (_%field253313%_
                                             (let ((__tmp256034
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self253263%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass253311%_
                                                __tmp256034)))
                                            (_%object253315%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx253258%_
                                                _%g253277253298%_)))
                                            (_%klass253318%_ _%klass253311%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass253318%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp256035
                                                  (cons (if (or _%arguments-ok?253273%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self253263%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self253263%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field253313%_ '()))
                            (cons _%object253315%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp256035
                                              _%stx253259%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass253318%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp256036
                                                      (cons (if (or _%arguments-ok?253273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self253263%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self253263%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field253313%_ '()))
                                (cons _%object253315%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp256036
                                                  _%stx253259%_))
                                               (let ((_%$e253337%_
                                                      (let ((__tmp256037
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self253263%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass253318%_ __tmp256037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e253337%_
                                                     ((lambda (_%klass253340%_)
                                                        (let ((__tmp256038
                                                               (cons (if (or _%arguments-ok?253273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self253263%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self253263%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field253313%_ '()))
                                         (cons _%object253315%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp256038 _%stx253259%_)))
              _%$e253337%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self253263%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp256039
                                                                (let ((_%$obj253346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256040
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp256040))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj253346%_ '())
                                                  (cons _%object253315%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass253318%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj253346%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self253263%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field253313%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj253346%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?253273%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj253346%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self253263%_
                               __slot255257
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
                        (##unchecked-structure-ref _%self253263%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj253346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self253263%_
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
                   (gxc#xform-wrap-source __tmp256039 _%stx253259%_))
                 (let ((__tmp256041
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object253315%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self253263%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp256041 _%stx253259%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd253279253293%_)
                                  (_%g253275253285%_ _%g253276253288%_))))
                          (_%g253275253285%_ _%g253276253288%_)))))
              (_%g253274253349%_ _%args253260%_))))))
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
      (lambda (_%self253021%_ _%ctx253022%_ _%stx253023%_ _%args253024%_)
        (let* ((_%self253027%_ _%self253021%_)
               (_%arguments-ok?253037%_
                (let ((__method255967
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self253027%_ 'check-arguments))))
                  (if __method255967
                      (let ()
                        (declare (not safe))
                        (__method255967
                         _%self253027%_
                         _%ctx253022%_
                         _%stx253023%_
                         _%args253024%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self253027%_
                                 'check-arguments))
                        '#!void))))
               (_%g253039253053%_
                (lambda (_%g253040253050%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g253040253050%_))))
               (_%g253038253132%_
                (lambda (_%g253040253056%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g253040253056%_))
                      (let ((_%e253043253058%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g253040253056%_))))
                        (let ((_%hd253044253061%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253043253058%_)))
                              (_%tl253045253063%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253043253058%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl253045253063%_))
                              (let ((_%e253046253066%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl253045253063%_))))
                                (let ((_%hd253047253069%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e253046253066%_)))
                                      (_%tl253048253071%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e253046253066%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl253048253071%_))
                                      ((lambda (_%g253041253074%_
                                                _%g253042253075%_)
                                         (let* ((_%klass253091%_
                                                 (let ((__tmp256042
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self253027%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx253023%_
                                                    __tmp256042)))
                                                (_%field253093%_
                                                 (let ((__tmp256043
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self253027%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass253091%_
                                                    __tmp256043)))
                                                (_%object253095%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx253022%_
                                                    _%g253042253075%_)))
                                                (_%value253097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx253022%_
                                                    _%g253041253074%_)))
                                                (_%klass253100%_
                                                 _%klass253091%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass253100%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp256044
                                                      (cons (if (or _%arguments-ok?253037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self253027%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self253027%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field253093%_ '()))
                                (cons _%object253095%_
                                      (cons _%value253097%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp256044
                                                  _%stx253023%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass253100%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp256045
                                                          (cons (if (or _%arguments-ok?253037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self253027%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self253027%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field253093%_ '()))
                                    (cons _%object253095%_
                                          (cons _%value253097%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp256045
                                                      _%stx253023%_))
                                                   (let ((_%$e253120%_
                                                          (let ((__tmp256046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self253027%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass253100%_
                     __tmp256046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e253120%_
                                                         ((lambda (_%klass253123%_)
                                                            (let ((__tmp256047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?253037%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self253027%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self253027%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field253093%_ '()))
                                             (cons _%object253095%_
                                                   (cons _%value253097%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256047 _%stx253023%_)))
                  _%$e253120%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self253027%_ '4 '#f '#f))
                     (let ((__tmp256048
                            (let ((_%$obj253129%_
                                   (let ((__tmp256049
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp256049))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj253129%_ '())
                                                      (cons _%object253095%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass253100%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj253129%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self253027%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field253093%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj253129%_
                                                              '()))
                                                  (cons _%value253097%_
                                                        '())))))
                          (cons (if _%arguments-ok?253037%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj253129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self253027%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value253097%_ '())))))
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
                             _%self253027%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj253129%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self253027%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value253097%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp256048 _%stx253023%_))
                     (let ((__tmp256050
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object253095%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self253027%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value253097%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp256050
                        _%stx253023%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd253047253069%_
                                       _%hd253044253061%_)
                                      (_%g253039253053%_ _%g253040253056%_))))
                              (_%g253039253053%_ _%g253040253056%_))))
                      (_%g253039253053%_ _%g253040253056%_)))))
          (_%g253038253132%_ _%args253024%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass255259 __method-table255260)
        (let ((__check-arguments255261
               (let ((__tmp256051
                      (lambda ()
                        (let ((__method255262
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table255260
                                  'check-arguments
                                  '#f))))
                          (if __method255262
                              __method255262
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp256051))))
          (lambda (_%self253021%_ _%ctx253022%_ _%stx253023%_ _%args253024%_)
            (let* ((_%self253027%_ _%self253021%_)
                   (_%arguments-ok?253037%_
                    ((force __check-arguments255261)
                     _%self253027%_
                     _%ctx253022%_
                     _%stx253023%_
                     _%args253024%_))
                   (_%g253039253053%_
                    (lambda (_%g253040253050%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g253040253050%_))))
                   (_%g253038253132%_
                    (lambda (_%g253040253056%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g253040253056%_))
                          (let ((_%e253043253058%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g253040253056%_))))
                            (let ((_%hd253044253061%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253043253058%_)))
                                  (_%tl253045253063%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253043253058%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl253045253063%_))
                                  (let ((_%e253046253066%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl253045253063%_))))
                                    (let ((_%hd253047253069%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253046253066%_)))
                                          (_%tl253048253071%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253046253066%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl253048253071%_))
                                          ((lambda (_%g253041253074%_
                                                    _%g253042253075%_)
                                             (let* ((_%klass253091%_
                                                     (let ((__tmp256052
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self253027%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx253023%_
                                                        __tmp256052)))
                                                    (_%field253093%_
                                                     (let ((__tmp256053
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self253027%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass253091%_
                                                        __tmp256053)))
                                                    (_%object253095%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx253022%_
                                                        _%g253042253075%_)))
                                                    (_%value253097%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx253022%_
                                                        _%g253041253074%_)))
                                                    (_%klass253100%_
                                                     _%klass253091%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass253100%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp256054
                                                          (cons (if (or _%arguments-ok?253037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self253027%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self253027%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field253093%_ '()))
                                    (cons _%object253095%_
                                          (cons _%value253097%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp256054
                                                      _%stx253023%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass253100%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp256055
                                                              (cons (if (or _%arguments-ok?253037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self253027%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self253027%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field253093%_ '()))
                                        (cons _%object253095%_
                                              (cons _%value253097%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp256055 _%stx253023%_))
               (let ((_%$e253120%_
                      (let ((__tmp256056
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self253027%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass253100%_
                         __tmp256056))))
                 (if _%$e253120%_
                     ((lambda (_%klass253123%_)
                        (let ((__tmp256057
                               (cons (if (or _%arguments-ok?253037%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self253027%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self253027%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field253093%_
                                                             '()))
                                                 (cons _%object253095%_
                                                       (cons _%value253097%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp256057 _%stx253023%_)))
                      _%$e253120%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self253027%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp256058
                                (let ((_%$obj253129%_
                                       (let ((__tmp256059
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp256059))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj253129%_
                                                                '())
                                                          (cons _%object253095%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass253100%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj253129%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self253027%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field253093%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj253129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value253097%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?253037%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj253129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self253027%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value253097%_ '())))))
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
                                 _%self253027%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj253129%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self253027%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value253097%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp256058 _%stx253023%_))
                         (let ((__tmp256060
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object253095%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self253027%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value253097%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp256060
                            _%stx253023%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd253047253069%_
                                           _%hd253044253061%_)
                                          (_%g253039253053%_
                                           _%g253040253056%_))))
                                  (_%g253039253053%_ _%g253040253056%_))))
                          (_%g253039253053%_ _%g253040253056%_)))))
              (_%g253038253132%_ _%args253024%_))))))
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
      (lambda (_%self252837%_ _%ctx252838%_ _%stx252839%_ _%args252840%_)
        (let* ((_%self252843%_ _%self252837%_)
               (_%self252852252862%_ _%self252843%_)
               (_%E252854252865%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self252852252862%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K252855252875%_
                (lambda (_%inline252868%_ _%dispatch252869%_ _%arity252870%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self252843%_
                         _%args252840%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx252839%_
                         _%arity252870%_)))
                  (if _%inline252868%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp256061 (_%inline252868%_ _%stx252839%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp256061
                           _%stx252839%_
                           _%ctx252838%_)))
                      (if (and _%dispatch252869%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch252869%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch252869%_))
                            (let ((__tmp256062
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch252869%_
                                                           '()))
                                               _%args252840%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp256062
                               _%stx252839%_
                               _%ctx252838%_)))
                          (gxc#!procedure::optimize-call
                           _%self252843%_
                           _%ctx252838%_
                           _%stx252839%_
                           _%args252840%_)))))
               (_%e252856252878%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252852252862%_ '1 '#f '#f)))
               (_%e252857252881%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252852252862%_ '2 '#f '#f)))
               (_%e252858252884%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252852252862%_ '3 '#f '#f)))
               (_%arity252887%_ _%e252858252884%_)
               (_%e252859252889%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252852252862%_ '4 '#f '#f)))
               (_%dispatch252892%_ _%e252859252889%_)
               (_%e252860252894%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252852252862%_ '5 '#f '#f)))
               (_%inline252897%_ _%e252860252894%_))
          (_%K252855252875%_
           _%inline252897%_
           _%dispatch252892%_
           _%arity252887%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self252689%_ _%ctx252690%_ _%stx252691%_ _%args252692%_)
        (let* ((_%self252695%_ _%self252689%_)
               (_%$e252709%_
                (let ((__tmp256064
                       (lambda (_%g252704252706%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g252704252706%_
                            _%args252692%_))))
                      (__tmp256063
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self252695%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp256064 __tmp256063))))
          (if _%$e252709%_
              ((lambda (_%clause252712%_)
                 (let ((__method255968
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause252712%_ 'optimize-call))))
                   (if __method255968
                       (let ()
                         (declare (not safe))
                         (__method255968
                          _%clause252712%_
                          _%ctx252690%_
                          _%stx252691%_
                          _%args252692%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause252712%_
                                  'optimize-call))
                         '#!void))))
               _%$e252709%_)
              (let ((__tmp256065
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self252695%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx252691%_
                 __tmp256065))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self252430%_ _%ctx252431%_ _%stx252432%_ _%args252433%_)
        (let* ((_%self252436%_ _%self252430%_)
               (_%self252445252454%_ _%self252436%_)
               (_%E252447252457%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self252445252454%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K252448252548%_
                (lambda (_%dispatch252460%_ _%table252461%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch252460%_))
                      (let* ((_%g252462252472%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch252460%_)))
                             (_%else252464252480%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch252460%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx252431%_
                                   _%stx252432%_))))
                             (_%K252466252529%_
                              (lambda (_%main252483%_ _%keys252484%_)
                                (let ((_g256066_
                                       (gxc#!kw-lambda-split-args
                                        _%stx252432%_
                                        _%args252433%_)))
                                  (begin
                                    (let ((_g256067_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g256066_)
                                                 (##values-length _g256066_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g256067_ 2)))
                                          (error "Context expects 2 values"
                                                 _g256067_)))
                                    (let ((_%pargs252486%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g256066_ 0)))
                                          (_%kwargs252487%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g256066_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main252483%_))
                                        (if _%table252461%_
                                            (let ((_%xargs252495%_
                                                   (map (lambda (_%key252489%_)
                                                          (let ((_%$e252491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key252489%_ _%kwargs252487%_))))
                    (if _%$e252491%_ _%$e252491%_ '(%#ref absent-value))))
                _%keys252484%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw252497%_)
                                                 (if (memq (car _%kw252497%_)
                                                           _%keys252484%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx252432%_
                                                        _%keys252484%_
                                                        _%kw252497%_))))
                                               _%kwargs252487%_)
                                              (let ((__tmp256068
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main252483%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs252486%_
                                  _%xargs252495%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp256068
                                                 _%stx252432%_
                                                 _%ctx252431%_)))
                                            (let* ((_%kwt252499%_
                                                    (let ((__tmp256069
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp256069)))
                                                   (_%kwvars252503%_
                                                    (map (lambda (_%_252501%_)
                                                           (let ((__tmp256070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp256070)))
                 _%kwargs252487%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind252508%_
                                                    (map (lambda (_%kw252505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar252506%_)
                   (cons (cons _%kwvar252506%_ '())
                         (cons (cdr _%kw252505%_) '())))
                 _%kwargs252487%_
                 _%kwvars252503%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset252513%_
                                                    (map (lambda (_%kw252510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar252511%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt252499%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw252510%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar252511%_
                                                             '()))
                                                 '()))))))
                 _%kwargs252487%_
                 _%kwvars252503%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs252518%_
                                                    (map (lambda (_%kw252515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar252516%_)
                   (cons (car _%kw252515%_)
                         (cons '%#ref (cons _%kwvar252516%_ '()))))
                 _%kwargs252487%_
                 _%kwvars252503%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs252526%_
                                                    (map (lambda (_%key252520%_)
                                                           (let ((_%$e252522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key252520%_ _%xkwargs252518%_))))
                     (if _%$e252522%_ _%$e252522%_ '(%#ref absent-value))))
                 _%keys252484%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp256071
                                                    (cons '%#let-values
                                                          (cons _%kwbind252508%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt252499%_ '())
                                                      (cons (let ((__tmp256072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs252487%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256072 _%stx252432%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp256073
                                                             (cons (let ((__tmp256074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main252483%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt252499%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs252486%_
                                                       _%xargs252526%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp256074 _%stx252432%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp256073 _%kwset252513%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp256071
                                               _%stx252432%_
                                               _%ctx252431%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g252462252472%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e252467252532%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g252462252472%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e252468252535%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g252462252472%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e252469252538%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g252462252472%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys252541%_ _%e252469252538%_)
                                   (_%e252470252543%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g252462252472%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main252546%_ _%e252470252543%_))
                              (_%K252466252529%_
                               _%main252546%_
                               _%keys252541%_))
                            (_%else252464252480%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx252431%_ _%stx252432%_)))))
               (_%e252449252551%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252445252454%_ '1 '#f '#f)))
               (_%e252450252554%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252445252454%_ '2 '#f '#f)))
               (_%e252451252557%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252445252454%_ '3 '#f '#f)))
               (_%table252560%_ _%e252451252557%_)
               (_%e252452252562%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252445252454%_ '4 '#f '#f)))
               (_%dispatch252565%_ _%e252452252562%_))
          (_%K252448252548%_ _%dispatch252565%_ _%table252560%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx252043%_ _%args252044%_)
        (let _%lp252046%_ ((_%rest252048%_ _%args252044%_)
                           (_%pargs252049%_ '())
                           (_%kwargs252050%_ '()))
          (let* ((_%__stx255527255528%_ _%rest252048%_)
                 (_%g252056252108%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx255527255528%_)))))
            (let ((_%__kont255529255530%_
                   (lambda (_%g252058252287%_ _%g252059252288%_)
                     (_%lp252046%_
                      _%g252058252287%_
                      (cons _%g252059252288%_ _%pargs252049%_)
                      _%kwargs252050%_)))
                  (_%__kont255531255532%_
                   (lambda (_%g252073252233%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g252073252233%_
                                _%pargs252049%_))
                             (reverse _%kwargs252050%_))))
                  (_%__kont255533255534%_
                   (lambda (_%g252084252180%_
                            _%g252085252181%_
                            _%g252086252182%_)
                     (let ((_%kw252199%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g252086252182%_))))
                       (if (assq _%kw252199%_ _%kwargs252050%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx252043%_
                              _%kw252199%_))
                           (_%lp252046%_
                            _%g252084252180%_
                            _%pargs252049%_
                            (cons (cons _%kw252199%_ _%g252085252181%_)
                                  _%kwargs252050%_))))))
                  (_%__kont255535255536%_
                   (lambda (_%g252099252128%_ _%g252100252129%_)
                     (_%lp252046%_
                      _%g252099252128%_
                      (cons _%g252100252129%_ _%pargs252049%_)
                      _%kwargs252050%_)))
                  (_%__kont255537255538%_
                   (lambda ()
                     (values (reverse _%pargs252049%_)
                             (reverse _%kwargs252050%_)))))
              (let ((_%__match255634255635%_
                     (lambda (_%e252087252148%_
                              _%hd252088252151%_
                              _%tl252089252153%_
                              _%e252090252156%_
                              _%hd252091252159%_
                              _%tl252092252161%_
                              _%e252093252164%_
                              _%hd252094252167%_
                              _%tl252095252169%_
                              _%e252096252172%_
                              _%hd252097252175%_
                              _%tl252098252177%_)
                       (let ((_%g252084252180%_ _%tl252098252177%_)
                             (_%g252085252181%_ _%hd252097252175%_)
                             (_%g252086252182%_ _%hd252094252167%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g252086252182%_))
                             (_%__kont255533255534%_
                              _%g252084252180%_
                              _%g252085252181%_
                              _%g252086252182%_)
                             (_%__kont255535255536%_
                              _%tl252089252153%_
                              _%hd252088252151%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx255527255528%_))
                    (let ((_%e252060252252%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx255527255528%_))))
                      (let ((_%tl252062252257%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e252060252252%_)))
                            (_%hd252061252255%_
                             (let ()
                               (declare (not safe))
                               (##car _%e252060252252%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd252061252255%_))
                            (let ((_%e252063252260%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd252061252255%_))))
                              (let ((_%tl252065252265%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e252063252260%_)))
                                    (_%hd252064252263%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e252063252260%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd252064252263%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd252064252263%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl252065252265%_))
                                            (let ((_%e252066252268%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl252065252265%_))))
                                              (let ((_%tl252068252273%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e252066252268%_)))
                                                    (_%hd252067252271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e252066252268%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd252067252271%_))
                                                    (let ((_%e252069252276%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd252067252271%_))))
                                                      (if (equal? _%e252069252276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl252068252273%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl252062252257%_))
                          (let ((_%e252070252279%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl252062252257%_))))
                            (let ((_%tl252072252284%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252070252279%_)))
                                  (_%hd252071252282%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252070252279%_))))
                              (_%__kont255529255530%_
                               _%tl252072252284%_
                               _%hd252071252282%_)))
                          (_%__kont255535255536%_
                           _%tl252062252257%_
                           _%hd252061252255%_))
                      (_%__kont255535255536%_
                       _%tl252062252257%_
                       _%hd252061252255%_))
                  (if (equal? _%e252069252276%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl252068252273%_))
                          (_%__kont255531255532%_ _%tl252062252257%_)
                          (_%__kont255535255536%_
                           _%tl252062252257%_
                           _%hd252061252255%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl252068252273%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl252062252257%_))
                              (let ((_%e252096252172%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl252062252257%_))))
                                (let ((_%tl252098252177%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e252096252172%_)))
                                      (_%hd252097252175%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e252096252172%_))))
                                  (_%__match255634255635%_
                                   _%e252060252252%_
                                   _%hd252061252255%_
                                   _%tl252062252257%_
                                   _%e252063252260%_
                                   _%hd252064252263%_
                                   _%tl252065252265%_
                                   _%e252066252268%_
                                   _%hd252067252271%_
                                   _%tl252068252273%_
                                   _%e252096252172%_
                                   _%hd252097252175%_
                                   _%tl252098252177%_)))
                              (_%__kont255535255536%_
                               _%tl252062252257%_
                               _%hd252061252255%_))
                          (_%__kont255535255536%_
                           _%tl252062252257%_
                           _%hd252061252255%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl252068252273%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl252062252257%_))
                                                            (let ((_%e252096252172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl252062252257%_))))
                      (let ((_%tl252098252177%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e252096252172%_)))
                            (_%hd252097252175%_
                             (let ()
                               (declare (not safe))
                               (##car _%e252096252172%_))))
                        (_%__match255634255635%_
                         _%e252060252252%_
                         _%hd252061252255%_
                         _%tl252062252257%_
                         _%e252063252260%_
                         _%hd252064252263%_
                         _%tl252065252265%_
                         _%e252066252268%_
                         _%hd252067252271%_
                         _%tl252068252273%_
                         _%e252096252172%_
                         _%hd252097252175%_
                         _%tl252098252177%_)))
                    (_%__kont255535255536%_
                     _%tl252062252257%_
                     _%hd252061252255%_))
                (_%__kont255535255536%_
                 _%tl252062252257%_
                 _%hd252061252255%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont255535255536%_
                                             _%tl252062252257%_
                                             _%hd252061252255%_))
                                        (_%__kont255535255536%_
                                         _%tl252062252257%_
                                         _%hd252061252255%_))
                                    (_%__kont255535255536%_
                                     _%tl252062252257%_
                                     _%hd252061252255%_))))
                            (_%__kont255535255536%_
                             _%tl252062252257%_
                             _%hd252061252255%_))))
                    (_%__kont255537255538%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self252027%_ _%ctx252028%_ _%stx252029%_ _%args252030%_)
        (let ((_%self252033%_ _%self252027%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx252028%_ _%stx252029%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self251717%_ _%stx251718%_)
        (let* ((_%__stx255643255644%_ _%stx251718%_)
               (_%g251721251761%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255643255644%_)))))
          (let ((_%__kont255645255646%_
                 (lambda (_%g251723251865%_ _%g251724251866%_)
                   (let ((_%$e251893%_
                          (member 'return:
                                  (let ((__tmp256075
                                         (lambda (_%g251885251888%_
                                                  _%g251886251890%_)
                                           (cons _%g251885251888%_
                                                 _%g251886251890%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp256075
                                     '()
                                     _%g251724251866%_))
                                  gx#stx-eq?)))
                     (if _%$e251893%_
                         ((lambda (_%tail251896%_)
                            (let ((_%type251898%_
                                   (let ((__tmp256076
                                          (let ((__tmp256077
                                                 (cadr _%tail251896%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp256077))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx251718%_
                                      __tmp256076))))
                              (gxc#check-return-type!
                               _%stx251718%_
                               _%g251723251865%_
                               _%type251898%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self251717%_
                                 _%g251723251865%_))))
                          _%$e251893%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self251717%_
                            _%g251723251865%_))))))
                (_%__kont255649255650%_
                 (lambda (_%g251746251790%_ _%g251747251791%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self251717%_ _%g251746251790%_)))))
            (let ((_%__match255680255681%_
                   (lambda (_%e251725251811%_
                            _%hd251726251814%_
                            _%tl251727251816%_
                            _%e251728251819%_
                            _%hd251729251822%_
                            _%tl251730251824%_
                            _%e251731251827%_
                            _%hd251732251830%_
                            _%tl251733251832%_
                            _%__splice255647255648%_
                            _%target251734251835%_
                            _%tl251736251837%_)
                     (letrec ((_%loop251737251840%_
                               (lambda (_%hd251735251843%_
                                        _%signature251741251845%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd251735251843%_))
                                     (let ((_%e251738251847%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd251735251843%_))))
                                       (let ((_%lp-tl251740251852%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e251738251847%_)))
                                             (_%lp-hd251739251850%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e251738251847%_))))
                                         (_%loop251737251840%_
                                          _%lp-tl251740251852%_
                                          (cons _%lp-hd251739251850%_
                                                _%signature251741251845%_))))
                                     (let ((_%signature251742251855%_
                                            (reverse _%signature251741251845%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl251730251824%_))
                                           (let ((_%e251743251857%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl251730251824%_))))
                                             (let ((_%tl251745251862%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e251743251857%_)))
                                                   (_%hd251744251860%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e251743251857%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl251745251862%_))
                                                   (_%__kont255645255646%_
                                                    _%hd251744251860%_
                                                    _%signature251742251855%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g251721251761%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g251721251761%_))))))))
                       (_%loop251737251840%_ _%target251734251835%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx255643255644%_))
                  (let ((_%e251725251811%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx255643255644%_))))
                    (let ((_%tl251727251816%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e251725251811%_)))
                          (_%hd251726251814%_
                           (let ()
                             (declare (not safe))
                             (##car _%e251725251811%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl251727251816%_))
                          (let ((_%e251728251819%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl251727251816%_))))
                            (let ((_%tl251730251824%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251728251819%_)))
                                  (_%hd251729251822%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251728251819%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd251729251822%_))
                                  (let ((_%e251731251827%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd251729251822%_))))
                                    (let ((_%tl251733251832%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251731251827%_)))
                                          (_%hd251732251830%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251731251827%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd251732251830%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd251732251830%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl251733251832%_))
                                                  (let ((_%__splice255647255648%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl251733251832%_
                                                            '0))))
                                                    (let ((_%tl251736251837%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice255647255648%_
                                                              '1)))
                                                          (_%target251734251835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice255647255648%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl251736251837%_))
                                                          (_%__match255680255681%_
                                                           _%e251725251811%_
                                                           _%hd251726251814%_
                                                           _%tl251727251816%_
                                                           _%e251728251819%_
                                                           _%hd251729251822%_
                                                           _%tl251730251824%_
                                                           _%e251731251827%_
                                                           _%hd251732251830%_
                                                           _%tl251733251832%_
                                                           _%__splice255647255648%_
                                                           _%target251734251835%_
                                                           _%tl251736251837%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl251730251824%_))
                      (let ((_%e251754251782%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl251730251824%_))))
                        (let ((_%tl251756251787%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251754251782%_)))
                              (_%hd251755251785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251754251782%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251756251787%_))
                              (_%__kont255649255650%_
                               _%hd251755251785%_
                               _%hd251729251822%_)
                              (let ()
                                (declare (not safe))
                                (_%g251721251761%_)))))
                      (let () (declare (not safe)) (_%g251721251761%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl251730251824%_))
                                                      (let ((_%e251754251782%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl251730251824%_))))
                (let ((_%tl251756251787%_
                       (let () (declare (not safe)) (##cdr _%e251754251782%_)))
                      (_%hd251755251785%_
                       (let ()
                         (declare (not safe))
                         (##car _%e251754251782%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl251756251787%_))
                      (_%__kont255649255650%_
                       _%hd251755251785%_
                       _%hd251729251822%_)
                      (let () (declare (not safe)) (_%g251721251761%_)))))
              (let () (declare (not safe)) (_%g251721251761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl251730251824%_))
                                                  (let ((_%e251754251782%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl251730251824%_))))
                                                    (let ((_%tl251756251787%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251754251782%_)))
                                                          (_%hd251755251785%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251754251782%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl251756251787%_))
                                                          (_%__kont255649255650%_
                                                           _%hd251755251785%_
                                                           _%hd251729251822%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g251721251761%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g251721251761%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl251730251824%_))
                                              (let ((_%e251754251782%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl251730251824%_))))
                                                (let ((_%tl251756251787%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e251754251782%_)))
                                                      (_%hd251755251785%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e251754251782%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl251756251787%_))
                                                      (_%__kont255649255650%_
                                                       _%hd251755251785%_
                                                       _%hd251729251822%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g251721251761%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g251721251761%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl251730251824%_))
                                      (let ((_%e251754251782%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl251730251824%_))))
                                        (let ((_%tl251756251787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251754251782%_)))
                                              (_%hd251755251785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251754251782%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl251756251787%_))
                                              (_%__kont255649255650%_
                                               _%hd251755251785%_
                                               _%hd251729251822%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g251721251761%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g251721251761%_))))))
                          (let () (declare (not safe)) (_%g251721251761%_)))))
                  (let () (declare (not safe)) (_%g251721251761%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx251692%_ _%expr251693%_ _%type251694%_)
        (let ((_%$e251696%_ (not _%type251694%_)))
          (if _%$e251696%_
              _%$e251696%_
              (let ((_%$e251699%_
                     (eq? (##structure-ref _%type251694%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e251699%_
                    _%$e251699%_
                    (let ((_%$e251702%_
                           (eq? (##structure-ref
                                 _%type251694%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e251702%_
                          _%$e251702%_
                          (let ((_%expr-type251706%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr251693%_))))
                            (if (not _%expr-type251706%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx251692%_
                                   _%type251694%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type251706%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx251692%_
                                       _%type251694%_
                                       _%expr-type251706%_))
                                    (let ((_%$e251710%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type251706%_
                                              'gxc#!abort::t))))
                                      (if _%$e251710%_
                                          _%$e251710%_
                                          (let ((_%$e251713%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type251706%_
                                                    _%type251694%_))))
                                            (if _%$e251713%_
                                                _%$e251713%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx251692%_
                                                   _%type251694%_
                                                   _%expr-type251706%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self251118%_ _%stx251119%_)
        (let* ((_%__stx255725255726%_ _%stx251119%_)
               (_%g251124251234%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255725255726%_)))))
          (let ((_%__kont255727255728%_
                 (lambda (_%g251126251666%_
                          _%g251127251667%_
                          _%g251128251668%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g251128251668%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self251118%_ _%g251127251667%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self251118%_
                          _%g251126251666%_)))))
                (_%__kont255729255730%_
                 (lambda (_%g251147251492%_
                          _%g251148251493%_
                          _%g251149251494%_
                          _%g251150251495%_)
                   (let ((_%$e251527%_
                          (let ((__tmp256078
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g251150251495%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp256078))))
                     (if _%$e251527%_
                         ((lambda (_%pred-type251530%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type251530%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type251530%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test251535%_
                                        (let ((__tmp256079
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g251150251495%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g251149251494%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp256079
                                           _%stx251119%_
                                           _%self251118%_)))
                                       (_%K251539%_
                                        (let ((__tmp256080
                                               (lambda ()
                                                 (let ((__tmp256083
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self251118%_
                                                             _%g251148251493%_))))
                                                       (__tmp256081
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g251149251494%_))
                            (let ((__tmp256082
                                   (##structure-ref
                                    _%pred-type251530%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx251119%_
                               __tmp256082)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp256083
                                                    gxc#current-compile-path-type
                                                    __tmp256081)))))
                                          (declare (not safe))
                                          (__make-promise __tmp256080)))
                                       (_%E251542%_
                                        (let ((__tmp256084
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self251118%_
                                                    _%g251147251492%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp256084)))
                                       (_%__stx255703255704%_ _%test251535%_)
                                       (_%g251546251560%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx255703255704%_)))))
                                  (let ((_%__kont255705255706%_
                                         (lambda (_%g251548251588%_
                                                  _%g251549251589%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g251548251588%_))
                                               (force _%K251539%_)
                                               (force _%E251542%_))))
                                        (_%__kont255707255708%_
                                         (lambda ()
                                           (let ((__tmp256085
                                                  (cons '%#if
                                                        (cons _%test251535%_
                                                              (cons (force _%K251539%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E251542%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp256085
                                              _%stx251119%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx255703255704%_))
                                        (let ((_%e251550251572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx255703255704%_))))
                                          (let ((_%tl251552251577%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e251550251572%_)))
                                                (_%hd251551251575%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e251550251572%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl251552251577%_))
                                                (let ((_%e251553251580%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl251552251577%_))))
                                                  (let ((_%tl251555251585%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e251553251580%_)))
                                                        (_%hd251554251583%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e251553251580%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl251555251585%_))
                                                        (_%__kont255705255706%_
                                                         _%hd251554251583%_
                                                         _%hd251551251575%_)
                                                        (_%__kont255707255708%_))))
                                                (_%__kont255707255708%_))))
                                        (_%__kont255707255708%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self251118%_
                                   _%stx251119%_))))
                          _%$e251527%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self251118%_
                            _%stx251119%_))))))
                (_%__kont255731255732%_
                 (lambda (_%g251184251368%_
                          _%g251185251369%_
                          _%g251186251370%_
                          _%g251187251371%_)
                   (gxc#optimize-if%
                    _%self251118%_
                    (let ((__tmp256086
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g251186251370%_
                                       (cons _%g251184251368%_
                                             (cons _%g251185251369%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256086 _%stx251119%_)))))
                (_%__kont255733255734%_
                 (lambda (_%g251215251271%_
                          _%g251216251272%_
                          _%g251217251273%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self251118%_ _%stx251119%_)))))
            (let ((_%__match255932255933%_
                   (lambda (_%e251188251296%_
                            _%hd251189251299%_
                            _%tl251190251301%_
                            _%e251191251304%_
                            _%hd251192251307%_
                            _%tl251193251309%_
                            _%e251194251312%_
                            _%hd251195251315%_
                            _%tl251196251317%_
                            _%e251197251320%_
                            _%hd251198251323%_
                            _%tl251199251325%_
                            _%e251200251328%_
                            _%hd251201251331%_
                            _%tl251202251333%_
                            _%e251203251336%_
                            _%hd251204251339%_
                            _%tl251205251341%_
                            _%e251206251344%_
                            _%hd251207251347%_
                            _%tl251208251349%_
                            _%e251209251352%_
                            _%hd251210251355%_
                            _%tl251211251357%_
                            _%e251212251360%_
                            _%hd251213251363%_
                            _%tl251214251365%_)
                     (let ((_%g251184251368%_ _%hd251213251363%_)
                           (_%g251185251369%_ _%hd251210251355%_)
                           (_%g251186251370%_ _%hd251207251347%_)
                           (_%g251187251371%_ _%hd251204251339%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g251187251371%_ 'not))
                           (_%__kont255731255732%_
                            _%g251184251368%_
                            _%g251185251369%_
                            _%g251186251370%_
                            _%g251187251371%_)
                           (_%__kont255733255734%_
                            _%hd251213251363%_
                            _%hd251210251355%_
                            _%hd251192251307%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx255725255726%_))
                  (let ((_%e251129251618%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx255725255726%_))))
                    (let ((_%tl251131251623%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e251129251618%_)))
                          (_%hd251130251621%_
                           (let ()
                             (declare (not safe))
                             (##car _%e251129251618%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl251131251623%_))
                          (let ((_%e251132251626%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl251131251623%_))))
                            (let ((_%tl251134251631%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251132251626%_)))
                                  (_%hd251133251629%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251132251626%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd251133251629%_))
                                  (let ((_%e251135251634%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd251133251629%_))))
                                    (let ((_%tl251137251639%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251135251634%_)))
                                          (_%hd251136251637%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251135251634%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd251136251637%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd251136251637%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl251137251639%_))
                                                  (let ((_%e251138251642%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl251137251639%_))))
                                                    (let ((_%tl251140251647%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251138251642%_)))
                                                          (_%hd251139251645%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251138251642%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl251140251647%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl251134251631%_))
                      (let ((_%e251141251650%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl251134251631%_))))
                        (let ((_%tl251143251655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251141251650%_)))
                              (_%hd251142251653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251141251650%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl251143251655%_))
                              (let ((_%e251144251658%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl251143251655%_))))
                                (let ((_%tl251146251663%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e251144251658%_)))
                                      (_%hd251145251661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e251144251658%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl251146251663%_))
                                      (_%__kont255727255728%_
                                       _%hd251145251661%_
                                       _%hd251142251653%_
                                       _%hd251139251645%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g251124251234%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g251124251234%_)))))
                      (let () (declare (not safe)) (_%g251124251234%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl251134251631%_))
                      (let ((_%e251224251255%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl251134251631%_))))
                        (let ((_%tl251226251260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251224251255%_)))
                              (_%hd251225251258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251224251255%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl251226251260%_))
                              (let ((_%e251227251263%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl251226251260%_))))
                                (let ((_%tl251229251268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e251227251263%_)))
                                      (_%hd251228251266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e251227251263%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl251229251268%_))
                                      (_%__kont255733255734%_
                                       _%hd251228251266%_
                                       _%hd251225251258%_
                                       _%hd251133251629%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g251124251234%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g251124251234%_)))))
                      (let () (declare (not safe)) (_%g251124251234%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl251134251631%_))
                                                      (let ((_%e251224251255%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl251134251631%_))))
                (let ((_%tl251226251260%_
                       (let () (declare (not safe)) (##cdr _%e251224251255%_)))
                      (_%hd251225251258%_
                       (let ()
                         (declare (not safe))
                         (##car _%e251224251255%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl251226251260%_))
                      (let ((_%e251227251263%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl251226251260%_))))
                        (let ((_%tl251229251268%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251227251263%_)))
                              (_%hd251228251266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251227251263%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251229251268%_))
                              (_%__kont255733255734%_
                               _%hd251228251266%_
                               _%hd251225251258%_
                               _%hd251133251629%_)
                              (let ()
                                (declare (not safe))
                                (_%g251124251234%_)))))
                      (let () (declare (not safe)) (_%g251124251234%_)))))
              (let () (declare (not safe)) (_%g251124251234%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd251136251637%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl251137251639%_))
                                                      (let ((_%e251160251428%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl251137251639%_))))
                (let ((_%tl251162251433%_
                       (let () (declare (not safe)) (##cdr _%e251160251428%_)))
                      (_%hd251161251431%_
                       (let ()
                         (declare (not safe))
                         (##car _%e251160251428%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd251161251431%_))
                      (let ((_%e251163251436%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd251161251431%_))))
                        (let ((_%tl251165251441%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251163251436%_)))
                              (_%hd251164251439%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251163251436%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd251164251439%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd251164251439%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl251165251441%_))
                                      (let ((_%e251166251444%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl251165251441%_))))
                                        (let ((_%tl251168251449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251166251444%_)))
                                              (_%hd251167251447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251166251444%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl251168251449%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl251162251433%_))
                                                  (let ((_%e251169251452%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl251162251433%_))))
                                                    (let ((_%tl251171251457%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251169251452%_)))
                                                          (_%hd251170251455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251169251452%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd251170251455%_))
                                                          (let ((_%e251172251460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd251170251455%_))))
                    (let ((_%tl251174251465%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e251172251460%_)))
                          (_%hd251173251463%_
                           (let ()
                             (declare (not safe))
                             (##car _%e251172251460%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd251173251463%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd251173251463%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl251174251465%_))
                                  (let ((_%e251175251468%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl251174251465%_))))
                                    (let ((_%tl251177251473%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251175251468%_)))
                                          (_%hd251176251471%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251175251468%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl251177251473%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl251171251457%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl251134251631%_))
                                                  (let ((_%e251178251476%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl251134251631%_))))
                                                    (let ((_%tl251180251481%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251178251476%_)))
                                                          (_%hd251179251479%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251178251476%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl251180251481%_))
                                                          (let ((_%e251181251484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl251180251481%_))))
                    (let ((_%tl251183251489%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e251181251484%_)))
                          (_%hd251182251487%_
                           (let ()
                             (declare (not safe))
                             (##car _%e251181251484%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl251183251489%_))
                          (_%__kont255729255730%_
                           _%hd251182251487%_
                           _%hd251179251479%_
                           _%hd251176251471%_
                           _%hd251167251447%_)
                          (let () (declare (not safe)) (_%g251124251234%_)))))
                  (let () (declare (not safe)) (_%g251124251234%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g251124251234%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl251134251631%_))
                                                  (let ((_%e251224251255%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl251134251631%_))))
                                                    (let ((_%tl251226251260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251224251255%_)))
                                                          (_%hd251225251258%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251224251255%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl251226251260%_))
                                                          (let ((_%e251227251263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl251226251260%_))))
                    (let ((_%tl251229251268%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e251227251263%_)))
                          (_%hd251228251266%_
                           (let ()
                             (declare (not safe))
                             (##car _%e251227251263%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl251229251268%_))
                          (_%__kont255733255734%_
                           _%hd251228251266%_
                           _%hd251225251258%_
                           _%hd251133251629%_)
                          (let () (declare (not safe)) (_%g251124251234%_)))))
                  (let () (declare (not safe)) (_%g251124251234%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g251124251234%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl251171251457%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl251134251631%_))
                                                  (let ((_%e251209251352%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl251134251631%_))))
                                                    (let ((_%tl251211251357%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251209251352%_)))
                                                          (_%hd251210251355%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251209251352%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl251211251357%_))
                                                          (let ((_%e251212251360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl251211251357%_))))
                    (let ((_%tl251214251365%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e251212251360%_)))
                          (_%hd251213251363%_
                           (let ()
                             (declare (not safe))
                             (##car _%e251212251360%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl251214251365%_))
                          (_%__match255932255933%_
                           _%e251129251618%_
                           _%hd251130251621%_
                           _%tl251131251623%_
                           _%e251132251626%_
                           _%hd251133251629%_
                           _%tl251134251631%_
                           _%e251135251634%_
                           _%hd251136251637%_
                           _%tl251137251639%_
                           _%e251160251428%_
                           _%hd251161251431%_
                           _%tl251162251433%_
                           _%e251163251436%_
                           _%hd251164251439%_
                           _%tl251165251441%_
                           _%e251166251444%_
                           _%hd251167251447%_
                           _%tl251168251449%_
                           _%e251169251452%_
                           _%hd251170251455%_
                           _%tl251171251457%_
                           _%e251209251352%_
                           _%hd251210251355%_
                           _%tl251211251357%_
                           _%e251212251360%_
                           _%hd251213251363%_
                           _%tl251214251365%_)
                          (let () (declare (not safe)) (_%g251124251234%_)))))
                  (let () (declare (not safe)) (_%g251124251234%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g251124251234%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl251134251631%_))
                                                  (let ((_%e251224251255%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl251134251631%_))))
                                                    (let ((_%tl251226251260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251224251255%_)))
                                                          (_%hd251225251258%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251224251255%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl251226251260%_))
                                                          (let ((_%e251227251263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl251226251260%_))))
                    (let ((_%tl251229251268%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e251227251263%_)))
                          (_%hd251228251266%_
                           (let ()
                             (declare (not safe))
                             (##car _%e251227251263%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl251229251268%_))
                          (_%__kont255733255734%_
                           _%hd251228251266%_
                           _%hd251225251258%_
                           _%hd251133251629%_)
                          (let () (declare (not safe)) (_%g251124251234%_)))))
                  (let () (declare (not safe)) (_%g251124251234%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g251124251234%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl251171251457%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl251134251631%_))
                                          (let ((_%e251209251352%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl251134251631%_))))
                                            (let ((_%tl251211251357%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e251209251352%_)))
                                                  (_%hd251210251355%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e251209251352%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl251211251357%_))
                                                  (let ((_%e251212251360%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl251211251357%_))))
                                                    (let ((_%tl251214251365%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251212251360%_)))
                                                          (_%hd251213251363%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251212251360%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl251214251365%_))
                                                          (_%__match255932255933%_
                                                           _%e251129251618%_
                                                           _%hd251130251621%_
                                                           _%tl251131251623%_
                                                           _%e251132251626%_
                                                           _%hd251133251629%_
                                                           _%tl251134251631%_
                                                           _%e251135251634%_
                                                           _%hd251136251637%_
                                                           _%tl251137251639%_
                                                           _%e251160251428%_
                                                           _%hd251161251431%_
                                                           _%tl251162251433%_
                                                           _%e251163251436%_
                                                           _%hd251164251439%_
                                                           _%tl251165251441%_
                                                           _%e251166251444%_
                                                           _%hd251167251447%_
                                                           _%tl251168251449%_
                                                           _%e251169251452%_
                                                           _%hd251170251455%_
                                                           _%tl251171251457%_
                                                           _%e251209251352%_
                                                           _%hd251210251355%_
                                                           _%tl251211251357%_
                                                           _%e251212251360%_
                                                           _%hd251213251363%_
                                                           _%tl251214251365%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g251124251234%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g251124251234%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g251124251234%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl251134251631%_))
                                          (let ((_%e251224251255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl251134251631%_))))
                                            (let ((_%tl251226251260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e251224251255%_)))
                                                  (_%hd251225251258%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e251224251255%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl251226251260%_))
                                                  (let ((_%e251227251263%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl251226251260%_))))
                                                    (let ((_%tl251229251268%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251227251263%_)))
                                                          (_%hd251228251266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251227251263%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl251229251268%_))
                                                          (_%__kont255733255734%_
                                                           _%hd251228251266%_
                                                           _%hd251225251258%_
                                                           _%hd251133251629%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g251124251234%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g251124251234%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g251124251234%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl251171251457%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl251134251631%_))
                                      (let ((_%e251209251352%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl251134251631%_))))
                                        (let ((_%tl251211251357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251209251352%_)))
                                              (_%hd251210251355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251209251352%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl251211251357%_))
                                              (let ((_%e251212251360%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl251211251357%_))))
                                                (let ((_%tl251214251365%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e251212251360%_)))
                                                      (_%hd251213251363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e251212251360%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl251214251365%_))
                                                      (_%__match255932255933%_
                                                       _%e251129251618%_
                                                       _%hd251130251621%_
                                                       _%tl251131251623%_
                                                       _%e251132251626%_
                                                       _%hd251133251629%_
                                                       _%tl251134251631%_
                                                       _%e251135251634%_
                                                       _%hd251136251637%_
                                                       _%tl251137251639%_
                                                       _%e251160251428%_
                                                       _%hd251161251431%_
                                                       _%tl251162251433%_
                                                       _%e251163251436%_
                                                       _%hd251164251439%_
                                                       _%tl251165251441%_
                                                       _%e251166251444%_
                                                       _%hd251167251447%_
                                                       _%tl251168251449%_
                                                       _%e251169251452%_
                                                       _%hd251170251455%_
                                                       _%tl251171251457%_
                                                       _%e251209251352%_
                                                       _%hd251210251355%_
                                                       _%tl251211251357%_
                                                       _%e251212251360%_
                                                       _%hd251213251363%_
                                                       _%tl251214251365%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g251124251234%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g251124251234%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g251124251234%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl251134251631%_))
                                      (let ((_%e251224251255%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl251134251631%_))))
                                        (let ((_%tl251226251260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251224251255%_)))
                                              (_%hd251225251258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251224251255%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl251226251260%_))
                                              (let ((_%e251227251263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl251226251260%_))))
                                                (let ((_%tl251229251268%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e251227251263%_)))
                                                      (_%hd251228251266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e251227251263%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl251229251268%_))
                                                      (_%__kont255733255734%_
                                                       _%hd251228251266%_
                                                       _%hd251225251258%_
                                                       _%hd251133251629%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g251124251234%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g251124251234%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g251124251234%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251171251457%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl251134251631%_))
                                  (let ((_%e251209251352%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl251134251631%_))))
                                    (let ((_%tl251211251357%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251209251352%_)))
                                          (_%hd251210251355%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251209251352%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl251211251357%_))
                                          (let ((_%e251212251360%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl251211251357%_))))
                                            (let ((_%tl251214251365%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e251212251360%_)))
                                                  (_%hd251213251363%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e251212251360%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl251214251365%_))
                                                  (_%__match255932255933%_
                                                   _%e251129251618%_
                                                   _%hd251130251621%_
                                                   _%tl251131251623%_
                                                   _%e251132251626%_
                                                   _%hd251133251629%_
                                                   _%tl251134251631%_
                                                   _%e251135251634%_
                                                   _%hd251136251637%_
                                                   _%tl251137251639%_
                                                   _%e251160251428%_
                                                   _%hd251161251431%_
                                                   _%tl251162251433%_
                                                   _%e251163251436%_
                                                   _%hd251164251439%_
                                                   _%tl251165251441%_
                                                   _%e251166251444%_
                                                   _%hd251167251447%_
                                                   _%tl251168251449%_
                                                   _%e251169251452%_
                                                   _%hd251170251455%_
                                                   _%tl251171251457%_
                                                   _%e251209251352%_
                                                   _%hd251210251355%_
                                                   _%tl251211251357%_
                                                   _%e251212251360%_
                                                   _%hd251213251363%_
                                                   _%tl251214251365%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g251124251234%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g251124251234%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g251124251234%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl251134251631%_))
                                  (let ((_%e251224251255%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl251134251631%_))))
                                    (let ((_%tl251226251260%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251224251255%_)))
                                          (_%hd251225251258%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251224251255%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl251226251260%_))
                                          (let ((_%e251227251263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl251226251260%_))))
                                            (let ((_%tl251229251268%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e251227251263%_)))
                                                  (_%hd251228251266%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e251227251263%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl251229251268%_))
                                                  (_%__kont255733255734%_
                                                   _%hd251228251266%_
                                                   _%hd251225251258%_
                                                   _%hd251133251629%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g251124251234%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g251124251234%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g251124251234%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl251171251457%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl251134251631%_))
                          (let ((_%e251209251352%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl251134251631%_))))
                            (let ((_%tl251211251357%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251209251352%_)))
                                  (_%hd251210251355%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251209251352%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl251211251357%_))
                                  (let ((_%e251212251360%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl251211251357%_))))
                                    (let ((_%tl251214251365%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251212251360%_)))
                                          (_%hd251213251363%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251212251360%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl251214251365%_))
                                          (_%__match255932255933%_
                                           _%e251129251618%_
                                           _%hd251130251621%_
                                           _%tl251131251623%_
                                           _%e251132251626%_
                                           _%hd251133251629%_
                                           _%tl251134251631%_
                                           _%e251135251634%_
                                           _%hd251136251637%_
                                           _%tl251137251639%_
                                           _%e251160251428%_
                                           _%hd251161251431%_
                                           _%tl251162251433%_
                                           _%e251163251436%_
                                           _%hd251164251439%_
                                           _%tl251165251441%_
                                           _%e251166251444%_
                                           _%hd251167251447%_
                                           _%tl251168251449%_
                                           _%e251169251452%_
                                           _%hd251170251455%_
                                           _%tl251171251457%_
                                           _%e251209251352%_
                                           _%hd251210251355%_
                                           _%tl251211251357%_
                                           _%e251212251360%_
                                           _%hd251213251363%_
                                           _%tl251214251365%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g251124251234%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g251124251234%_)))))
                          (let () (declare (not safe)) (_%g251124251234%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl251134251631%_))
                          (let ((_%e251224251255%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl251134251631%_))))
                            (let ((_%tl251226251260%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251224251255%_)))
                                  (_%hd251225251258%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251224251255%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl251226251260%_))
                                  (let ((_%e251227251263%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl251226251260%_))))
                                    (let ((_%tl251229251268%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251227251263%_)))
                                          (_%hd251228251266%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251227251263%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl251229251268%_))
                                          (_%__kont255733255734%_
                                           _%hd251228251266%_
                                           _%hd251225251258%_
                                           _%hd251133251629%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g251124251234%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g251124251234%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g251124251234%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl251134251631%_))
                                                      (let ((_%e251224251255%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl251134251631%_))))
                (let ((_%tl251226251260%_
                       (let () (declare (not safe)) (##cdr _%e251224251255%_)))
                      (_%hd251225251258%_
                       (let ()
                         (declare (not safe))
                         (##car _%e251224251255%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl251226251260%_))
                      (let ((_%e251227251263%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl251226251260%_))))
                        (let ((_%tl251229251268%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251227251263%_)))
                              (_%hd251228251266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251227251263%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251229251268%_))
                              (_%__kont255733255734%_
                               _%hd251228251266%_
                               _%hd251225251258%_
                               _%hd251133251629%_)
                              (let ()
                                (declare (not safe))
                                (_%g251124251234%_)))))
                      (let () (declare (not safe)) (_%g251124251234%_)))))
              (let () (declare (not safe)) (_%g251124251234%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl251134251631%_))
                                                  (let ((_%e251224251255%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl251134251631%_))))
                                                    (let ((_%tl251226251260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251224251255%_)))
                                                          (_%hd251225251258%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251224251255%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl251226251260%_))
                                                          (let ((_%e251227251263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl251226251260%_))))
                    (let ((_%tl251229251268%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e251227251263%_)))
                          (_%hd251228251266%_
                           (let ()
                             (declare (not safe))
                             (##car _%e251227251263%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl251229251268%_))
                          (_%__kont255733255734%_
                           _%hd251228251266%_
                           _%hd251225251258%_
                           _%hd251133251629%_)
                          (let () (declare (not safe)) (_%g251124251234%_)))))
                  (let () (declare (not safe)) (_%g251124251234%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g251124251234%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl251134251631%_))
                                          (let ((_%e251224251255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl251134251631%_))))
                                            (let ((_%tl251226251260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e251224251255%_)))
                                                  (_%hd251225251258%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e251224251255%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl251226251260%_))
                                                  (let ((_%e251227251263%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl251226251260%_))))
                                                    (let ((_%tl251229251268%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251227251263%_)))
                                                          (_%hd251228251266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251227251263%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl251229251268%_))
                                                          (_%__kont255733255734%_
                                                           _%hd251228251266%_
                                                           _%hd251225251258%_
                                                           _%hd251133251629%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g251124251234%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g251124251234%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g251124251234%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl251134251631%_))
                                      (let ((_%e251224251255%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl251134251631%_))))
                                        (let ((_%tl251226251260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251224251255%_)))
                                              (_%hd251225251258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251224251255%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl251226251260%_))
                                              (let ((_%e251227251263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl251226251260%_))))
                                                (let ((_%tl251229251268%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e251227251263%_)))
                                                      (_%hd251228251266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e251227251263%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl251229251268%_))
                                                      (_%__kont255733255734%_
                                                       _%hd251228251266%_
                                                       _%hd251225251258%_
                                                       _%hd251133251629%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g251124251234%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g251124251234%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g251124251234%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl251134251631%_))
                                  (let ((_%e251224251255%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl251134251631%_))))
                                    (let ((_%tl251226251260%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251224251255%_)))
                                          (_%hd251225251258%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251224251255%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl251226251260%_))
                                          (let ((_%e251227251263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl251226251260%_))))
                                            (let ((_%tl251229251268%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e251227251263%_)))
                                                  (_%hd251228251266%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e251227251263%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl251229251268%_))
                                                  (_%__kont255733255734%_
                                                   _%hd251228251266%_
                                                   _%hd251225251258%_
                                                   _%hd251133251629%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g251124251234%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g251124251234%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g251124251234%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl251134251631%_))
                          (let ((_%e251224251255%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl251134251631%_))))
                            (let ((_%tl251226251260%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251224251255%_)))
                                  (_%hd251225251258%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251224251255%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl251226251260%_))
                                  (let ((_%e251227251263%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl251226251260%_))))
                                    (let ((_%tl251229251268%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251227251263%_)))
                                          (_%hd251228251266%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251227251263%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl251229251268%_))
                                          (_%__kont255733255734%_
                                           _%hd251228251266%_
                                           _%hd251225251258%_
                                           _%hd251133251629%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g251124251234%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g251124251234%_)))))
                          (let () (declare (not safe)) (_%g251124251234%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl251134251631%_))
                  (let ((_%e251224251255%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl251134251631%_))))
                    (let ((_%tl251226251260%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e251224251255%_)))
                          (_%hd251225251258%_
                           (let ()
                             (declare (not safe))
                             (##car _%e251224251255%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl251226251260%_))
                          (let ((_%e251227251263%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl251226251260%_))))
                            (let ((_%tl251229251268%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251227251263%_)))
                                  (_%hd251228251266%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251227251263%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl251229251268%_))
                                  (_%__kont255733255734%_
                                   _%hd251228251266%_
                                   _%hd251225251258%_
                                   _%hd251133251629%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g251124251234%_)))))
                          (let () (declare (not safe)) (_%g251124251234%_)))))
                  (let () (declare (not safe)) (_%g251124251234%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl251134251631%_))
                                                      (let ((_%e251224251255%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl251134251631%_))))
                (let ((_%tl251226251260%_
                       (let () (declare (not safe)) (##cdr _%e251224251255%_)))
                      (_%hd251225251258%_
                       (let ()
                         (declare (not safe))
                         (##car _%e251224251255%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl251226251260%_))
                      (let ((_%e251227251263%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl251226251260%_))))
                        (let ((_%tl251229251268%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251227251263%_)))
                              (_%hd251228251266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251227251263%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251229251268%_))
                              (_%__kont255733255734%_
                               _%hd251228251266%_
                               _%hd251225251258%_
                               _%hd251133251629%_)
                              (let ()
                                (declare (not safe))
                                (_%g251124251234%_)))))
                      (let () (declare (not safe)) (_%g251124251234%_)))))
              (let () (declare (not safe)) (_%g251124251234%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl251134251631%_))
                                              (let ((_%e251224251255%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl251134251631%_))))
                                                (let ((_%tl251226251260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e251224251255%_)))
                                                      (_%hd251225251258%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e251224251255%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl251226251260%_))
                                                      (let ((_%e251227251263%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl251226251260%_))))
                (let ((_%tl251229251268%_
                       (let () (declare (not safe)) (##cdr _%e251227251263%_)))
                      (_%hd251228251266%_
                       (let ()
                         (declare (not safe))
                         (##car _%e251227251263%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl251229251268%_))
                      (_%__kont255733255734%_
                       _%hd251228251266%_
                       _%hd251225251258%_
                       _%hd251133251629%_)
                      (let () (declare (not safe)) (_%g251124251234%_)))))
              (let () (declare (not safe)) (_%g251124251234%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g251124251234%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl251134251631%_))
                                      (let ((_%e251224251255%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl251134251631%_))))
                                        (let ((_%tl251226251260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251224251255%_)))
                                              (_%hd251225251258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251224251255%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl251226251260%_))
                                              (let ((_%e251227251263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl251226251260%_))))
                                                (let ((_%tl251229251268%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e251227251263%_)))
                                                      (_%hd251228251266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e251227251263%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl251229251268%_))
                                                      (_%__kont255733255734%_
                                                       _%hd251228251266%_
                                                       _%hd251225251258%_
                                                       _%hd251133251629%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g251124251234%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g251124251234%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g251124251234%_))))))
                          (let () (declare (not safe)) (_%g251124251234%_)))))
                  (let () (declare (not safe)) (_%g251124251234%_))))))))))
