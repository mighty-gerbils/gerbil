(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1771104522)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp255020 (list gxc#::basic-xform::t))
            (__tmp255019 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp255020
         '()
         __tmp255019
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args254297%_
        (apply make-instance gxc#::optimize-call::t _%$args254297%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp255021
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
        (__make-atomic-promise __tmp255021)))
    (define gxc#apply-optimize-call
      (lambda (_%stx254289%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self254292%_
                (let ((__obj255011
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj255011))
               (__tmp255022
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self254292%_ _%stx254289%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp255022
           gxc#current-compile-method
           _%self254292%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp255024 (list gxc#::void::t))
            (__tmp255023 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp255024
         '()
         __tmp255023
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args254286%_
        (apply make-instance gxc#::check-return-type::t _%$args254286%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp255025
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
        (__make-atomic-promise __tmp255025)))
    (define gxc#apply-check-return-type
      (lambda (_%stx254278%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self254281%_
                (let ((__obj255013
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj255013))
               (__tmp255026
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self254281%_ _%stx254278%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp255026
           gxc#current-compile-method
           _%self254281%_))))
    (define gxc#optimize-call%
      (lambda (_%self253885%_ _%stx253886%_)
        (let* ((_%__stx254366254367%_ _%stx253886%_)
               (_%g253889253935%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254366254367%_)))))
          (let ((_%__kont254368254369%_
                 (lambda (_%g253891254074%_ _%g253892254075%_)
                   (let* ((_%rator-id254095%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g253892254075%_)))
                          (_%rator-type254097%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id254095%_))))
                     (if (or (not _%rator-type254097%_)
                             (eq? (##structure-ref
                                   _%rator-type254097%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self253885%_ _%stx253886%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type254097%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp255027
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type254097%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id254095%_
                                  '" => "
                                  _%rator-type254097%_
                                  '" "
                                  __tmp255027))
                               (let* ((_%optimized254112%_
                                       (let ((__method255014
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type254097%_
                                                 'optimize-call))))
                                         (if __method255014
                                             (let ((__tmp255028
                                                    (let ((__tmp255029
                                                           (lambda (_%g254104254107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g254105254109%_)
                     (cons _%g254104254107%_ _%g254105254109%_))))
              (declare (not safe))
              (foldr__0 __tmp255029 '() _%g253891254074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method255014
                                                _%rator-type254097%_
                                                _%self253885%_
                                                _%stx253886%_
                                                __tmp255028))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type254097%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx254314254315%_
                                       _%optimized254112%_)
                                      (_%g254115254144%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx254314254315%_)))))
                                 (let ((_%__kont254316254317%_
                                        (lambda (_%g254117254210%_
                                                 _%g254118254211%_)
                                          (let* ((_%optimized-rator-id254238%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g254118254211%_)))
                                                 (_%rator-type254243%_
                                                  (let ((_%$e254240%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id254238%_))))
                                                    (if _%$e254240%_
                                                        _%$e254240%_
                                                        _%rator-type254097%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type254243%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id254238%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type254243%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type254243%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized254112%_
                                                (let ((__tmp255030
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g254118254211%_ '()))
                           (let ((__tmp255031
                                  (lambda (_%g254251254254%_ _%g254252254256%_)
                                    (cons _%g254251254254%_
                                          _%g254252254256%_))))
                             (declare (not safe))
                             (foldr__0 __tmp255031 '() _%g254117254210%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp255030
                                                   _%stx253886%_))))))
                                       (_%__kont254320254321%_
                                        (lambda () _%optimized254112%_)))
                                   (let ((_%__match254363254364%_
                                          (lambda (_%e254119254156%_
                                                   _%hd254120254159%_
                                                   _%tl254121254161%_
                                                   _%e254122254164%_
                                                   _%hd254123254167%_
                                                   _%tl254124254169%_
                                                   _%e254125254172%_
                                                   _%hd254126254175%_
                                                   _%tl254127254177%_
                                                   _%e254128254180%_
                                                   _%hd254129254183%_
                                                   _%tl254130254185%_
                                                   _%__splice254318254319%_
                                                   _%target254131254188%_
                                                   _%tl254133254190%_)
                                            (letrec ((_%loop254134254193%_
                                                      (lambda (_%hd254132254196%_
                                                               _%arg254138254198%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd254132254196%_))
                                                            (let ((_%e254135254200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd254132254196%_))))
                      (let ((_%lp-tl254137254205%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e254135254200%_)))
                            (_%lp-hd254136254203%_
                             (let ()
                               (declare (not safe))
                               (##car _%e254135254200%_))))
                        (_%loop254134254193%_
                         _%lp-tl254137254205%_
                         (cons _%lp-hd254136254203%_ _%arg254138254198%_))))
                    (let ((_%arg254139254208%_ (reverse _%arg254138254198%_)))
                      (_%__kont254316254317%_
                       _%arg254139254208%_
                       _%hd254129254183%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop254134254193%_
                                               _%target254131254188%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx254314254315%_))
                                         (let ((_%e254119254156%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx254314254315%_))))
                                           (let ((_%tl254121254161%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e254119254156%_)))
                                                 (_%hd254120254159%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e254119254156%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd254120254159%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd254120254159%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl254121254161%_))
                                                         (let ((_%e254122254164%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl254121254161%_))))
                   (let ((_%tl254124254169%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e254122254164%_)))
                         (_%hd254123254167%_
                          (let ()
                            (declare (not safe))
                            (##car _%e254122254164%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd254123254167%_))
                         (let ((_%e254125254172%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd254123254167%_))))
                           (let ((_%tl254127254177%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e254125254172%_)))
                                 (_%hd254126254175%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e254125254172%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd254126254175%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd254126254175%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl254127254177%_))
                                         (let ((_%e254128254180%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl254127254177%_))))
                                           (let ((_%tl254130254185%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e254128254180%_)))
                                                 (_%hd254129254183%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e254128254180%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl254130254185%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl254124254169%_))
                                                     (let ((_%__splice254318254319%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl254124254169%_
                                                               '0))))
                                                       (let ((_%tl254133254190%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice254318254319%_ '1)))
                     (_%target254131254188%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice254318254319%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl254133254190%_))
                     (_%__match254363254364%_
                      _%e254119254156%_
                      _%hd254120254159%_
                      _%tl254121254161%_
                      _%e254122254164%_
                      _%hd254123254167%_
                      _%tl254124254169%_
                      _%e254125254172%_
                      _%hd254126254175%_
                      _%tl254127254177%_
                      _%e254128254180%_
                      _%hd254129254183%_
                      _%tl254130254185%_
                      _%__splice254318254319%_
                      _%target254131254188%_
                      _%tl254133254190%_)
                     (_%__kont254320254321%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont254320254321%_))
                                                 (_%__kont254320254321%_))))
                                         (_%__kont254320254321%_))
                                     (_%__kont254320254321%_))
                                 (_%__kont254320254321%_))))
                         (_%__kont254320254321%_))))
                 (_%__kont254320254321%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont254320254321%_))
                                                 (_%__kont254320254321%_))))
                                         (_%__kont254320254321%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type254097%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type254097%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp255032
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g253892254075%_
                                                                '()))
                                                    (map (lambda (_%g254262254264%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self253885%_
                                                              _%g254262254264%_)))
                                                         (let ((__tmp255033
                                                                (lambda (_%g254266254269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g254267254271%_)
                          (cons _%g254266254269%_ _%g254267254271%_))))
                   (declare (not safe))
                   (foldr__0 __tmp255033 '() _%g253891254074%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp255032
                                    _%stx253886%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx253886%_
                                    _%rator-type254097%_))))))))
                (_%__kont254372254373%_
                 (lambda (_%g253914253978%_ _%g253915253979%_)
                   (let ((_%rator-type253996%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g253915253979%_))))
                     (if (and _%rator-type253996%_
                              (eq? (##structure-ref
                                    _%rator-type253996%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type253996%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type253996%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type253996%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp255034
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self253885%_
                                               _%g253915253979%_))
                                            (map (lambda (_%g253998254000%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self253885%_
                                                      _%g253998254000%_)))
                                                 (let ((__tmp255035
                                                        (lambda (_%g254002254005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g254003254007%_)
                  (cons _%g254002254005%_ _%g254003254007%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp255035
                                                    '()
                                                    _%g253914253978%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp255034 _%stx253886%_))
                         (if (or (not _%rator-type253996%_)
                                 (let ((__tmp255036
                                        (##structure-ref
                                         _%rator-type253996%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp255036 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self253885%_ _%stx253886%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx253886%_
                                _%rator-type253996%_))))))))
            (let* ((_%__match254433254434%_
                    (lambda (_%e253916253940%_
                             _%hd253917253943%_
                             _%tl253918253945%_
                             _%e253919253948%_
                             _%hd253920253951%_
                             _%tl253921253953%_
                             _%__splice254374254375%_
                             _%target253922253956%_
                             _%tl253924253958%_)
                      (letrec ((_%loop253925253961%_
                                (lambda (_%hd253923253964%_
                                         _%rand253929253966%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd253923253964%_))
                                      (let ((_%e253926253968%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd253923253964%_))))
                                        (let ((_%lp-tl253928253973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253926253968%_)))
                                              (_%lp-hd253927253971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253926253968%_))))
                                          (_%loop253925253961%_
                                           _%lp-tl253928253973%_
                                           (cons _%lp-hd253927253971%_
                                                 _%rand253929253966%_))))
                                      (let ((_%rand253930253976%_
                                             (reverse _%rand253929253966%_)))
                                        (_%__kont254372254373%_
                                         _%rand253930253976%_
                                         _%hd253920253951%_))))))
                        (_%loop253925253961%_ _%target253922253956%_ '()))))
                   (_%__match254413254414%_
                    (lambda (_%e253893254020%_
                             _%hd253894254023%_
                             _%tl253895254025%_
                             _%e253896254028%_
                             _%hd253897254031%_
                             _%tl253898254033%_
                             _%e253899254036%_
                             _%hd253900254039%_
                             _%tl253901254041%_
                             _%e253902254044%_
                             _%hd253903254047%_
                             _%tl253904254049%_
                             _%__splice254370254371%_
                             _%target253905254052%_
                             _%tl253907254054%_)
                      (letrec ((_%loop253908254057%_
                                (lambda (_%hd253906254060%_
                                         _%rand253912254062%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd253906254060%_))
                                      (let ((_%e253909254064%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd253906254060%_))))
                                        (let ((_%lp-tl253911254069%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253909254064%_)))
                                              (_%lp-hd253910254067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253909254064%_))))
                                          (_%loop253908254057%_
                                           _%lp-tl253911254069%_
                                           (cons _%lp-hd253910254067%_
                                                 _%rand253912254062%_))))
                                      (let ((_%rand253913254072%_
                                             (reverse _%rand253912254062%_)))
                                        (_%__kont254368254369%_
                                         _%rand253913254072%_
                                         _%hd253903254047%_))))))
                        (_%loop253908254057%_ _%target253905254052%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254366254367%_))
                  (let ((_%e253893254020%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254366254367%_))))
                    (let ((_%tl253895254025%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253893254020%_)))
                          (_%hd253894254023%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253893254020%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl253895254025%_))
                          (let ((_%e253896254028%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl253895254025%_))))
                            (let ((_%tl253898254033%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253896254028%_)))
                                  (_%hd253897254031%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253896254028%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd253897254031%_))
                                  (let ((_%e253899254036%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd253897254031%_))))
                                    (let ((_%tl253901254041%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253899254036%_)))
                                          (_%hd253900254039%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253899254036%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd253900254039%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd253900254039%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl253901254041%_))
                                                  (let ((_%e253902254044%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl253901254041%_))))
                                                    (let ((_%tl253904254049%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e253902254044%_)))
                                                          (_%hd253903254047%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e253902254044%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl253904254049%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl253898254033%_))
                      (let ((_%__splice254370254371%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl253898254033%_
                                '0))))
                        (let ((_%tl253907254054%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254370254371%_ '1)))
                              (_%target253905254052%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254370254371%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253907254054%_))
                              (_%__match254413254414%_
                               _%e253893254020%_
                               _%hd253894254023%_
                               _%tl253895254025%_
                               _%e253896254028%_
                               _%hd253897254031%_
                               _%tl253898254033%_
                               _%e253899254036%_
                               _%hd253900254039%_
                               _%tl253901254041%_
                               _%e253902254044%_
                               _%hd253903254047%_
                               _%tl253904254049%_
                               _%__splice254370254371%_
                               _%target253905254052%_
                               _%tl253907254054%_)
                              (let ()
                                (declare (not safe))
                                (_%g253889253935%_)))))
                      (let () (declare (not safe)) (_%g253889253935%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl253898254033%_))
                      (let ((_%__splice254374254375%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl253898254033%_
                                '0))))
                        (let ((_%tl253924253958%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254374254375%_ '1)))
                              (_%target253922253956%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254374254375%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253924253958%_))
                              (_%__match254433254434%_
                               _%e253893254020%_
                               _%hd253894254023%_
                               _%tl253895254025%_
                               _%e253896254028%_
                               _%hd253897254031%_
                               _%tl253898254033%_
                               _%__splice254374254375%_
                               _%target253922253956%_
                               _%tl253924253958%_)
                              (let ()
                                (declare (not safe))
                                (_%g253889253935%_)))))
                      (let () (declare (not safe)) (_%g253889253935%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl253898254033%_))
                                                      (let ((_%__splice254374254375%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl253898254033%_
                        '0))))
                (let ((_%tl253924253958%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice254374254375%_ '1)))
                      (_%target253922253956%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice254374254375%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl253924253958%_))
                      (_%__match254433254434%_
                       _%e253893254020%_
                       _%hd253894254023%_
                       _%tl253895254025%_
                       _%e253896254028%_
                       _%hd253897254031%_
                       _%tl253898254033%_
                       _%__splice254374254375%_
                       _%target253922253956%_
                       _%tl253924253958%_)
                      (let () (declare (not safe)) (_%g253889253935%_)))))
              (let () (declare (not safe)) (_%g253889253935%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl253898254033%_))
                                                  (let ((_%__splice254374254375%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl253898254033%_
                                                            '0))))
                                                    (let ((_%tl253924253958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254374254375%_
                                                              '1)))
                                                          (_%target253922253956%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254374254375%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl253924253958%_))
                                                          (_%__match254433254434%_
                                                           _%e253893254020%_
                                                           _%hd253894254023%_
                                                           _%tl253895254025%_
                                                           _%e253896254028%_
                                                           _%hd253897254031%_
                                                           _%tl253898254033%_
                                                           _%__splice254374254375%_
                                                           _%target253922253956%_
                                                           _%tl253924253958%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g253889253935%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g253889253935%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl253898254033%_))
                                              (let ((_%__splice254374254375%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl253898254033%_
                                                        '0))))
                                                (let ((_%tl253924253958%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice254374254375%_
                                                          '1)))
                                                      (_%target253922253956%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice254374254375%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl253924253958%_))
                                                      (_%__match254433254434%_
                                                       _%e253893254020%_
                                                       _%hd253894254023%_
                                                       _%tl253895254025%_
                                                       _%e253896254028%_
                                                       _%hd253897254031%_
                                                       _%tl253898254033%_
                                                       _%__splice254374254375%_
                                                       _%target253922253956%_
                                                       _%tl253924253958%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g253889253935%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g253889253935%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl253898254033%_))
                                      (let ((_%__splice254374254375%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl253898254033%_
                                                '0))))
                                        (let ((_%tl253924253958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254374254375%_
                                                  '1)))
                                              (_%target253922253956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254374254375%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253924253958%_))
                                              (_%__match254433254434%_
                                               _%e253893254020%_
                                               _%hd253894254023%_
                                               _%tl253895254025%_
                                               _%e253896254028%_
                                               _%hd253897254031%_
                                               _%tl253898254033%_
                                               _%__splice254374254375%_
                                               _%target253922253956%_
                                               _%tl253924253958%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g253889253935%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g253889253935%_))))))
                          (let () (declare (not safe)) (_%g253889253935%_)))))
                  (let () (declare (not safe)) (_%g253889253935%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self253847%_ _%ctx253848%_ _%stx253849%_ _%args253850%_)
        (let ((_%self253853%_ _%self253847%_))
          (if (let ((__method255015
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self253853%_ 'check-arguments))))
                (if __method255015
                    (let ()
                      (declare (not safe))
                      (__method255015
                       _%self253853%_
                       _%ctx253848%_
                       _%stx253849%_
                       _%args253850%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self253853%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature253863%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253853%_ '2 '#f '#f)))
                     (_%signature253865%_ _%signature253863%_)
                     (_%$e253875%_
                      (if _%signature253865%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature253865%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e253875%_
                    ((lambda (_%unchecked253878%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked253878%_))
                           (let ((__tmp255037
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked253878%_
                                                          '()))
                                              (map (lambda (_%g253879253881%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx253848%_
                                                        _%g253879253881%_)))
                                                   _%args253850%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp255037
                              _%stx253849%_
                              _%ctx253848%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx253848%_ _%stx253849%_))))
                     _%$e253875%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx253848%_ _%stx253849%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx253848%_ _%stx253849%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass254299 __method-table254300)
        (let ((__check-arguments254301
               (let ((__tmp255038
                      (lambda ()
                        (let ((__method254302
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table254300
                                  'check-arguments
                                  '#f))))
                          (if __method254302
                              __method254302
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp255038))))
          (lambda (_%self253847%_ _%ctx253848%_ _%stx253849%_ _%args253850%_)
            (let ((_%self253853%_ _%self253847%_))
              (if ((force __check-arguments254301)
                   _%self253853%_
                   _%ctx253848%_
                   _%stx253849%_
                   _%args253850%_)
                  (let* ((_%signature253863%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self253853%_
                             '2
                             '#f
                             '#f)))
                         (_%signature253865%_ _%signature253863%_)
                         (_%$e253875%_
                          (if _%signature253865%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature253865%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e253875%_
                        ((lambda (_%unchecked253878%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked253878%_))
                               (let ((__tmp255039
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked253878%_
                                                              '()))
                                                  (map (lambda (_%g253879253881%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx253848%_
                                                            _%g253879253881%_)))
                                                       _%args253850%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp255039
                                  _%stx253849%_
                                  _%ctx253848%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx253848%_
                                  _%stx253849%_))))
                         _%$e253875%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx253848%_ _%stx253849%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx253848%_ _%stx253849%_))))))))
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
      (lambda (_%self253600%_ _%ctx253601%_ _%stx253602%_ _%args253603%_)
        (let* ((_%self253606%_ _%self253600%_)
               (_%signature253615253617%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253606%_ '2 '#f '#f))))
          (if _%signature253615253617%_
              (let* ((_%signature253619%_ _%signature253615253617%_)
                     (_%argument-types253620253622%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature253619%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types253620253622%_
                    (let* ((_%argument-types253624%_
                            _%argument-types253620253622%_)
                           (_%argument-types253629%_
                            (let ((__tmp255040
                                   (lambda (_%t253627%_)
                                     (if _%t253627%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx253602%_
                                            _%t253627%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp255040
                               _%argument-types253624%_))))
                      (let _%loop253631%_ ((_%rest-args253633%_ _%args253603%_)
                                           (_%rest-types253634%_
                                            _%argument-types253629%_)
                                           (_%result253635%_ '#t))
                        (let* ((_%rest-args253636253644%_ _%rest-args253633%_)
                               (_%else253638253652%_
                                (lambda () _%result253635%_))
                               (_%K253640253713%_
                                (lambda (_%rest-args253655%_ _%arg253656%_)
                                  (let* ((_%rest-types253657253668%_
                                          _%rest-types253634%_)
                                         (_%E253661253672%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types253657253668%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K253664253701%_
                                           (lambda (_%rest-types253698%_
                                                    _%type253699%_)
                                             (_%loop253631%_
                                              _%rest-args253655%_
                                              _%rest-types253698%_
                                              (if (gxc#check-expression-type!
                                                   _%stx253602%_
                                                   _%arg253656%_
                                                   _%type253699%_)
                                                  _%result253635%_
                                                  '#f))))
                                          (_%K253663253692%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx253602%_
                                                _%argument-types253629%_))))
                                          (_%K253662253682%_
                                           (lambda (_%tail-type253676%_)
                                             (if (let ((__tmp255041
                                                        (lambda (_%g253677253679%_)
                                                          (gxc#check-expression-type!
                                                           _%stx253602%_
                                                           _%g253677253679%_
                                                           _%tail-type253676%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp255041
                                                    _%rest-args253655%_))
                                                 _%result253635%_
                                                 '#f))))
                                      (let ((_%try-match253659253695%_
                                             (lambda ()
                                               (if (null? _%rest-types253657253668%_)
                                                   (_%K253663253692%_)
                                                   (let ((_%tail-type253685%_
                                                          _%rest-types253657253668%_))
                                                     (_%K253662253682%_
                                                      _%tail-type253685%_))))))
                                        (if (pair? _%rest-types253657253668%_)
                                            (let ((_%tl253666253706%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types253657253668%_)))
                                                  (_%hd253665253704%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types253657253668%_))))
                                              (let ((_%type253709%_
                                                     _%hd253665253704%_)
                                                    (_%rest-types253711%_
                                                     _%tl253666253706%_))
                                                (_%K253664253701%_
                                                 _%rest-types253711%_
                                                 _%type253709%_)))
                                            (_%try-match253659253695%_))))))))
                          (if (pair? _%rest-args253636253644%_)
                              (let ((_%hd253641253716%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args253636253644%_)))
                                    (_%tl253642253718%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args253636253644%_))))
                                (let* ((_%arg253721%_ _%hd253641253716%_)
                                       (_%rest-args253723%_
                                        _%tl253642253718%_))
                                  (_%K253640253713%_
                                   _%rest-args253723%_
                                   _%arg253721%_)))
                              (_%else253638253652%_)))))
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
      (lambda (_%self253411%_ _%ctx253412%_ _%stx253413%_ _%args253414%_)
        (let* ((_%self253417%_ _%self253411%_)
               (_%g253427253437%_
                (lambda (_%g253428253434%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g253428253434%_))))
               (_%g253426253475%_
                (lambda (_%g253428253440%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g253428253440%_))
                      (let ((_%e253430253442%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g253428253440%_))))
                        (let ((_%hd253431253445%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253430253442%_)))
                              (_%tl253432253447%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253430253442%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253432253447%_))
                              ((lambda (_%g253429253450%_)
                                 (let* ((_%klass253462%_
                                         (let ((__tmp255042
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self253417%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx253413%_
                                            __tmp255042)))
                                        (_%object253464%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx253412%_
                                            _%g253429253450%_)))
                                        (_%instance?253469%_
                                         (let ((_%$e253466%_
                                                (gxc#expression-type?
                                                 _%object253464%_
                                                 _%klass253462%_)))
                                           (if _%$e253466%_
                                               _%$e253466%_
                                               (gxc#expression-type?
                                                _%g253429253450%_
                                                _%klass253462%_)))))
                                   (if _%instance?253469%_
                                       (let ((__tmp255043
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object253464%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g253429253450%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object253464%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255043
                                          _%stx253413%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx253412%_
                                          _%stx253413%_)))))
                               _%hd253431253445%_)
                              (_%g253427253437%_ _%g253428253440%_))))
                      (_%g253427253437%_ _%g253428253440%_)))))
          (_%g253426253475%_ _%args253414%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self253207%_ _%ctx253208%_ _%stx253209%_ _%args253210%_)
        (let* ((_%self253213%_ _%self253207%_)
               (_%g253223253233%_
                (lambda (_%g253224253230%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g253224253230%_))))
               (_%g253222253286%_
                (lambda (_%g253224253236%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g253224253236%_))
                      (let ((_%e253226253238%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g253224253236%_))))
                        (let ((_%hd253227253241%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253226253238%_)))
                              (_%tl253228253243%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253226253238%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253228253243%_))
                              ((lambda (_%g253225253246%_)
                                 (let* ((_%klass253258%_
                                         (let ((__tmp255044
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self253213%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx253209%_
                                            __tmp255044)))
                                        (_%object253260%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx253208%_
                                            _%g253225253246%_)))
                                        (_%instance?253265%_
                                         (let ((_%$e253262%_
                                                (gxc#expression-type?
                                                 _%object253260%_
                                                 _%klass253258%_)))
                                           (if _%$e253262%_
                                               _%$e253262%_
                                               (gxc#expression-type?
                                                _%g253225253246%_
                                                _%klass253258%_))))
                                        (_%klass253268%_ _%klass253258%_))
                                   (if _%instance?253265%_
                                       (let ((__tmp255045
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object253260%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g253225253246%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object253260%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255045
                                          _%stx253209%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass253268%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp255046
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass253268%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object253260%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp255046
                                              _%stx253209%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass253268%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp255047
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass253268%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object253260%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp255047
                                                  _%stx253209%_))
                                               (let ((__tmp255048
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self253213%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object253260%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp255048
                                                  _%stx253209%_)))))))
                               _%hd253227253241%_)
                              (_%g253223253233%_ _%g253224253236%_))))
                      (_%g253223253233%_ _%g253224253236%_)))))
          (_%g253222253286%_ _%args253210%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx252875%_)
        (let* ((_%__stx254443254444%_ _%stx252875%_)
               (_%g252880252921%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254443254444%_)))))
          (let ((_%__kont254445254446%_ (lambda () '#t))
                (_%__kont254447254448%_ (lambda () '#t))
                (_%__kont254449254450%_
                 (lambda (_%g252894252987%_ _%g252895252988%_)
                   (let ((_%rator-type253009253011%_
                          (let ((__tmp255049
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g252895252988%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp255049))))
                     (if _%rator-type253009253011%_
                         (let* ((_%rator-type253013%_
                                 _%rator-type253009253011%_)
                                (_%rator-signature253014253016%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type253013%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type253013%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature253014253016%_
                               (let* ((_%rator-signature253018%_
                                       _%rator-signature253014253016%_)
                                      (_%rator-effect253019253021%_
                                       (if _%rator-signature253018%_
                                           (##direct-structure-ref
                                            _%rator-signature253018%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect253019253021%_
                                     (let ((_%rator-effect253023%_
                                            _%rator-effect253019253021%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect253023%_)
                                               (equal? '(alloc)
                                                       _%rator-effect253023%_))
                                           (let ((__tmp255050
                                                  (let ((__tmp255051
                                                         (lambda (_%g253028253031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g253029253033%_)
                   (cons _%g253028253031%_ _%g253029253033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp255051
                                                     '()
                                                     _%g252894252987%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp255050))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont254453254454%_ (lambda () '#f)))
            (let ((_%__match254532254533%_
                   (lambda (_%e252896252933%_
                            _%hd252897252936%_
                            _%tl252898252938%_
                            _%e252899252941%_
                            _%hd252900252944%_
                            _%tl252901252946%_
                            _%e252902252949%_
                            _%hd252903252952%_
                            _%tl252904252954%_
                            _%e252905252957%_
                            _%hd252906252960%_
                            _%tl252907252962%_
                            _%__splice254451254452%_
                            _%target252908252965%_
                            _%tl252910252967%_)
                     (letrec ((_%loop252911252970%_
                               (lambda (_%hd252909252973%_
                                        _%rand252915252975%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd252909252973%_))
                                     (let ((_%e252912252977%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd252909252973%_))))
                                       (let ((_%lp-tl252914252982%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e252912252977%_)))
                                             (_%lp-hd252913252980%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e252912252977%_))))
                                         (_%loop252911252970%_
                                          _%lp-tl252914252982%_
                                          (cons _%lp-hd252913252980%_
                                                _%rand252915252975%_))))
                                     (let ((_%rand252916252985%_
                                            (reverse _%rand252915252975%_)))
                                       (_%__kont254449254450%_
                                        _%rand252916252985%_
                                        _%hd252906252960%_))))))
                       (_%loop252911252970%_ _%target252908252965%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254443254444%_))
                  (let ((_%e252882253064%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254443254444%_))))
                    (let ((_%tl252884253069%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e252882253064%_)))
                          (_%hd252883253067%_
                           (let ()
                             (declare (not safe))
                             (##car _%e252882253064%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd252883253067%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd252883253067%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl252884253069%_))
                                  (let ((_%e252885253072%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl252884253069%_))))
                                    (let ((_%tl252887253077%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252885253072%_)))
                                          (_%hd252886253075%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252885253072%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl252887253077%_))
                                          (_%__kont254445254446%_)
                                          (_%__kont254453254454%_))))
                                  (_%__kont254453254454%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd252883253067%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl252884253069%_))
                                      (let ((_%e252891253049%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl252884253069%_))))
                                        (let ((_%tl252893253054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252891253049%_)))
                                              (_%hd252892253052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252891253049%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl252893253054%_))
                                              (_%__kont254447254448%_)
                                              (_%__kont254453254454%_))))
                                      (_%__kont254453254454%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd252883253067%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl252884253069%_))
                                          (let ((_%e252899252941%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl252884253069%_))))
                                            (let ((_%tl252901252946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e252899252941%_)))
                                                  (_%hd252900252944%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e252899252941%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd252900252944%_))
                                                  (let ((_%e252902252949%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd252900252944%_))))
                                                    (let ((_%tl252904252954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e252902252949%_)))
                                                          (_%hd252903252952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e252902252949%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd252903252952%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd252903252952%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl252904252954%_))
                          (let ((_%e252905252957%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl252904252954%_))))
                            (let ((_%tl252907252962%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252905252957%_)))
                                  (_%hd252906252960%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252905252957%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl252907252962%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl252901252946%_))
                                      (let ((_%__splice254451254452%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl252901252946%_
                                                '0))))
                                        (let ((_%tl252910252967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254451254452%_
                                                  '1)))
                                              (_%target252908252965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254451254452%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl252910252967%_))
                                              (_%__match254532254533%_
                                               _%e252882253064%_
                                               _%hd252883253067%_
                                               _%tl252884253069%_
                                               _%e252899252941%_
                                               _%hd252900252944%_
                                               _%tl252901252946%_
                                               _%e252902252949%_
                                               _%hd252903252952%_
                                               _%tl252904252954%_
                                               _%e252905252957%_
                                               _%hd252906252960%_
                                               _%tl252907252962%_
                                               _%__splice254451254452%_
                                               _%target252908252965%_
                                               _%tl252910252967%_)
                                              (_%__kont254453254454%_))))
                                      (_%__kont254453254454%_))
                                  (_%__kont254453254454%_))))
                          (_%__kont254453254454%_))
                      (_%__kont254453254454%_))
                  (_%__kont254453254454%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont254453254454%_))))
                                          (_%__kont254453254454%_))
                                      (_%__kont254453254454%_))))
                          (_%__kont254453254454%_))))
                  (_%__kont254453254454%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx252870%_ _%klass252871%_)
        (let ((_%expr-type252873%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx252870%_))))
          (if _%expr-type252873%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type252873%_ _%klass252871%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx252848%_ _%expr252849%_ _%type252850%_)
        (if (not _%type252850%_)
            '#f
            (let ((_%$e252853%_
                   (eq? (##structure-ref _%type252850%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e252853%_
                  _%$e252853%_
                  (let ((_%expr-type252857%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr252849%_))))
                    (if (not _%expr-type252857%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type252857%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e252861%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type252857%_
                                      'gxc#!abort::t))))
                              (if _%$e252861%_
                                  _%$e252861%_
                                  (let ((_%$e252864%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type252857%_
                                            _%type252850%_))))
                                    (if _%$e252864%_
                                        _%$e252864%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type252850%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type252850%_
                                                   _%expr-type252857%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx252848%_
                                                   _%expr252849%_
                                                   _%expr-type252857%_
                                                   _%type252850%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self252662%_ _%ctx252663%_ _%stx252664%_ _%args252665%_)
        (let* ((_%self252668%_ _%self252662%_)
               (_%klass252678%_
                (let ((__tmp255052
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self252668%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx252664%_ __tmp255052)))
               (_%fields252680%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass252678%_
                           '5
                           '#f
                           '#f))))
               (_%args252686%_
                (map (lambda (_%g252681252683%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx252663%_ _%g252681252683%_)))
                     _%args252665%_))
               (_%inline-make-object252688%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self252668%_
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
                           _%self252668%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields252680%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass252691%_ _%klass252678%_)
               (_%$e252705%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass252691%_ '6 '#f '#f))))
          (if _%$e252705%_
              ((lambda (_%ctor252708%_)
                 (let ((_%$obj252710%_
                        (let ((__tmp255053
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp255053)))
                       (_%ctor-impl252711%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass252691%_
                           _%ctor252708%_))))
                   (let ((__tmp255054
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj252710%_ '())
                                                  (cons _%inline-make-object252688%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl252711%_
                                                            (let ((__tmp255055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl252711%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj252710%_ '()))
                                             _%args252686%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp255055
                       _%stx252664%_
                       _%ctx252663%_))
                    (let ((_%$ctor252713%_
                           (let ((__tmp255056
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp255056))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor252713%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252668%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj252710%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor252708%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor252713%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor252713%_ '()))
                              (cons (cons '%#ref (cons _%$obj252710%_ '()))
                                    _%args252686%_)))
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
                             _%self252668%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor252708%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj252710%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp255054 _%stx252664%_))))
               _%$e252705%_)
              (let ((_%$e252715%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass252691%_
                        '10
                        '#f
                        '#f))))
                (if _%$e252715%_
                    ((lambda (_%metaclass252718%_)
                       (let* ((_%$obj252720%_
                               (let ((__tmp255057
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp255057)))
                              (_%metakons252722%_
                               (let ((__tmp255058
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx252664%_
                                         _%metaclass252718%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp255058
                                  'instance-init!)))
                              (__tmp255059
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj252720%_
                                                             '())
                                                       (cons _%inline-make-object252688%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons252722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp255060
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons252722%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self252668%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj252720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args252686%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp255060
                            _%stx252664%_
                            _%ctx252663%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self252668%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj252720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args252686%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj252720%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255059 _%stx252664%_)))
                     _%$e252715%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass252691%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp255061
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args252686%_))))
                              (declare (not safe))
                              (##fx= __tmp255061 _%fields252680%_))
                            (let ((__tmp255062
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self252668%_
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
                                              _%self252668%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args252686%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp255062
                               _%stx252664%_))
                            (let ((__tmp255064
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self252668%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp255063
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass252691%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx252664%_
                               __tmp255064
                               __tmp255063)))
                        (let ((_%$obj252727%_
                               (let ((__tmp255065
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp255065))))
                          (let _%lp252729%_ ((_%rest252731%_ _%args252686%_)
                                             (_%initializers252732%_ '()))
                            (let* ((_%__stx254535254536%_ _%rest252731%_)
                                   (_%g252736252757%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx254535254536%_)))))
                              (let ((_%__kont254537254538%_
                                     (lambda (_%g252738252811%_
                                              _%g252739252812%_
                                              _%g252740252813%_)
                                       (let* ((_%slot252840%_
                                               (let ((__tmp255066
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g252740252813%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp255066)))
                                              (_%off252842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass252691%_
                                                  _%slot252840%_))))
                                         (if _%off252842%_
                                             (_%lp252729%_
                                              _%g252738252811%_
                                              (cons (cons _%off252842%_
                                                          _%g252739252812%_)
                                                    _%initializers252732%_))
                                             (let ((__tmp255067
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self252668%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx252664%_
                                                __tmp255067
                                                _%slot252840%_))))))
                                    (_%__kont254539254540%_
                                     (lambda ()
                                       (let ((__tmp255068
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj252727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object252688%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp255071
                                     (cons (cons '%#ref
                                                 (cons _%$obj252727%_ '()))
                                           '()))
                                    (__tmp255069
                                     (let ((__tmp255070
                                            (lambda (_%i252771%_ _%r252772%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self252668%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i252771%_) '()))
                              (cons (cons '%#ref (cons _%$obj252727%_ '()))
                                    (cons (cdr _%i252771%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r252772%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp255070
                                        '()
                                        _%initializers252732%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp255071 __tmp255069)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255068
                                          _%stx252664%_))))
                                    (_%__kont254541254542%_
                                     (lambda ()
                                       (let ((__tmp255072
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj252727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object252688%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj252727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args252686%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj252727%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255072
                                          _%stx252664%_)))))
                                (let* ((_%g252734252774%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx254535254536%_))
                                              (_%__kont254539254540%_)
                                              (_%__kont254541254542%_))))
                                       (_%__match254572254573%_
                                        (lambda (_%e252741252779%_
                                                 _%hd252742252782%_
                                                 _%tl252743252784%_
                                                 _%e252744252787%_
                                                 _%hd252745252790%_
                                                 _%tl252746252792%_
                                                 _%e252747252795%_
                                                 _%hd252748252798%_
                                                 _%tl252749252800%_
                                                 _%e252750252803%_
                                                 _%hd252751252806%_
                                                 _%tl252752252808%_)
                                          (let ((_%g252738252811%_
                                                 _%tl252752252808%_)
                                                (_%g252739252812%_
                                                 _%hd252751252806%_)
                                                (_%g252740252813%_
                                                 _%hd252748252798%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g252740252813%_))
                                                (_%__kont254537254538%_
                                                 _%g252738252811%_
                                                 _%g252739252812%_
                                                 _%g252740252813%_)
                                                (_%__kont254541254542%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx254535254536%_))
                                      (let ((_%e252741252779%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx254535254536%_))))
                                        (let ((_%tl252743252784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252741252779%_)))
                                              (_%hd252742252782%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252741252779%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd252742252782%_))
                                              (let ((_%e252744252787%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd252742252782%_))))
                                                (let ((_%tl252746252792%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e252744252787%_)))
                                                      (_%hd252745252790%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e252744252787%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd252745252790%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd252745252790%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl252746252792%_))
                      (let ((_%e252747252795%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl252746252792%_))))
                        (let ((_%tl252749252800%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252747252795%_)))
                              (_%hd252748252798%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252747252795%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252749252800%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl252743252784%_))
                                  (let ((_%e252750252803%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl252743252784%_))))
                                    (let ((_%tl252752252808%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252750252803%_)))
                                          (_%hd252751252806%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252750252803%_))))
                                      (_%__match254572254573%_
                                       _%e252741252779%_
                                       _%hd252742252782%_
                                       _%tl252743252784%_
                                       _%e252744252787%_
                                       _%hd252745252790%_
                                       _%tl252746252792%_
                                       _%e252747252795%_
                                       _%hd252748252798%_
                                       _%tl252749252800%_
                                       _%e252750252803%_
                                       _%hd252751252806%_
                                       _%tl252752252808%_)))
                                  (_%__kont254541254542%_))
                              (_%__kont254541254542%_))))
                      (_%__kont254541254542%_))
                  (_%__kont254541254542%_))
              (_%__kont254541254542%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont254541254542%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g252734252774%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self252445%_ _%ctx252446%_ _%stx252447%_ _%args252448%_)
        (let* ((_%self252451%_ _%self252445%_)
               (_%arguments-ok?252461%_
                (let ((__method255016
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self252451%_ 'check-arguments))))
                  (if __method255016
                      (let ()
                        (declare (not safe))
                        (__method255016
                         _%self252451%_
                         _%ctx252446%_
                         _%stx252447%_
                         _%args252448%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self252451%_
                                 'check-arguments))
                        '#!void))))
               (_%g252463252473%_
                (lambda (_%g252464252470%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252464252470%_))))
               (_%g252462252537%_
                (lambda (_%g252464252476%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252464252476%_))
                      (let ((_%e252466252478%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252464252476%_))))
                        (let ((_%hd252467252481%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252466252478%_)))
                              (_%tl252468252483%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252466252478%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252468252483%_))
                              ((lambda (_%g252465252486%_)
                                 (let* ((_%klass252499%_
                                         (let ((__tmp255073
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252451%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx252447%_
                                            __tmp255073)))
                                        (_%field252501%_
                                         (let ((__tmp255074
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252451%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass252499%_
                                            __tmp255074)))
                                        (_%object252503%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx252446%_
                                            _%g252465252486%_)))
                                        (_%klass252506%_ _%klass252499%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass252506%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp255075
                                              (cons (if (or _%arguments-ok?252461%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self252451%_
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
                                 _%self252451%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field252501%_ '()))
                        (cons _%object252503%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255075
                                          _%stx252447%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass252506%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp255076
                                                  (cons (if (or _%arguments-ok?252461%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self252451%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252451%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field252501%_ '()))
                            (cons _%object252503%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp255076
                                              _%stx252447%_))
                                           (let ((_%$e252525%_
                                                  (let ((__tmp255077
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self252451%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass252506%_
                                                     __tmp255077))))
                                             (if _%$e252525%_
                                                 ((lambda (_%klass252528%_)
                                                    (let ((__tmp255078
                                                           (cons (if (or _%arguments-ok?252461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252451%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self252451%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field252501%_ '()))
                                     (cons _%object252503%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp255078 _%stx252447%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e252525%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self252451%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp255079
                                                            (let ((_%$obj252534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp255080
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp255080))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj252534%_ '())
                                              (cons _%object252503%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass252506%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj252534%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252451%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field252501%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj252534%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?252461%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj252534%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self252451%_
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
                                                             _%self252451%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj252534%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self252451%_
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
               (gxc#xform-wrap-source __tmp255079 _%stx252447%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp255081
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object252503%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self252451%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp255081 _%stx252447%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd252467252481%_)
                              (_%g252463252473%_ _%g252464252476%_))))
                      (_%g252463252473%_ _%g252464252476%_)))))
          (_%g252462252537%_ _%args252448%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass254303 __method-table254304)
        (let ((__check-arguments254305
               (let ((__tmp255082
                      (lambda ()
                        (let ((__method254306
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table254304
                                  'check-arguments
                                  '#f))))
                          (if __method254306
                              __method254306
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp255082)))
              (__slot254307
               (let ((__slot254308
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass254303 'slot))))
                 (if __slot254308
                     __slot254308
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self252445%_ _%ctx252446%_ _%stx252447%_ _%args252448%_)
            (let* ((_%self252451%_ _%self252445%_)
                   (_%arguments-ok?252461%_
                    ((force __check-arguments254305)
                     _%self252451%_
                     _%ctx252446%_
                     _%stx252447%_
                     _%args252448%_))
                   (_%g252463252473%_
                    (lambda (_%g252464252470%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g252464252470%_))))
                   (_%g252462252537%_
                    (lambda (_%g252464252476%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g252464252476%_))
                          (let ((_%e252466252478%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g252464252476%_))))
                            (let ((_%hd252467252481%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252466252478%_)))
                                  (_%tl252468252483%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252466252478%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl252468252483%_))
                                  ((lambda (_%g252465252486%_)
                                     (let* ((_%klass252499%_
                                             (let ((__tmp255083
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self252451%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx252447%_
                                                __tmp255083)))
                                            (_%field252501%_
                                             (let ((__tmp255084
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self252451%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass252499%_
                                                __tmp255084)))
                                            (_%object252503%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx252446%_
                                                _%g252465252486%_)))
                                            (_%klass252506%_ _%klass252499%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass252506%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp255085
                                                  (cons (if (or _%arguments-ok?252461%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self252451%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252451%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field252501%_ '()))
                            (cons _%object252503%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp255085
                                              _%stx252447%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass252506%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp255086
                                                      (cons (if (or _%arguments-ok?252461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self252451%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252451%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field252501%_ '()))
                                (cons _%object252503%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp255086
                                                  _%stx252447%_))
                                               (let ((_%$e252525%_
                                                      (let ((__tmp255087
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self252451%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass252506%_ __tmp255087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e252525%_
                                                     ((lambda (_%klass252528%_)
                                                        (let ((__tmp255088
                                                               (cons (if (or _%arguments-ok?252461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252451%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self252451%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field252501%_ '()))
                                         (cons _%object252503%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp255088 _%stx252447%_)))
              _%$e252525%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self252451%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp255089
                                                                (let ((_%$obj252534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255090
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp255090))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj252534%_ '())
                                                  (cons _%object252503%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass252506%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj252534%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self252451%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field252501%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj252534%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?252461%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj252534%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252451%_
                               __slot254307
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
                        (##unchecked-structure-ref _%self252451%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj252534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252451%_
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
                   (gxc#xform-wrap-source __tmp255089 _%stx252447%_))
                 (let ((__tmp255091
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object252503%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self252451%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp255091 _%stx252447%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd252467252481%_)
                                  (_%g252463252473%_ _%g252464252476%_))))
                          (_%g252463252473%_ _%g252464252476%_)))))
              (_%g252462252537%_ _%args252448%_))))))
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
      (lambda (_%self252209%_ _%ctx252210%_ _%stx252211%_ _%args252212%_)
        (let* ((_%self252215%_ _%self252209%_)
               (_%arguments-ok?252225%_
                (let ((__method255017
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self252215%_ 'check-arguments))))
                  (if __method255017
                      (let ()
                        (declare (not safe))
                        (__method255017
                         _%self252215%_
                         _%ctx252210%_
                         _%stx252211%_
                         _%args252212%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self252215%_
                                 'check-arguments))
                        '#!void))))
               (_%g252227252241%_
                (lambda (_%g252228252238%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252228252238%_))))
               (_%g252226252320%_
                (lambda (_%g252228252244%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252228252244%_))
                      (let ((_%e252231252246%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252228252244%_))))
                        (let ((_%hd252232252249%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252231252246%_)))
                              (_%tl252233252251%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252231252246%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl252233252251%_))
                              (let ((_%e252234252254%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl252233252251%_))))
                                (let ((_%hd252235252257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e252234252254%_)))
                                      (_%tl252236252259%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e252234252254%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl252236252259%_))
                                      ((lambda (_%g252229252262%_
                                                _%g252230252263%_)
                                         (let* ((_%klass252279%_
                                                 (let ((__tmp255092
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self252215%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx252211%_
                                                    __tmp255092)))
                                                (_%field252281%_
                                                 (let ((__tmp255093
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self252215%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass252279%_
                                                    __tmp255093)))
                                                (_%object252283%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx252210%_
                                                    _%g252230252263%_)))
                                                (_%value252285%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx252210%_
                                                    _%g252229252262%_)))
                                                (_%klass252288%_
                                                 _%klass252279%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass252288%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp255094
                                                      (cons (if (or _%arguments-ok?252225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self252215%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252215%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field252281%_ '()))
                                (cons _%object252283%_
                                      (cons _%value252285%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp255094
                                                  _%stx252211%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass252288%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp255095
                                                          (cons (if (or _%arguments-ok?252225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self252215%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252215%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field252281%_ '()))
                                    (cons _%object252283%_
                                          (cons _%value252285%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp255095
                                                      _%stx252211%_))
                                                   (let ((_%$e252308%_
                                                          (let ((__tmp255096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self252215%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass252288%_
                     __tmp255096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e252308%_
                                                         ((lambda (_%klass252311%_)
                                                            (let ((__tmp255097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?252225%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self252215%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self252215%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field252281%_ '()))
                                             (cons _%object252283%_
                                                   (cons _%value252285%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255097 _%stx252211%_)))
                  _%$e252308%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self252215%_ '4 '#f '#f))
                     (let ((__tmp255098
                            (let ((_%$obj252317%_
                                   (let ((__tmp255099
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp255099))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj252317%_ '())
                                                      (cons _%object252283%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass252288%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj252317%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self252215%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field252281%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj252317%_
                                                              '()))
                                                  (cons _%value252285%_
                                                        '())))))
                          (cons (if _%arguments-ok?252225%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj252317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self252215%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value252285%_ '())))))
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
                             _%self252215%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj252317%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252215%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value252285%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp255098 _%stx252211%_))
                     (let ((__tmp255100
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object252283%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self252215%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value252285%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp255100
                        _%stx252211%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd252235252257%_
                                       _%hd252232252249%_)
                                      (_%g252227252241%_ _%g252228252244%_))))
                              (_%g252227252241%_ _%g252228252244%_))))
                      (_%g252227252241%_ _%g252228252244%_)))))
          (_%g252226252320%_ _%args252212%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass254309 __method-table254310)
        (let ((__check-arguments254311
               (let ((__tmp255101
                      (lambda ()
                        (let ((__method254312
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table254310
                                  'check-arguments
                                  '#f))))
                          (if __method254312
                              __method254312
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp255101))))
          (lambda (_%self252209%_ _%ctx252210%_ _%stx252211%_ _%args252212%_)
            (let* ((_%self252215%_ _%self252209%_)
                   (_%arguments-ok?252225%_
                    ((force __check-arguments254311)
                     _%self252215%_
                     _%ctx252210%_
                     _%stx252211%_
                     _%args252212%_))
                   (_%g252227252241%_
                    (lambda (_%g252228252238%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g252228252238%_))))
                   (_%g252226252320%_
                    (lambda (_%g252228252244%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g252228252244%_))
                          (let ((_%e252231252246%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g252228252244%_))))
                            (let ((_%hd252232252249%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252231252246%_)))
                                  (_%tl252233252251%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252231252246%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl252233252251%_))
                                  (let ((_%e252234252254%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl252233252251%_))))
                                    (let ((_%hd252235252257%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252234252254%_)))
                                          (_%tl252236252259%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252234252254%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl252236252259%_))
                                          ((lambda (_%g252229252262%_
                                                    _%g252230252263%_)
                                             (let* ((_%klass252279%_
                                                     (let ((__tmp255102
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self252215%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx252211%_
                                                        __tmp255102)))
                                                    (_%field252281%_
                                                     (let ((__tmp255103
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self252215%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass252279%_
                                                        __tmp255103)))
                                                    (_%object252283%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx252210%_
                                                        _%g252230252263%_)))
                                                    (_%value252285%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx252210%_
                                                        _%g252229252262%_)))
                                                    (_%klass252288%_
                                                     _%klass252279%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass252288%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp255104
                                                          (cons (if (or _%arguments-ok?252225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self252215%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252215%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field252281%_ '()))
                                    (cons _%object252283%_
                                          (cons _%value252285%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp255104
                                                      _%stx252211%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass252288%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp255105
                                                              (cons (if (or _%arguments-ok?252225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self252215%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self252215%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field252281%_ '()))
                                        (cons _%object252283%_
                                              (cons _%value252285%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp255105 _%stx252211%_))
               (let ((_%$e252308%_
                      (let ((__tmp255106
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self252215%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass252288%_
                         __tmp255106))))
                 (if _%$e252308%_
                     ((lambda (_%klass252311%_)
                        (let ((__tmp255107
                               (cons (if (or _%arguments-ok?252225%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self252215%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self252215%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field252281%_
                                                             '()))
                                                 (cons _%object252283%_
                                                       (cons _%value252285%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp255107 _%stx252211%_)))
                      _%$e252308%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self252215%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp255108
                                (let ((_%$obj252317%_
                                       (let ((__tmp255109
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp255109))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj252317%_
                                                                '())
                                                          (cons _%object252283%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass252288%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj252317%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self252215%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field252281%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj252317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value252285%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?252225%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj252317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self252215%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value252285%_ '())))))
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
                                 _%self252215%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj252317%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252215%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value252285%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp255108 _%stx252211%_))
                         (let ((__tmp255110
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object252283%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252215%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value252285%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp255110
                            _%stx252211%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd252235252257%_
                                           _%hd252232252249%_)
                                          (_%g252227252241%_
                                           _%g252228252244%_))))
                                  (_%g252227252241%_ _%g252228252244%_))))
                          (_%g252227252241%_ _%g252228252244%_)))))
              (_%g252226252320%_ _%args252212%_))))))
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
      (lambda (_%self252025%_ _%ctx252026%_ _%stx252027%_ _%args252028%_)
        (let* ((_%self252031%_ _%self252025%_)
               (_%self252040252050%_ _%self252031%_)
               (_%E252042252053%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self252040252050%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K252043252063%_
                (lambda (_%inline252056%_ _%dispatch252057%_ _%arity252058%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self252031%_
                         _%args252028%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx252027%_
                         _%arity252058%_)))
                  (if _%inline252056%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp255111 (_%inline252056%_ _%stx252027%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp255111
                           _%stx252027%_
                           _%ctx252026%_)))
                      (if (and _%dispatch252057%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch252057%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch252057%_))
                            (let ((__tmp255112
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch252057%_
                                                           '()))
                                               _%args252028%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp255112
                               _%stx252027%_
                               _%ctx252026%_)))
                          (gxc#!procedure::optimize-call
                           _%self252031%_
                           _%ctx252026%_
                           _%stx252027%_
                           _%args252028%_)))))
               (_%e252044252066%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252040252050%_ '1 '#f '#f)))
               (_%e252045252069%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252040252050%_ '2 '#f '#f)))
               (_%e252046252072%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252040252050%_ '3 '#f '#f)))
               (_%arity252075%_ _%e252046252072%_)
               (_%e252047252077%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252040252050%_ '4 '#f '#f)))
               (_%dispatch252080%_ _%e252047252077%_)
               (_%e252048252082%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252040252050%_ '5 '#f '#f)))
               (_%inline252085%_ _%e252048252082%_))
          (_%K252043252063%_
           _%inline252085%_
           _%dispatch252080%_
           _%arity252075%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self251877%_ _%ctx251878%_ _%stx251879%_ _%args251880%_)
        (let* ((_%self251883%_ _%self251877%_)
               (_%$e251897%_
                (let ((__tmp255114
                       (lambda (_%g251892251894%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g251892251894%_
                            _%args251880%_))))
                      (__tmp255113
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self251883%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp255114 __tmp255113))))
          (if _%$e251897%_
              ((lambda (_%clause251900%_)
                 (let ((__method255018
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause251900%_ 'optimize-call))))
                   (if __method255018
                       (let ()
                         (declare (not safe))
                         (__method255018
                          _%clause251900%_
                          _%ctx251878%_
                          _%stx251879%_
                          _%args251880%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause251900%_
                                  'optimize-call))
                         '#!void))))
               _%$e251897%_)
              (let ((__tmp255115
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self251883%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx251879%_
                 __tmp255115))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self251618%_ _%ctx251619%_ _%stx251620%_ _%args251621%_)
        (let* ((_%self251624%_ _%self251618%_)
               (_%self251633251642%_ _%self251624%_)
               (_%E251635251645%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self251633251642%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K251636251736%_
                (lambda (_%dispatch251648%_ _%table251649%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch251648%_))
                      (let* ((_%g251650251660%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch251648%_)))
                             (_%else251652251668%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch251648%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx251619%_
                                   _%stx251620%_))))
                             (_%K251654251717%_
                              (lambda (_%main251671%_ _%keys251672%_)
                                (let ((_g255116_
                                       (gxc#!kw-lambda-split-args
                                        _%stx251620%_
                                        _%args251621%_)))
                                  (begin
                                    (let ((_g255117_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g255116_)
                                                 (##values-length _g255116_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g255117_ 2)))
                                          (error "Context expects 2 values"
                                                 _g255117_)))
                                    (let ((_%pargs251674%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g255116_ 0)))
                                          (_%kwargs251675%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g255116_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main251671%_))
                                        (if _%table251649%_
                                            (let ((_%xargs251683%_
                                                   (map (lambda (_%key251677%_)
                                                          (let ((_%$e251679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key251677%_ _%kwargs251675%_))))
                    (if _%$e251679%_ _%$e251679%_ '(%#ref absent-value))))
                _%keys251672%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw251685%_)
                                                 (if (memq (car _%kw251685%_)
                                                           _%keys251672%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx251620%_
                                                        _%keys251672%_
                                                        _%kw251685%_))))
                                               _%kwargs251675%_)
                                              (let ((__tmp255118
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main251671%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs251674%_
                                  _%xargs251683%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp255118
                                                 _%stx251620%_
                                                 _%ctx251619%_)))
                                            (let* ((_%kwt251687%_
                                                    (let ((__tmp255119
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp255119)))
                                                   (_%kwvars251691%_
                                                    (map (lambda (_%_251689%_)
                                                           (let ((__tmp255120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp255120)))
                 _%kwargs251675%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind251696%_
                                                    (map (lambda (_%kw251693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar251694%_)
                   (cons (cons _%kwvar251694%_ '())
                         (cons (cdr _%kw251693%_) '())))
                 _%kwargs251675%_
                 _%kwvars251691%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset251701%_
                                                    (map (lambda (_%kw251698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar251699%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt251687%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw251698%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar251699%_
                                                             '()))
                                                 '()))))))
                 _%kwargs251675%_
                 _%kwvars251691%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs251706%_
                                                    (map (lambda (_%kw251703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar251704%_)
                   (cons (car _%kw251703%_)
                         (cons '%#ref (cons _%kwvar251704%_ '()))))
                 _%kwargs251675%_
                 _%kwvars251691%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs251714%_
                                                    (map (lambda (_%key251708%_)
                                                           (let ((_%$e251710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key251708%_ _%xkwargs251706%_))))
                     (if _%$e251710%_ _%$e251710%_ '(%#ref absent-value))))
                 _%keys251672%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp255121
                                                    (cons '%#let-values
                                                          (cons _%kwbind251696%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt251687%_ '())
                                                      (cons (let ((__tmp255122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs251675%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255122 _%stx251620%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp255123
                                                             (cons (let ((__tmp255124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main251671%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt251687%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs251674%_
                                                       _%xargs251714%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp255124 _%stx251620%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp255123 _%kwset251701%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp255121
                                               _%stx251620%_
                                               _%ctx251619%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g251650251660%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e251655251720%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251650251660%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e251656251723%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251650251660%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e251657251726%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251650251660%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys251729%_ _%e251657251726%_)
                                   (_%e251658251731%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251650251660%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main251734%_ _%e251658251731%_))
                              (_%K251654251717%_
                               _%main251734%_
                               _%keys251729%_))
                            (_%else251652251668%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx251619%_ _%stx251620%_)))))
               (_%e251637251739%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251633251642%_ '1 '#f '#f)))
               (_%e251638251742%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251633251642%_ '2 '#f '#f)))
               (_%e251639251745%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251633251642%_ '3 '#f '#f)))
               (_%table251748%_ _%e251639251745%_)
               (_%e251640251750%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251633251642%_ '4 '#f '#f)))
               (_%dispatch251753%_ _%e251640251750%_))
          (_%K251636251736%_ _%dispatch251753%_ _%table251748%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx251231%_ _%args251232%_)
        (let _%lp251234%_ ((_%rest251236%_ _%args251232%_)
                           (_%pargs251237%_ '())
                           (_%kwargs251238%_ '()))
          (let* ((_%__stx254577254578%_ _%rest251236%_)
                 (_%g251244251296%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx254577254578%_)))))
            (let ((_%__kont254579254580%_
                   (lambda (_%g251246251475%_ _%g251247251476%_)
                     (_%lp251234%_
                      _%g251246251475%_
                      (cons _%g251247251476%_ _%pargs251237%_)
                      _%kwargs251238%_)))
                  (_%__kont254581254582%_
                   (lambda (_%g251261251421%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g251261251421%_
                                _%pargs251237%_))
                             (reverse _%kwargs251238%_))))
                  (_%__kont254583254584%_
                   (lambda (_%g251272251368%_
                            _%g251273251369%_
                            _%g251274251370%_)
                     (let ((_%kw251387%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g251274251370%_))))
                       (if (assq _%kw251387%_ _%kwargs251238%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx251231%_
                              _%kw251387%_))
                           (_%lp251234%_
                            _%g251272251368%_
                            _%pargs251237%_
                            (cons (cons _%kw251387%_ _%g251273251369%_)
                                  _%kwargs251238%_))))))
                  (_%__kont254585254586%_
                   (lambda (_%g251287251316%_ _%g251288251317%_)
                     (_%lp251234%_
                      _%g251287251316%_
                      (cons _%g251288251317%_ _%pargs251237%_)
                      _%kwargs251238%_)))
                  (_%__kont254587254588%_
                   (lambda ()
                     (values (reverse _%pargs251237%_)
                             (reverse _%kwargs251238%_)))))
              (let ((_%__match254684254685%_
                     (lambda (_%e251275251336%_
                              _%hd251276251339%_
                              _%tl251277251341%_
                              _%e251278251344%_
                              _%hd251279251347%_
                              _%tl251280251349%_
                              _%e251281251352%_
                              _%hd251282251355%_
                              _%tl251283251357%_
                              _%e251284251360%_
                              _%hd251285251363%_
                              _%tl251286251365%_)
                       (let ((_%g251272251368%_ _%tl251286251365%_)
                             (_%g251273251369%_ _%hd251285251363%_)
                             (_%g251274251370%_ _%hd251282251355%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g251274251370%_))
                             (_%__kont254583254584%_
                              _%g251272251368%_
                              _%g251273251369%_
                              _%g251274251370%_)
                             (_%__kont254585254586%_
                              _%tl251277251341%_
                              _%hd251276251339%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx254577254578%_))
                    (let ((_%e251248251440%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx254577254578%_))))
                      (let ((_%tl251250251445%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e251248251440%_)))
                            (_%hd251249251443%_
                             (let ()
                               (declare (not safe))
                               (##car _%e251248251440%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd251249251443%_))
                            (let ((_%e251251251448%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd251249251443%_))))
                              (let ((_%tl251253251453%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e251251251448%_)))
                                    (_%hd251252251451%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e251251251448%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd251252251451%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd251252251451%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl251253251453%_))
                                            (let ((_%e251254251456%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl251253251453%_))))
                                              (let ((_%tl251256251461%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e251254251456%_)))
                                                    (_%hd251255251459%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e251254251456%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd251255251459%_))
                                                    (let ((_%e251257251464%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd251255251459%_))))
                                                      (if (equal? _%e251257251464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl251256251461%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl251250251445%_))
                          (let ((_%e251258251467%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl251250251445%_))))
                            (let ((_%tl251260251472%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251258251467%_)))
                                  (_%hd251259251470%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251258251467%_))))
                              (_%__kont254579254580%_
                               _%tl251260251472%_
                               _%hd251259251470%_)))
                          (_%__kont254585254586%_
                           _%tl251250251445%_
                           _%hd251249251443%_))
                      (_%__kont254585254586%_
                       _%tl251250251445%_
                       _%hd251249251443%_))
                  (if (equal? _%e251257251464%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl251256251461%_))
                          (_%__kont254581254582%_ _%tl251250251445%_)
                          (_%__kont254585254586%_
                           _%tl251250251445%_
                           _%hd251249251443%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl251256251461%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl251250251445%_))
                              (let ((_%e251284251360%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl251250251445%_))))
                                (let ((_%tl251286251365%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e251284251360%_)))
                                      (_%hd251285251363%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e251284251360%_))))
                                  (_%__match254684254685%_
                                   _%e251248251440%_
                                   _%hd251249251443%_
                                   _%tl251250251445%_
                                   _%e251251251448%_
                                   _%hd251252251451%_
                                   _%tl251253251453%_
                                   _%e251254251456%_
                                   _%hd251255251459%_
                                   _%tl251256251461%_
                                   _%e251284251360%_
                                   _%hd251285251363%_
                                   _%tl251286251365%_)))
                              (_%__kont254585254586%_
                               _%tl251250251445%_
                               _%hd251249251443%_))
                          (_%__kont254585254586%_
                           _%tl251250251445%_
                           _%hd251249251443%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl251256251461%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl251250251445%_))
                                                            (let ((_%e251284251360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl251250251445%_))))
                      (let ((_%tl251286251365%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e251284251360%_)))
                            (_%hd251285251363%_
                             (let ()
                               (declare (not safe))
                               (##car _%e251284251360%_))))
                        (_%__match254684254685%_
                         _%e251248251440%_
                         _%hd251249251443%_
                         _%tl251250251445%_
                         _%e251251251448%_
                         _%hd251252251451%_
                         _%tl251253251453%_
                         _%e251254251456%_
                         _%hd251255251459%_
                         _%tl251256251461%_
                         _%e251284251360%_
                         _%hd251285251363%_
                         _%tl251286251365%_)))
                    (_%__kont254585254586%_
                     _%tl251250251445%_
                     _%hd251249251443%_))
                (_%__kont254585254586%_
                 _%tl251250251445%_
                 _%hd251249251443%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont254585254586%_
                                             _%tl251250251445%_
                                             _%hd251249251443%_))
                                        (_%__kont254585254586%_
                                         _%tl251250251445%_
                                         _%hd251249251443%_))
                                    (_%__kont254585254586%_
                                     _%tl251250251445%_
                                     _%hd251249251443%_))))
                            (_%__kont254585254586%_
                             _%tl251250251445%_
                             _%hd251249251443%_))))
                    (_%__kont254587254588%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self251215%_ _%ctx251216%_ _%stx251217%_ _%args251218%_)
        (let ((_%self251221%_ _%self251215%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx251216%_ _%stx251217%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self250905%_ _%stx250906%_)
        (let* ((_%__stx254693254694%_ _%stx250906%_)
               (_%g250909250949%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254693254694%_)))))
          (let ((_%__kont254695254696%_
                 (lambda (_%g250911251053%_ _%g250912251054%_)
                   (let ((_%$e251081%_
                          (member 'return:
                                  (let ((__tmp255125
                                         (lambda (_%g251073251076%_
                                                  _%g251074251078%_)
                                           (cons _%g251073251076%_
                                                 _%g251074251078%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp255125
                                     '()
                                     _%g250912251054%_))
                                  gx#stx-eq?)))
                     (if _%$e251081%_
                         ((lambda (_%tail251084%_)
                            (let ((_%type251086%_
                                   (let ((__tmp255126
                                          (let ((__tmp255127
                                                 (cadr _%tail251084%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp255127))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx250906%_
                                      __tmp255126))))
                              (gxc#check-return-type!
                               _%stx250906%_
                               _%g250911251053%_
                               _%type251086%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self250905%_
                                 _%g250911251053%_))))
                          _%$e251081%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self250905%_
                            _%g250911251053%_))))))
                (_%__kont254699254700%_
                 (lambda (_%g250934250978%_ _%g250935250979%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self250905%_ _%g250934250978%_)))))
            (let ((_%__match254730254731%_
                   (lambda (_%e250913250999%_
                            _%hd250914251002%_
                            _%tl250915251004%_
                            _%e250916251007%_
                            _%hd250917251010%_
                            _%tl250918251012%_
                            _%e250919251015%_
                            _%hd250920251018%_
                            _%tl250921251020%_
                            _%__splice254697254698%_
                            _%target250922251023%_
                            _%tl250924251025%_)
                     (letrec ((_%loop250925251028%_
                               (lambda (_%hd250923251031%_
                                        _%signature250929251033%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd250923251031%_))
                                     (let ((_%e250926251035%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd250923251031%_))))
                                       (let ((_%lp-tl250928251040%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e250926251035%_)))
                                             (_%lp-hd250927251038%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e250926251035%_))))
                                         (_%loop250925251028%_
                                          _%lp-tl250928251040%_
                                          (cons _%lp-hd250927251038%_
                                                _%signature250929251033%_))))
                                     (let ((_%signature250930251043%_
                                            (reverse _%signature250929251033%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl250918251012%_))
                                           (let ((_%e250931251045%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl250918251012%_))))
                                             (let ((_%tl250933251050%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e250931251045%_)))
                                                   (_%hd250932251048%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e250931251045%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl250933251050%_))
                                                   (_%__kont254695254696%_
                                                    _%hd250932251048%_
                                                    _%signature250930251043%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g250909250949%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g250909250949%_))))))))
                       (_%loop250925251028%_ _%target250922251023%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254693254694%_))
                  (let ((_%e250913250999%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254693254694%_))))
                    (let ((_%tl250915251004%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250913250999%_)))
                          (_%hd250914251002%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250913250999%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250915251004%_))
                          (let ((_%e250916251007%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250915251004%_))))
                            (let ((_%tl250918251012%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250916251007%_)))
                                  (_%hd250917251010%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250916251007%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd250917251010%_))
                                  (let ((_%e250919251015%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd250917251010%_))))
                                    (let ((_%tl250921251020%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250919251015%_)))
                                          (_%hd250920251018%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250919251015%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd250920251018%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd250920251018%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl250921251020%_))
                                                  (let ((_%__splice254697254698%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl250921251020%_
                                                            '0))))
                                                    (let ((_%tl250924251025%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254697254698%_
                                                              '1)))
                                                          (_%target250922251023%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254697254698%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250924251025%_))
                                                          (_%__match254730254731%_
                                                           _%e250913250999%_
                                                           _%hd250914251002%_
                                                           _%tl250915251004%_
                                                           _%e250916251007%_
                                                           _%hd250917251010%_
                                                           _%tl250918251012%_
                                                           _%e250919251015%_
                                                           _%hd250920251018%_
                                                           _%tl250921251020%_
                                                           _%__splice254697254698%_
                                                           _%target250922251023%_
                                                           _%tl250924251025%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl250918251012%_))
                      (let ((_%e250942250970%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250918251012%_))))
                        (let ((_%tl250944250975%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250942250970%_)))
                              (_%hd250943250973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250942250970%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250944250975%_))
                              (_%__kont254699254700%_
                               _%hd250943250973%_
                               _%hd250917251010%_)
                              (let ()
                                (declare (not safe))
                                (_%g250909250949%_)))))
                      (let () (declare (not safe)) (_%g250909250949%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250918251012%_))
                                                      (let ((_%e250942250970%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250918251012%_))))
                (let ((_%tl250944250975%_
                       (let () (declare (not safe)) (##cdr _%e250942250970%_)))
                      (_%hd250943250973%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250942250970%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250944250975%_))
                      (_%__kont254699254700%_
                       _%hd250943250973%_
                       _%hd250917251010%_)
                      (let () (declare (not safe)) (_%g250909250949%_)))))
              (let () (declare (not safe)) (_%g250909250949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250918251012%_))
                                                  (let ((_%e250942250970%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250918251012%_))))
                                                    (let ((_%tl250944250975%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250942250970%_)))
                                                          (_%hd250943250973%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250942250970%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250944250975%_))
                                                          (_%__kont254699254700%_
                                                           _%hd250943250973%_
                                                           _%hd250917251010%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250909250949%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250909250949%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250918251012%_))
                                              (let ((_%e250942250970%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250918251012%_))))
                                                (let ((_%tl250944250975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250942250970%_)))
                                                      (_%hd250943250973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250942250970%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250944250975%_))
                                                      (_%__kont254699254700%_
                                                       _%hd250943250973%_
                                                       _%hd250917251010%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250909250949%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250909250949%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250918251012%_))
                                      (let ((_%e250942250970%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250918251012%_))))
                                        (let ((_%tl250944250975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250942250970%_)))
                                              (_%hd250943250973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250942250970%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250944250975%_))
                                              (_%__kont254699254700%_
                                               _%hd250943250973%_
                                               _%hd250917251010%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g250909250949%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250909250949%_))))))
                          (let () (declare (not safe)) (_%g250909250949%_)))))
                  (let () (declare (not safe)) (_%g250909250949%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx250880%_ _%expr250881%_ _%type250882%_)
        (let ((_%$e250884%_ (not _%type250882%_)))
          (if _%$e250884%_
              _%$e250884%_
              (let ((_%$e250887%_
                     (eq? (##structure-ref _%type250882%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e250887%_
                    _%$e250887%_
                    (let ((_%$e250890%_
                           (eq? (##structure-ref
                                 _%type250882%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e250890%_
                          _%$e250890%_
                          (let ((_%expr-type250894%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr250881%_))))
                            (if (not _%expr-type250894%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx250880%_
                                   _%type250882%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type250894%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx250880%_
                                       _%type250882%_
                                       _%expr-type250894%_))
                                    (let ((_%$e250898%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type250894%_
                                              'gxc#!abort::t))))
                                      (if _%$e250898%_
                                          _%$e250898%_
                                          (let ((_%$e250901%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type250894%_
                                                    _%type250882%_))))
                                            (if _%$e250901%_
                                                _%$e250901%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx250880%_
                                                   _%type250882%_
                                                   _%expr-type250894%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self250306%_ _%stx250307%_)
        (let* ((_%__stx254775254776%_ _%stx250307%_)
               (_%g250312250422%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254775254776%_)))))
          (let ((_%__kont254777254778%_
                 (lambda (_%g250314250854%_
                          _%g250315250855%_
                          _%g250316250856%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g250316250856%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self250306%_ _%g250315250855%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self250306%_
                          _%g250314250854%_)))))
                (_%__kont254779254780%_
                 (lambda (_%g250335250680%_
                          _%g250336250681%_
                          _%g250337250682%_
                          _%g250338250683%_)
                   (let ((_%$e250715%_
                          (let ((__tmp255128
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g250338250683%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp255128))))
                     (if _%$e250715%_
                         ((lambda (_%pred-type250718%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type250718%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type250718%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test250723%_
                                        (let ((__tmp255129
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g250338250683%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g250337250682%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp255129
                                           _%stx250307%_
                                           _%self250306%_)))
                                       (_%K250727%_
                                        (let ((__tmp255130
                                               (lambda ()
                                                 (let ((__tmp255133
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self250306%_
                                                             _%g250336250681%_))))
                                                       (__tmp255131
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g250337250682%_))
                            (let ((__tmp255132
                                   (##structure-ref
                                    _%pred-type250718%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx250307%_
                               __tmp255132)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp255133
                                                    gxc#current-compile-path-type
                                                    __tmp255131)))))
                                          (declare (not safe))
                                          (__make-promise __tmp255130)))
                                       (_%E250730%_
                                        (let ((__tmp255134
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self250306%_
                                                    _%g250335250680%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp255134)))
                                       (_%__stx254753254754%_ _%test250723%_)
                                       (_%g250734250748%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx254753254754%_)))))
                                  (let ((_%__kont254755254756%_
                                         (lambda (_%g250736250776%_
                                                  _%g250737250777%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g250736250776%_))
                                               (force _%K250727%_)
                                               (force _%E250730%_))))
                                        (_%__kont254757254758%_
                                         (lambda ()
                                           (let ((__tmp255135
                                                  (cons '%#if
                                                        (cons _%test250723%_
                                                              (cons (force _%K250727%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E250730%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp255135
                                              _%stx250307%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx254753254754%_))
                                        (let ((_%e250738250760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx254753254754%_))))
                                          (let ((_%tl250740250765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e250738250760%_)))
                                                (_%hd250739250763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e250738250760%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl250740250765%_))
                                                (let ((_%e250741250768%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl250740250765%_))))
                                                  (let ((_%tl250743250773%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e250741250768%_)))
                                                        (_%hd250742250771%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e250741250768%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl250743250773%_))
                                                        (_%__kont254755254756%_
                                                         _%hd250742250771%_
                                                         _%hd250739250763%_)
                                                        (_%__kont254757254758%_))))
                                                (_%__kont254757254758%_))))
                                        (_%__kont254757254758%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self250306%_
                                   _%stx250307%_))))
                          _%$e250715%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self250306%_
                            _%stx250307%_))))))
                (_%__kont254781254782%_
                 (lambda (_%g250372250556%_
                          _%g250373250557%_
                          _%g250374250558%_
                          _%g250375250559%_)
                   (gxc#optimize-if%
                    _%self250306%_
                    (let ((__tmp255136
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g250374250558%_
                                       (cons _%g250372250556%_
                                             (cons _%g250373250557%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255136 _%stx250307%_)))))
                (_%__kont254783254784%_
                 (lambda (_%g250403250459%_
                          _%g250404250460%_
                          _%g250405250461%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self250306%_ _%stx250307%_)))))
            (let ((_%__match254982254983%_
                   (lambda (_%e250376250484%_
                            _%hd250377250487%_
                            _%tl250378250489%_
                            _%e250379250492%_
                            _%hd250380250495%_
                            _%tl250381250497%_
                            _%e250382250500%_
                            _%hd250383250503%_
                            _%tl250384250505%_
                            _%e250385250508%_
                            _%hd250386250511%_
                            _%tl250387250513%_
                            _%e250388250516%_
                            _%hd250389250519%_
                            _%tl250390250521%_
                            _%e250391250524%_
                            _%hd250392250527%_
                            _%tl250393250529%_
                            _%e250394250532%_
                            _%hd250395250535%_
                            _%tl250396250537%_
                            _%e250397250540%_
                            _%hd250398250543%_
                            _%tl250399250545%_
                            _%e250400250548%_
                            _%hd250401250551%_
                            _%tl250402250553%_)
                     (let ((_%g250372250556%_ _%hd250401250551%_)
                           (_%g250373250557%_ _%hd250398250543%_)
                           (_%g250374250558%_ _%hd250395250535%_)
                           (_%g250375250559%_ _%hd250392250527%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g250375250559%_ 'not))
                           (_%__kont254781254782%_
                            _%g250372250556%_
                            _%g250373250557%_
                            _%g250374250558%_
                            _%g250375250559%_)
                           (_%__kont254783254784%_
                            _%hd250401250551%_
                            _%hd250398250543%_
                            _%hd250380250495%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254775254776%_))
                  (let ((_%e250317250806%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254775254776%_))))
                    (let ((_%tl250319250811%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250317250806%_)))
                          (_%hd250318250809%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250317250806%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250319250811%_))
                          (let ((_%e250320250814%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250319250811%_))))
                            (let ((_%tl250322250819%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250320250814%_)))
                                  (_%hd250321250817%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250320250814%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd250321250817%_))
                                  (let ((_%e250323250822%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd250321250817%_))))
                                    (let ((_%tl250325250827%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250323250822%_)))
                                          (_%hd250324250825%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250323250822%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd250324250825%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd250324250825%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250325250827%_))
                                                  (let ((_%e250326250830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250325250827%_))))
                                                    (let ((_%tl250328250835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250326250830%_)))
                                                          (_%hd250327250833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250326250830%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250328250835%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl250322250819%_))
                      (let ((_%e250329250838%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250322250819%_))))
                        (let ((_%tl250331250843%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250329250838%_)))
                              (_%hd250330250841%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250329250838%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250331250843%_))
                              (let ((_%e250332250846%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl250331250843%_))))
                                (let ((_%tl250334250851%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250332250846%_)))
                                      (_%hd250333250849%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250332250846%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250334250851%_))
                                      (_%__kont254777254778%_
                                       _%hd250333250849%_
                                       _%hd250330250841%_
                                       _%hd250327250833%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g250312250422%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g250312250422%_)))))
                      (let () (declare (not safe)) (_%g250312250422%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250322250819%_))
                      (let ((_%e250412250443%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250322250819%_))))
                        (let ((_%tl250414250448%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250412250443%_)))
                              (_%hd250413250446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250412250443%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250414250448%_))
                              (let ((_%e250415250451%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl250414250448%_))))
                                (let ((_%tl250417250456%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250415250451%_)))
                                      (_%hd250416250454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250415250451%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250417250456%_))
                                      (_%__kont254783254784%_
                                       _%hd250416250454%_
                                       _%hd250413250446%_
                                       _%hd250321250817%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g250312250422%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g250312250422%_)))))
                      (let () (declare (not safe)) (_%g250312250422%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250322250819%_))
                                                      (let ((_%e250412250443%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250322250819%_))))
                (let ((_%tl250414250448%_
                       (let () (declare (not safe)) (##cdr _%e250412250443%_)))
                      (_%hd250413250446%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250412250443%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250414250448%_))
                      (let ((_%e250415250451%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250414250448%_))))
                        (let ((_%tl250417250456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250415250451%_)))
                              (_%hd250416250454%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250415250451%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250417250456%_))
                              (_%__kont254783254784%_
                               _%hd250416250454%_
                               _%hd250413250446%_
                               _%hd250321250817%_)
                              (let ()
                                (declare (not safe))
                                (_%g250312250422%_)))))
                      (let () (declare (not safe)) (_%g250312250422%_)))))
              (let () (declare (not safe)) (_%g250312250422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd250324250825%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250325250827%_))
                                                      (let ((_%e250348250616%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250325250827%_))))
                (let ((_%tl250350250621%_
                       (let () (declare (not safe)) (##cdr _%e250348250616%_)))
                      (_%hd250349250619%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250348250616%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd250349250619%_))
                      (let ((_%e250351250624%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd250349250619%_))))
                        (let ((_%tl250353250629%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250351250624%_)))
                              (_%hd250352250627%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250351250624%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd250352250627%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd250352250627%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250353250629%_))
                                      (let ((_%e250354250632%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250353250629%_))))
                                        (let ((_%tl250356250637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250354250632%_)))
                                              (_%hd250355250635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250354250632%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250356250637%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250350250621%_))
                                                  (let ((_%e250357250640%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250350250621%_))))
                                                    (let ((_%tl250359250645%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250357250640%_)))
                                                          (_%hd250358250643%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250357250640%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd250358250643%_))
                                                          (let ((_%e250360250648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd250358250643%_))))
                    (let ((_%tl250362250653%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250360250648%_)))
                          (_%hd250361250651%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250360250648%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd250361250651%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd250361250651%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250362250653%_))
                                  (let ((_%e250363250656%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250362250653%_))))
                                    (let ((_%tl250365250661%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250363250656%_)))
                                          (_%hd250364250659%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250363250656%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250365250661%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250359250645%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250322250819%_))
                                                  (let ((_%e250366250664%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250322250819%_))))
                                                    (let ((_%tl250368250669%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250366250664%_)))
                                                          (_%hd250367250667%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250366250664%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250368250669%_))
                                                          (let ((_%e250369250672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250368250669%_))))
                    (let ((_%tl250371250677%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250369250672%_)))
                          (_%hd250370250675%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250369250672%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250371250677%_))
                          (_%__kont254779254780%_
                           _%hd250370250675%_
                           _%hd250367250667%_
                           _%hd250364250659%_
                           _%hd250355250635%_)
                          (let () (declare (not safe)) (_%g250312250422%_)))))
                  (let () (declare (not safe)) (_%g250312250422%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250312250422%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250322250819%_))
                                                  (let ((_%e250412250443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250322250819%_))))
                                                    (let ((_%tl250414250448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250412250443%_)))
                                                          (_%hd250413250446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250412250443%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250414250448%_))
                                                          (let ((_%e250415250451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250414250448%_))))
                    (let ((_%tl250417250456%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250415250451%_)))
                          (_%hd250416250454%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250415250451%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250417250456%_))
                          (_%__kont254783254784%_
                           _%hd250416250454%_
                           _%hd250413250446%_
                           _%hd250321250817%_)
                          (let () (declare (not safe)) (_%g250312250422%_)))))
                  (let () (declare (not safe)) (_%g250312250422%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250312250422%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250359250645%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250322250819%_))
                                                  (let ((_%e250397250540%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250322250819%_))))
                                                    (let ((_%tl250399250545%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250397250540%_)))
                                                          (_%hd250398250543%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250397250540%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250399250545%_))
                                                          (let ((_%e250400250548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250399250545%_))))
                    (let ((_%tl250402250553%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250400250548%_)))
                          (_%hd250401250551%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250400250548%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250402250553%_))
                          (_%__match254982254983%_
                           _%e250317250806%_
                           _%hd250318250809%_
                           _%tl250319250811%_
                           _%e250320250814%_
                           _%hd250321250817%_
                           _%tl250322250819%_
                           _%e250323250822%_
                           _%hd250324250825%_
                           _%tl250325250827%_
                           _%e250348250616%_
                           _%hd250349250619%_
                           _%tl250350250621%_
                           _%e250351250624%_
                           _%hd250352250627%_
                           _%tl250353250629%_
                           _%e250354250632%_
                           _%hd250355250635%_
                           _%tl250356250637%_
                           _%e250357250640%_
                           _%hd250358250643%_
                           _%tl250359250645%_
                           _%e250397250540%_
                           _%hd250398250543%_
                           _%tl250399250545%_
                           _%e250400250548%_
                           _%hd250401250551%_
                           _%tl250402250553%_)
                          (let () (declare (not safe)) (_%g250312250422%_)))))
                  (let () (declare (not safe)) (_%g250312250422%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250312250422%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250322250819%_))
                                                  (let ((_%e250412250443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250322250819%_))))
                                                    (let ((_%tl250414250448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250412250443%_)))
                                                          (_%hd250413250446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250412250443%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250414250448%_))
                                                          (let ((_%e250415250451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250414250448%_))))
                    (let ((_%tl250417250456%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250415250451%_)))
                          (_%hd250416250454%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250415250451%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250417250456%_))
                          (_%__kont254783254784%_
                           _%hd250416250454%_
                           _%hd250413250446%_
                           _%hd250321250817%_)
                          (let () (declare (not safe)) (_%g250312250422%_)))))
                  (let () (declare (not safe)) (_%g250312250422%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250312250422%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250359250645%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250322250819%_))
                                          (let ((_%e250397250540%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250322250819%_))))
                                            (let ((_%tl250399250545%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250397250540%_)))
                                                  (_%hd250398250543%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250397250540%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250399250545%_))
                                                  (let ((_%e250400250548%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250399250545%_))))
                                                    (let ((_%tl250402250553%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250400250548%_)))
                                                          (_%hd250401250551%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250400250548%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250402250553%_))
                                                          (_%__match254982254983%_
                                                           _%e250317250806%_
                                                           _%hd250318250809%_
                                                           _%tl250319250811%_
                                                           _%e250320250814%_
                                                           _%hd250321250817%_
                                                           _%tl250322250819%_
                                                           _%e250323250822%_
                                                           _%hd250324250825%_
                                                           _%tl250325250827%_
                                                           _%e250348250616%_
                                                           _%hd250349250619%_
                                                           _%tl250350250621%_
                                                           _%e250351250624%_
                                                           _%hd250352250627%_
                                                           _%tl250353250629%_
                                                           _%e250354250632%_
                                                           _%hd250355250635%_
                                                           _%tl250356250637%_
                                                           _%e250357250640%_
                                                           _%hd250358250643%_
                                                           _%tl250359250645%_
                                                           _%e250397250540%_
                                                           _%hd250398250543%_
                                                           _%tl250399250545%_
                                                           _%e250400250548%_
                                                           _%hd250401250551%_
                                                           _%tl250402250553%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250312250422%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250312250422%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250312250422%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250322250819%_))
                                          (let ((_%e250412250443%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250322250819%_))))
                                            (let ((_%tl250414250448%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250412250443%_)))
                                                  (_%hd250413250446%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250412250443%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250414250448%_))
                                                  (let ((_%e250415250451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250414250448%_))))
                                                    (let ((_%tl250417250456%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250415250451%_)))
                                                          (_%hd250416250454%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250415250451%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250417250456%_))
                                                          (_%__kont254783254784%_
                                                           _%hd250416250454%_
                                                           _%hd250413250446%_
                                                           _%hd250321250817%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250312250422%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250312250422%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250312250422%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl250359250645%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250322250819%_))
                                      (let ((_%e250397250540%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250322250819%_))))
                                        (let ((_%tl250399250545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250397250540%_)))
                                              (_%hd250398250543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250397250540%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250399250545%_))
                                              (let ((_%e250400250548%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250399250545%_))))
                                                (let ((_%tl250402250553%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250400250548%_)))
                                                      (_%hd250401250551%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250400250548%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250402250553%_))
                                                      (_%__match254982254983%_
                                                       _%e250317250806%_
                                                       _%hd250318250809%_
                                                       _%tl250319250811%_
                                                       _%e250320250814%_
                                                       _%hd250321250817%_
                                                       _%tl250322250819%_
                                                       _%e250323250822%_
                                                       _%hd250324250825%_
                                                       _%tl250325250827%_
                                                       _%e250348250616%_
                                                       _%hd250349250619%_
                                                       _%tl250350250621%_
                                                       _%e250351250624%_
                                                       _%hd250352250627%_
                                                       _%tl250353250629%_
                                                       _%e250354250632%_
                                                       _%hd250355250635%_
                                                       _%tl250356250637%_
                                                       _%e250357250640%_
                                                       _%hd250358250643%_
                                                       _%tl250359250645%_
                                                       _%e250397250540%_
                                                       _%hd250398250543%_
                                                       _%tl250399250545%_
                                                       _%e250400250548%_
                                                       _%hd250401250551%_
                                                       _%tl250402250553%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250312250422%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250312250422%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250312250422%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250322250819%_))
                                      (let ((_%e250412250443%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250322250819%_))))
                                        (let ((_%tl250414250448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250412250443%_)))
                                              (_%hd250413250446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250412250443%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250414250448%_))
                                              (let ((_%e250415250451%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250414250448%_))))
                                                (let ((_%tl250417250456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250415250451%_)))
                                                      (_%hd250416250454%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250415250451%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250417250456%_))
                                                      (_%__kont254783254784%_
                                                       _%hd250416250454%_
                                                       _%hd250413250446%_
                                                       _%hd250321250817%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250312250422%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250312250422%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250312250422%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250359250645%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250322250819%_))
                                  (let ((_%e250397250540%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250322250819%_))))
                                    (let ((_%tl250399250545%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250397250540%_)))
                                          (_%hd250398250543%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250397250540%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250399250545%_))
                                          (let ((_%e250400250548%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250399250545%_))))
                                            (let ((_%tl250402250553%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250400250548%_)))
                                                  (_%hd250401250551%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250400250548%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl250402250553%_))
                                                  (_%__match254982254983%_
                                                   _%e250317250806%_
                                                   _%hd250318250809%_
                                                   _%tl250319250811%_
                                                   _%e250320250814%_
                                                   _%hd250321250817%_
                                                   _%tl250322250819%_
                                                   _%e250323250822%_
                                                   _%hd250324250825%_
                                                   _%tl250325250827%_
                                                   _%e250348250616%_
                                                   _%hd250349250619%_
                                                   _%tl250350250621%_
                                                   _%e250351250624%_
                                                   _%hd250352250627%_
                                                   _%tl250353250629%_
                                                   _%e250354250632%_
                                                   _%hd250355250635%_
                                                   _%tl250356250637%_
                                                   _%e250357250640%_
                                                   _%hd250358250643%_
                                                   _%tl250359250645%_
                                                   _%e250397250540%_
                                                   _%hd250398250543%_
                                                   _%tl250399250545%_
                                                   _%e250400250548%_
                                                   _%hd250401250551%_
                                                   _%tl250402250553%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250312250422%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250312250422%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250312250422%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250322250819%_))
                                  (let ((_%e250412250443%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250322250819%_))))
                                    (let ((_%tl250414250448%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250412250443%_)))
                                          (_%hd250413250446%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250412250443%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250414250448%_))
                                          (let ((_%e250415250451%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250414250448%_))))
                                            (let ((_%tl250417250456%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250415250451%_)))
                                                  (_%hd250416250454%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250415250451%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl250417250456%_))
                                                  (_%__kont254783254784%_
                                                   _%hd250416250454%_
                                                   _%hd250413250446%_
                                                   _%hd250321250817%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250312250422%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250312250422%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250312250422%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250359250645%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250322250819%_))
                          (let ((_%e250397250540%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250322250819%_))))
                            (let ((_%tl250399250545%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250397250540%_)))
                                  (_%hd250398250543%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250397250540%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250399250545%_))
                                  (let ((_%e250400250548%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250399250545%_))))
                                    (let ((_%tl250402250553%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250400250548%_)))
                                          (_%hd250401250551%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250400250548%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250402250553%_))
                                          (_%__match254982254983%_
                                           _%e250317250806%_
                                           _%hd250318250809%_
                                           _%tl250319250811%_
                                           _%e250320250814%_
                                           _%hd250321250817%_
                                           _%tl250322250819%_
                                           _%e250323250822%_
                                           _%hd250324250825%_
                                           _%tl250325250827%_
                                           _%e250348250616%_
                                           _%hd250349250619%_
                                           _%tl250350250621%_
                                           _%e250351250624%_
                                           _%hd250352250627%_
                                           _%tl250353250629%_
                                           _%e250354250632%_
                                           _%hd250355250635%_
                                           _%tl250356250637%_
                                           _%e250357250640%_
                                           _%hd250358250643%_
                                           _%tl250359250645%_
                                           _%e250397250540%_
                                           _%hd250398250543%_
                                           _%tl250399250545%_
                                           _%e250400250548%_
                                           _%hd250401250551%_
                                           _%tl250402250553%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g250312250422%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250312250422%_)))))
                          (let () (declare (not safe)) (_%g250312250422%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250322250819%_))
                          (let ((_%e250412250443%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250322250819%_))))
                            (let ((_%tl250414250448%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250412250443%_)))
                                  (_%hd250413250446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250412250443%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250414250448%_))
                                  (let ((_%e250415250451%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250414250448%_))))
                                    (let ((_%tl250417250456%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250415250451%_)))
                                          (_%hd250416250454%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250415250451%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250417250456%_))
                                          (_%__kont254783254784%_
                                           _%hd250416250454%_
                                           _%hd250413250446%_
                                           _%hd250321250817%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g250312250422%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250312250422%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g250312250422%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250322250819%_))
                                                      (let ((_%e250412250443%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250322250819%_))))
                (let ((_%tl250414250448%_
                       (let () (declare (not safe)) (##cdr _%e250412250443%_)))
                      (_%hd250413250446%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250412250443%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250414250448%_))
                      (let ((_%e250415250451%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250414250448%_))))
                        (let ((_%tl250417250456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250415250451%_)))
                              (_%hd250416250454%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250415250451%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250417250456%_))
                              (_%__kont254783254784%_
                               _%hd250416250454%_
                               _%hd250413250446%_
                               _%hd250321250817%_)
                              (let ()
                                (declare (not safe))
                                (_%g250312250422%_)))))
                      (let () (declare (not safe)) (_%g250312250422%_)))))
              (let () (declare (not safe)) (_%g250312250422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250322250819%_))
                                                  (let ((_%e250412250443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250322250819%_))))
                                                    (let ((_%tl250414250448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250412250443%_)))
                                                          (_%hd250413250446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250412250443%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250414250448%_))
                                                          (let ((_%e250415250451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250414250448%_))))
                    (let ((_%tl250417250456%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250415250451%_)))
                          (_%hd250416250454%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250415250451%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250417250456%_))
                          (_%__kont254783254784%_
                           _%hd250416250454%_
                           _%hd250413250446%_
                           _%hd250321250817%_)
                          (let () (declare (not safe)) (_%g250312250422%_)))))
                  (let () (declare (not safe)) (_%g250312250422%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250312250422%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250322250819%_))
                                          (let ((_%e250412250443%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250322250819%_))))
                                            (let ((_%tl250414250448%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250412250443%_)))
                                                  (_%hd250413250446%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250412250443%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250414250448%_))
                                                  (let ((_%e250415250451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250414250448%_))))
                                                    (let ((_%tl250417250456%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250415250451%_)))
                                                          (_%hd250416250454%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250415250451%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250417250456%_))
                                                          (_%__kont254783254784%_
                                                           _%hd250416250454%_
                                                           _%hd250413250446%_
                                                           _%hd250321250817%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250312250422%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250312250422%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250312250422%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250322250819%_))
                                      (let ((_%e250412250443%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250322250819%_))))
                                        (let ((_%tl250414250448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250412250443%_)))
                                              (_%hd250413250446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250412250443%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250414250448%_))
                                              (let ((_%e250415250451%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250414250448%_))))
                                                (let ((_%tl250417250456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250415250451%_)))
                                                      (_%hd250416250454%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250415250451%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250417250456%_))
                                                      (_%__kont254783254784%_
                                                       _%hd250416250454%_
                                                       _%hd250413250446%_
                                                       _%hd250321250817%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250312250422%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250312250422%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250312250422%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250322250819%_))
                                  (let ((_%e250412250443%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250322250819%_))))
                                    (let ((_%tl250414250448%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250412250443%_)))
                                          (_%hd250413250446%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250412250443%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250414250448%_))
                                          (let ((_%e250415250451%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250414250448%_))))
                                            (let ((_%tl250417250456%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250415250451%_)))
                                                  (_%hd250416250454%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250415250451%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl250417250456%_))
                                                  (_%__kont254783254784%_
                                                   _%hd250416250454%_
                                                   _%hd250413250446%_
                                                   _%hd250321250817%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250312250422%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250312250422%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250312250422%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250322250819%_))
                          (let ((_%e250412250443%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250322250819%_))))
                            (let ((_%tl250414250448%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250412250443%_)))
                                  (_%hd250413250446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250412250443%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250414250448%_))
                                  (let ((_%e250415250451%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250414250448%_))))
                                    (let ((_%tl250417250456%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250415250451%_)))
                                          (_%hd250416250454%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250415250451%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250417250456%_))
                                          (_%__kont254783254784%_
                                           _%hd250416250454%_
                                           _%hd250413250446%_
                                           _%hd250321250817%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g250312250422%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250312250422%_)))))
                          (let () (declare (not safe)) (_%g250312250422%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl250322250819%_))
                  (let ((_%e250412250443%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250322250819%_))))
                    (let ((_%tl250414250448%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250412250443%_)))
                          (_%hd250413250446%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250412250443%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250414250448%_))
                          (let ((_%e250415250451%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250414250448%_))))
                            (let ((_%tl250417250456%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250415250451%_)))
                                  (_%hd250416250454%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250415250451%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl250417250456%_))
                                  (_%__kont254783254784%_
                                   _%hd250416250454%_
                                   _%hd250413250446%_
                                   _%hd250321250817%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g250312250422%_)))))
                          (let () (declare (not safe)) (_%g250312250422%_)))))
                  (let () (declare (not safe)) (_%g250312250422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250322250819%_))
                                                      (let ((_%e250412250443%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250322250819%_))))
                (let ((_%tl250414250448%_
                       (let () (declare (not safe)) (##cdr _%e250412250443%_)))
                      (_%hd250413250446%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250412250443%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250414250448%_))
                      (let ((_%e250415250451%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250414250448%_))))
                        (let ((_%tl250417250456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250415250451%_)))
                              (_%hd250416250454%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250415250451%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250417250456%_))
                              (_%__kont254783254784%_
                               _%hd250416250454%_
                               _%hd250413250446%_
                               _%hd250321250817%_)
                              (let ()
                                (declare (not safe))
                                (_%g250312250422%_)))))
                      (let () (declare (not safe)) (_%g250312250422%_)))))
              (let () (declare (not safe)) (_%g250312250422%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250322250819%_))
                                              (let ((_%e250412250443%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250322250819%_))))
                                                (let ((_%tl250414250448%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250412250443%_)))
                                                      (_%hd250413250446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250412250443%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250414250448%_))
                                                      (let ((_%e250415250451%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250414250448%_))))
                (let ((_%tl250417250456%_
                       (let () (declare (not safe)) (##cdr _%e250415250451%_)))
                      (_%hd250416250454%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250415250451%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250417250456%_))
                      (_%__kont254783254784%_
                       _%hd250416250454%_
                       _%hd250413250446%_
                       _%hd250321250817%_)
                      (let () (declare (not safe)) (_%g250312250422%_)))))
              (let () (declare (not safe)) (_%g250312250422%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g250312250422%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250322250819%_))
                                      (let ((_%e250412250443%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250322250819%_))))
                                        (let ((_%tl250414250448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250412250443%_)))
                                              (_%hd250413250446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250412250443%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250414250448%_))
                                              (let ((_%e250415250451%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250414250448%_))))
                                                (let ((_%tl250417250456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250415250451%_)))
                                                      (_%hd250416250454%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250415250451%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250417250456%_))
                                                      (_%__kont254783254784%_
                                                       _%hd250416250454%_
                                                       _%hd250413250446%_
                                                       _%hd250321250817%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250312250422%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250312250422%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250312250422%_))))))
                          (let () (declare (not safe)) (_%g250312250422%_)))))
                  (let () (declare (not safe)) (_%g250312250422%_))))))))))
